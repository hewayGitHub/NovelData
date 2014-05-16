#!/usr/bin/env python
# -*- coding:GBK

__author__ = 'sunhaowen'
__date__ = '2014-03-27 22:27'

import logging
from basic.SilkServerModule import *
from public.BasicStringMethod import *
from novel.chapter.ChapterDB import *

def here():
    print('PrimeMusic')

class ChapterAvaliableModule(object):
    """
    """
    def __init__(self):
        """
        """
        self.logger = logging.getLogger('novel.chapter.avaliable')
        self.err = logging.getLogger('err.chapter.avaliable')

        self.total_chapter_number = 0
        self.total_avaliable_chapter_number = 0

        parser = SafeConfigParser()
        parser.read('./conf/NovelChapterModule.conf')
        self.start_rid_id = parser.getint('chapter_module', 'proc_start_rid_id')
        self.end_rid_id = parser.getint('chapter_module', 'proc_end_rid_id')


    def optimize_chapter_check(self, rid, align_id):
        """
        """
        silk_server = SilkServer()

        chapter_page = silk_server.get(src = 'http://test.com', pageid = '{0}|{1}'.format(rid, align_id))
        if not chapter_page:
            return False
        if not chapter_page.has_key('blocks'):
            return False

        raw_chapter_content = ''
        for block in chapter_page['blocks']:
            if block.has_key('type') and block['type'] == 'NOVELCONTENT':
                raw_chapter_content = block['data_value']
        raw_chapter_content = html_filter(raw_chapter_content)
        if len(raw_chapter_content) < 50:
            return False

        return chapter_page


    def update_chapter_info(self, rid, align_id):
        """
        """
        chapter_db = ChapterDBModule()
        chapter_db.update_novelaggregationdir_init(rid, align_id)


    def update_chapter_content(self, rid, align_id, chapter_page):
        """
        """
        silk_server = SilkServer()
        silk_server.save('{0}|{1}'.format(rid, align_id), chapter_page)


    def aggregation_dir_check(self, rid, flag = False):
        """
        """
        chapter_db = ChapterDBModule()
        aggregation_dir_list = chapter_db.get_novelaggregationdir_all(rid)

        avaliable_chapter_num = 0
        for (chapter_index, align_id, chapter_id, chapter_url, chapter_title, optimize_chapter_wordsum) in aggregation_dir_list:
            if flag is True:
                self.logger.info('chapter_index: {0}, chapter_title: {1}'.format(chapter_index, chapter_title))

            if optimize_chapter_wordsum == 0:
                continue
            if flag is False:
                avaliable_chapter_num += 1
                continue

            chapter_page = self.optimize_chapter_check(rid, align_id)
            if chapter_page is False:
                self.err.warning('rid: {0}, align_id: {1}, chapter_index: {2}, chapter_title: {3}'.format(
                    rid, align_id, chapter_index, chapter_title))
                self.update_chapter_info(rid, align_id)
                continue
            avaliable_chapter_num += 1

        self.total_avaliable_chapter_number += avaliable_chapter_num
        self.total_chapter_number += len(aggregation_dir_list)
        self.logger.info('rid: {0}, unavaliable: {1}, total: {2}'.format(rid, len(aggregation_dir_list) - avaliable_chapter_num, len(aggregation_dir_list)))


    def candidate_rid_collection(self):
        """
        """
        chapter_db = ChapterDBModule()

        rid_list = []
        for table_id in xrange(0, 256):
            if table_id > self.end_rid_id or table_id < self.start_rid_id:
                continue
            result = chapter_db.get_novelaggregationdir_rid(table_id)
            rid_list.extend(result)
        return rid_list


    def run(self):
        """
        """
        rid_list = self.candidate_rid_collection()

        for index, rid in enumerate(rid_list):
            self.logger.info('index: {0}, rid: {1}'.format(index, rid))
            self.aggregation_dir_check(rid)

        self.logger.info('avaliable: {0}, total: {1}'.format(self.total_avaliable_chapter_number, self.total_chapter_number))
        self.logger.info('avaliable module end!')


if __name__ == '__main__':
    here()    







