#!/usr/bin/env python
# -*- coding:GBK

__author__ = 'sunhaowen'
__date__ = '2014-02-02 22:54'

from basic.DBModule import *

def here():
    print('PrimeMusic')

class ClusterDBModule(MySQLModule):
    """
        封装聚类模块中用到的数据库操作
    """
    def __init__(self):
        """
        """
        MySQLModule.__init__(self)

        self.connection_dict = {}


    def __del__(self):
        """
        """
        for (table_name, conn) in self.connection_dict.items():
            try:
                conn.close()
            except Exception, e:
                continue


    def get_cursor(self, table_name):
        """
        """
        if not self.connection_dict.has_key(table_name):
            conn = self.buid_connection(table_name)
            self.connection_dict[table_name] = conn

        conn = self.connection_dict[table_name]
        cursor = conn.cursor()

        return cursor


    def get_noveldata_all(self, table_name, field_list):
        """
        """
        cursor = self.get_cursor(table_name)

        sql = 'SELECT max(id) AS id FROM {0}'.format(table_name)
        try:
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []
        max_id = cursor.fetchone()[0]

        sql = 'SELECT min(id) AS id FROM {0}'.format(table_name)
        try:
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []
        min_id = cursor.fetchone()[0]

        result = []
        while True:
            if min_id > max_id:
                break

            start_id = min_id
            end_id = min_id + 10000
            if end_id > max_id:
                end_id = max_id

            sql = 'SELECT {0} FROM {1} ' \
                  'WHERE id >= {2} AND id <= {3}'.format(', '.join(field_list), table_name, start_id, end_id)
            try:
                cursor.execute(sql)
            except Exception, e:
                self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
                break
            for row in cursor.fetchall():
                result.append(row)
            min_id = end_id + 1

        cursor.close()
        return result


    def get_dirfmtinfo_id_list(self, site_id, update_time):
        """
        """
        sql = 'SELECT id FROM dir_fmt_info{0} WHERE update_time > {1}'.format(site_id, update_time)
        try:
            cursor = self.get_cursor('dir_fmt_info')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []

        result = []
        for (id, ) in cursor.fetchall():
            result.append(id)
        cursor.close()
        return result


    def get_dirfmtinfo_info(self, site_id, novel_id_list):
        """
        """
        sql = 'SELECT site_id, site, site_status, ' \
              'dir_id, dir_url, gid, book_name, pen_name, chapter_count, last_chapter_title, update_time ' \
              'FROM dir_fmt_info{0} ' \
              'WHERE id IN ({1})'.format(site_id, ', '.join("'%d'" % novel_id for novel_id in novel_id_list))
        try:
            cursor = self.get_cursor('dir_fmt_info')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []

        result = []
        for row in cursor.fetchall():
            result.append(row)
        cursor.close()
        return result


    def get_chapteroriinfo_list(self, site_id, dir_id_list):
        """
        """
        sql = 'SELECT dir_id, chapter_id, chapter_sort, chapter_url, chapter_title ' \
              'FROM chapter_ori_info{0} ' \
              'WHERE dir_id IN ({1}) AND chapter_sort <= 60'.format(site_id, ', '.join("'%d'" % dir_id for dir_id in dir_id_list))
        try:
            cursor = self.get_cursor('chapter_ori_info{0}'.format(site_id % 2))
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []

        result = []
        for row in cursor.fetchall():
            result.append(row)
        cursor.close()
        return result


    def get_novelclusterdirinfo_diridlist(self, dir_id_list):
        """
        """
        sql = 'SELECT dir_id, gid, chapter_count, last_chapter_title ' \
              'FROM novel_cluster_dir_info_offline ' \
              'WHERE dir_id IN ({0})'.format(', '.join("'%d'" % dir_id for dir_id in dir_id_list))
        try:
            cursor = self.get_cursor('novel_cluster_dir_info_offline')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []

        result = []
        for row in cursor.fetchall():
            result.append(row)
        cursor.close()
        return result


    def get_novelclusterdirinfo_gidlist(self, gid_list):
        """
        """
        sql = 'SELECT gid, rid ' \
              'FROM novel_cluster_dir_info_offline ' \
              'WHERE gid IN ({0})'.format(', '.join("'%d'" % gid for gid in gid_list))
        try:
            cursor = self.get_cursor('novel_cluster_dir_info_offline')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []

        result = []
        for row in cursor.fetchall():
            result.append(row)
        cursor.close()
        return result


    def get_novelclusterdirinfo_gid(self, gid):
        """
        """
        sql = 'SELECT site_id, site_status, dir_id, dir_url, gid, book_name, pen_name ' \
              'FROM novel_cluster_dir_info_offline ' \
              'WHERE gid = {0}'.format(gid)
        try:
            cursor = self.get_cursor('novel_cluster_dir_info_offline')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []

        result = []
        for row in cursor.fetchall():
            result.append(row)
        cursor.close()
        return result


    def get_novelclusterdirinfo_name(self, key, value):
        """
        """
        sql = "SELECT gid FROM novel_cluster_dir_info_offline WHERE {0} = '{1}'".format(key, value)
        try:
            cursor = self.get_cursor('novel_cluster_dir_info_offline')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []

        result = []
        for row in cursor.fetchall():
            result.append(row)
        cursor.close()
        return result


    def update_novelclusterdirinfo(self, update_tuple_list):
        """
        """
        cursor = self.get_cursor('novel_cluster_dir_info_offline')
        sql_prefix = "UPDATE novel_cluster_dir_info_offline " \
                     "SET gid = '%d', rid = '%d', book_name = '%s', pen_name = '%s', " \
                     "chapter_count = '%d', last_chapter_title = '%s' " \
                     "WHERE dir_id = '%d'"
        for update_tuple in update_tuple_list:
            sql = sql_prefix % update_tuple
            try:
                cursor.execute(sql)
            except Exception, e:
                self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
                continue

        cursor.close()
        return True


    def update_novelclusterdirinfo_gid(self, gid, rid):
        """
        """
        sql = 'UPDATE novel_cluster_dir_info_offline ' \
              'SET rid = {0} ' \
              'WHERE gid = {1}'.format(rid, gid)
        try:
            cursor = self.get_cursor('novel_cluster_dir_info_offline')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return False

        cursor.close()
        return True


    def insert_novelclusterdirinfo(self, insert_tuple_list):
        """
        """
        sql = 'INSERT IGNORE INTO novel_cluster_dir_info_offline ' \
              '(site_id, site, site_status, ' \
              'dir_id, dir_url, ' \
              'gid, rid, book_name, pen_name, ' \
              'chapter_count, chapter_word_sum, last_chapter_title) ' \
              'VALUES {0}'.format(', '.join('(%s)' % ', '.join("'%s'" % str(field) for field in tuple) for tuple in insert_tuple_list))
        try:
            cursor = self.get_cursor('novel_cluster_dir_info_offline')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return False

        cursor.close()
        return True


    def get_novelclusterchapterinfo_gid(self, gid):
        """
        """
        sql = 'SELECT dir_id, chapter_id, chapter_title ' \
              'FROM novel_cluster_chapter_info{0} ' \
              'WHERE gid = {1}'.format(gid % 256, gid)
        try:
            cursor = self.get_cursor('novel_cluster_chapter_info')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []

        result = []
        for row in cursor.fetchall():
            result.append(row)
        cursor.close()
        return result


    def get_novelclusterchapterinfo_diridlist(self, table_id, dir_id_list):
        """
        """
        sql = 'SELECT dir_id, chapter_sort, gid, chapter_title ' \
              'FROM novel_cluster_chapter_info{0} ' \
              'WHERE dir_id IN ({1})'.format(table_id, ', '.join("'%d'" % dir_id for dir_id in dir_id_list))
        try:
            cursor = self.get_cursor('novel_cluster_chapter_info')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []

        result = []
        for row in cursor.fetchall():
            result.append(row)
        cursor.close()
        return result


    def insert_novelclusterchapterinfo(self, table_id, insert_tuple_list):
        """
        """
        sql = 'INSERT IGNORE INTO novel_cluster_chapter_info{0} ' \
              '(gid, site_id, dir_id, chapter_sort, chapter_id, ' \
              'chapter_url, chapter_title, raw_chapter_title, ' \
              'chapter_status, word_sum) ' \
              'VALUES {1}'.format(table_id, ', '.join('(%s)' % ', '.join("'%s'" % str(field) for field in tuple) for tuple in insert_tuple_list))
        try:
            cursor = self.get_cursor('novel_cluster_chapter_info')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return False

        cursor.close()
        return True


    def update_novelclusterchapterinfo(self, table_id, update_tuple_list):
        """
        """
        cursor = self.get_cursor('novel_cluster_chapter_info')
        sql_prefix = "UPDATE novel_cluster_chapter_info{0} " \
                     "SET gid = '%d', chapter_title = '%s', raw_chapter_title = '%s' " \
                     "WHERE dir_id = '%d' AND chapter_sort = '%d'".format(table_id)

        for update_tuple in update_tuple_list:
            sql = sql_prefix % update_tuple
            try:
                cursor.execute(sql)
            except Exception, e:
                self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
                continue

        cursor.close()
        return True


    def delete_novelclusterchapterinfo(self, table_id, delete_tuple_list):
        """
        """
        cursor = self.get_cursor('novel_cluster_chapter_info')
        sql_prefix = "DELETE FROM novel_cluster_chapter_info{0} " \
                     "WHERE dir_id = '%d' AND chapter_sort = '%d'".format(table_id)

        for delete_tuple in delete_tuple_list:
            sql = sql_prefix % delete_tuple
            try:
                cursor.execute(sql)
            except Exception, e:
                self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
                continue

        cursor.close()
        return True


    def get_novelclusteredgeinfo_gid(self, gid):
        """
        """
        result = []
        sql = 'SELECT gid_x, gid_y, similarity ' \
              'FROM novel_cluster_edge_info_offline ' \
              'WHERE gid_x = {0}'.format(gid)
        try:
            cursor = self.get_cursor('novel_cluster_edge_info_offline')
            cursor.execute(sql)
            for row in cursor.fetchall():
                result.append(row)
            cursor.close()
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))

        sql = 'SELECT gid_x, gid_y, similarity ' \
              'FROM novel_cluster_edge_info_offline ' \
              'WHERE gid_y = {0}'.format(gid)
        try:
            cursor = self.get_cursor('novel_cluster_edge_info_offline')
            cursor.execute(sql)
            for row in cursor.fetchall():
                result.append(row)
            cursor.close()
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
        return result


    def delete_novelclusteredgeinfo(self, gid):
        """
        """
        sql = 'DELETE FROM novel_cluster_edge_info_offline ' \
              'WHERE gid_x = {0}'.format(gid)
        try:
            cursor = self.get_cursor('novel_cluster_edge_info_offline')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return False

        cursor.close()
        return True


    def insert_novelclusteredgeinfo(self, insert_tuple_list):
        """
        """
        sql = 'INSERT IGNORE INTO novel_cluster_edge_info_offline ' \
              '(gid_x, gid_y, similarity) ' \
              'VALUES {0}'.format(', '.join('(%s)' % ', '.join("'%s'" % str(field) for field in tuple) for tuple in insert_tuple_list))
        try:
            cursor = self.get_cursor('novel_cluster_edge_info_offline')
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return False

        cursor.close()
        return True


    def get_novelaggregationdir_rid(self, table_id):
        """
        """
        cursor = self.get_cursor('novel_aggregation_dir')
        sql = 'SELECT distinct(rid) FROM dir_agg_chapter_info{0}'.format(table_id)
        try:
            cursor.execute(sql)
        except Exception, e:
            self.err.warning('[sql: {0}, error: {1}]'.format(sql, e))
            return []

        result = []
        for (rid, ) in cursor.fetchall():
            result.append(rid)
        cursor.close()
        return result


if __name__ == '__main__':
    here()    







