drop table if exists novel_cluster_chapter_info;
create table `novel_cluster_chapter_info` (
    `id` bigint(20) unsigned not null auto_increment,
    `gid` bigint(20) unsigned not null,
    `dir_id` bigint(20) unsigned not null,
    `chapter_id` bigint(20) unsigned not null,
    `chapter_url` varchar(512) not null,
    `chapter_title` varchar(128) not null,
    `raw_chapter_title` varchar(128) not null,
    `chapter_sort` int(10) not null,
    `chapter_status` tinyint(3) not null,
    `word_sum` int(10) not null,
    `update_time` timestamp not null default current_timestamp on update current_timestamp,
    primary key (`id`),
    unique key `dir_id` (`dir_id`, `chapter_sort`),
    key `gid` (`gid`),
    key `chapter_id` (`chapter_id`)
) engine=InnoDB default charset=gbk;
drop table if exists novel_cluster_chapter_info0;
create table novel_cluster_chapter_info0 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info1;
create table novel_cluster_chapter_info1 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info2;
create table novel_cluster_chapter_info2 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info3;
create table novel_cluster_chapter_info3 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info4;
create table novel_cluster_chapter_info4 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info5;
create table novel_cluster_chapter_info5 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info6;
create table novel_cluster_chapter_info6 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info7;
create table novel_cluster_chapter_info7 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info8;
create table novel_cluster_chapter_info8 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info9;
create table novel_cluster_chapter_info9 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info10;
create table novel_cluster_chapter_info10 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info11;
create table novel_cluster_chapter_info11 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info12;
create table novel_cluster_chapter_info12 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info13;
create table novel_cluster_chapter_info13 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info14;
create table novel_cluster_chapter_info14 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info15;
create table novel_cluster_chapter_info15 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info16;
create table novel_cluster_chapter_info16 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info17;
create table novel_cluster_chapter_info17 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info18;
create table novel_cluster_chapter_info18 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info19;
create table novel_cluster_chapter_info19 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info20;
create table novel_cluster_chapter_info20 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info21;
create table novel_cluster_chapter_info21 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info22;
create table novel_cluster_chapter_info22 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info23;
create table novel_cluster_chapter_info23 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info24;
create table novel_cluster_chapter_info24 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info25;
create table novel_cluster_chapter_info25 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info26;
create table novel_cluster_chapter_info26 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info27;
create table novel_cluster_chapter_info27 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info28;
create table novel_cluster_chapter_info28 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info29;
create table novel_cluster_chapter_info29 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info30;
create table novel_cluster_chapter_info30 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info31;
create table novel_cluster_chapter_info31 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info32;
create table novel_cluster_chapter_info32 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info33;
create table novel_cluster_chapter_info33 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info34;
create table novel_cluster_chapter_info34 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info35;
create table novel_cluster_chapter_info35 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info36;
create table novel_cluster_chapter_info36 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info37;
create table novel_cluster_chapter_info37 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info38;
create table novel_cluster_chapter_info38 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info39;
create table novel_cluster_chapter_info39 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info40;
create table novel_cluster_chapter_info40 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info41;
create table novel_cluster_chapter_info41 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info42;
create table novel_cluster_chapter_info42 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info43;
create table novel_cluster_chapter_info43 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info44;
create table novel_cluster_chapter_info44 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info45;
create table novel_cluster_chapter_info45 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info46;
create table novel_cluster_chapter_info46 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info47;
create table novel_cluster_chapter_info47 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info48;
create table novel_cluster_chapter_info48 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info49;
create table novel_cluster_chapter_info49 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info50;
create table novel_cluster_chapter_info50 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info51;
create table novel_cluster_chapter_info51 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info52;
create table novel_cluster_chapter_info52 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info53;
create table novel_cluster_chapter_info53 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info54;
create table novel_cluster_chapter_info54 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info55;
create table novel_cluster_chapter_info55 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info56;
create table novel_cluster_chapter_info56 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info57;
create table novel_cluster_chapter_info57 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info58;
create table novel_cluster_chapter_info58 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info59;
create table novel_cluster_chapter_info59 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info60;
create table novel_cluster_chapter_info60 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info61;
create table novel_cluster_chapter_info61 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info62;
create table novel_cluster_chapter_info62 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info63;
create table novel_cluster_chapter_info63 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info64;
create table novel_cluster_chapter_info64 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info65;
create table novel_cluster_chapter_info65 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info66;
create table novel_cluster_chapter_info66 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info67;
create table novel_cluster_chapter_info67 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info68;
create table novel_cluster_chapter_info68 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info69;
create table novel_cluster_chapter_info69 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info70;
create table novel_cluster_chapter_info70 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info71;
create table novel_cluster_chapter_info71 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info72;
create table novel_cluster_chapter_info72 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info73;
create table novel_cluster_chapter_info73 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info74;
create table novel_cluster_chapter_info74 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info75;
create table novel_cluster_chapter_info75 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info76;
create table novel_cluster_chapter_info76 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info77;
create table novel_cluster_chapter_info77 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info78;
create table novel_cluster_chapter_info78 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info79;
create table novel_cluster_chapter_info79 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info80;
create table novel_cluster_chapter_info80 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info81;
create table novel_cluster_chapter_info81 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info82;
create table novel_cluster_chapter_info82 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info83;
create table novel_cluster_chapter_info83 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info84;
create table novel_cluster_chapter_info84 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info85;
create table novel_cluster_chapter_info85 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info86;
create table novel_cluster_chapter_info86 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info87;
create table novel_cluster_chapter_info87 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info88;
create table novel_cluster_chapter_info88 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info89;
create table novel_cluster_chapter_info89 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info90;
create table novel_cluster_chapter_info90 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info91;
create table novel_cluster_chapter_info91 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info92;
create table novel_cluster_chapter_info92 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info93;
create table novel_cluster_chapter_info93 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info94;
create table novel_cluster_chapter_info94 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info95;
create table novel_cluster_chapter_info95 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info96;
create table novel_cluster_chapter_info96 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info97;
create table novel_cluster_chapter_info97 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info98;
create table novel_cluster_chapter_info98 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info99;
create table novel_cluster_chapter_info99 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info100;
create table novel_cluster_chapter_info100 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info101;
create table novel_cluster_chapter_info101 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info102;
create table novel_cluster_chapter_info102 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info103;
create table novel_cluster_chapter_info103 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info104;
create table novel_cluster_chapter_info104 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info105;
create table novel_cluster_chapter_info105 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info106;
create table novel_cluster_chapter_info106 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info107;
create table novel_cluster_chapter_info107 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info108;
create table novel_cluster_chapter_info108 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info109;
create table novel_cluster_chapter_info109 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info110;
create table novel_cluster_chapter_info110 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info111;
create table novel_cluster_chapter_info111 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info112;
create table novel_cluster_chapter_info112 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info113;
create table novel_cluster_chapter_info113 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info114;
create table novel_cluster_chapter_info114 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info115;
create table novel_cluster_chapter_info115 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info116;
create table novel_cluster_chapter_info116 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info117;
create table novel_cluster_chapter_info117 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info118;
create table novel_cluster_chapter_info118 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info119;
create table novel_cluster_chapter_info119 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info120;
create table novel_cluster_chapter_info120 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info121;
create table novel_cluster_chapter_info121 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info122;
create table novel_cluster_chapter_info122 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info123;
create table novel_cluster_chapter_info123 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info124;
create table novel_cluster_chapter_info124 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info125;
create table novel_cluster_chapter_info125 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info126;
create table novel_cluster_chapter_info126 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info127;
create table novel_cluster_chapter_info127 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info128;
create table novel_cluster_chapter_info128 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info129;
create table novel_cluster_chapter_info129 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info130;
create table novel_cluster_chapter_info130 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info131;
create table novel_cluster_chapter_info131 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info132;
create table novel_cluster_chapter_info132 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info133;
create table novel_cluster_chapter_info133 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info134;
create table novel_cluster_chapter_info134 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info135;
create table novel_cluster_chapter_info135 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info136;
create table novel_cluster_chapter_info136 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info137;
create table novel_cluster_chapter_info137 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info138;
create table novel_cluster_chapter_info138 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info139;
create table novel_cluster_chapter_info139 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info140;
create table novel_cluster_chapter_info140 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info141;
create table novel_cluster_chapter_info141 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info142;
create table novel_cluster_chapter_info142 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info143;
create table novel_cluster_chapter_info143 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info144;
create table novel_cluster_chapter_info144 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info145;
create table novel_cluster_chapter_info145 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info146;
create table novel_cluster_chapter_info146 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info147;
create table novel_cluster_chapter_info147 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info148;
create table novel_cluster_chapter_info148 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info149;
create table novel_cluster_chapter_info149 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info150;
create table novel_cluster_chapter_info150 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info151;
create table novel_cluster_chapter_info151 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info152;
create table novel_cluster_chapter_info152 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info153;
create table novel_cluster_chapter_info153 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info154;
create table novel_cluster_chapter_info154 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info155;
create table novel_cluster_chapter_info155 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info156;
create table novel_cluster_chapter_info156 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info157;
create table novel_cluster_chapter_info157 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info158;
create table novel_cluster_chapter_info158 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info159;
create table novel_cluster_chapter_info159 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info160;
create table novel_cluster_chapter_info160 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info161;
create table novel_cluster_chapter_info161 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info162;
create table novel_cluster_chapter_info162 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info163;
create table novel_cluster_chapter_info163 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info164;
create table novel_cluster_chapter_info164 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info165;
create table novel_cluster_chapter_info165 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info166;
create table novel_cluster_chapter_info166 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info167;
create table novel_cluster_chapter_info167 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info168;
create table novel_cluster_chapter_info168 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info169;
create table novel_cluster_chapter_info169 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info170;
create table novel_cluster_chapter_info170 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info171;
create table novel_cluster_chapter_info171 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info172;
create table novel_cluster_chapter_info172 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info173;
create table novel_cluster_chapter_info173 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info174;
create table novel_cluster_chapter_info174 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info175;
create table novel_cluster_chapter_info175 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info176;
create table novel_cluster_chapter_info176 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info177;
create table novel_cluster_chapter_info177 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info178;
create table novel_cluster_chapter_info178 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info179;
create table novel_cluster_chapter_info179 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info180;
create table novel_cluster_chapter_info180 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info181;
create table novel_cluster_chapter_info181 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info182;
create table novel_cluster_chapter_info182 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info183;
create table novel_cluster_chapter_info183 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info184;
create table novel_cluster_chapter_info184 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info185;
create table novel_cluster_chapter_info185 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info186;
create table novel_cluster_chapter_info186 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info187;
create table novel_cluster_chapter_info187 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info188;
create table novel_cluster_chapter_info188 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info189;
create table novel_cluster_chapter_info189 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info190;
create table novel_cluster_chapter_info190 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info191;
create table novel_cluster_chapter_info191 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info192;
create table novel_cluster_chapter_info192 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info193;
create table novel_cluster_chapter_info193 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info194;
create table novel_cluster_chapter_info194 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info195;
create table novel_cluster_chapter_info195 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info196;
create table novel_cluster_chapter_info196 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info197;
create table novel_cluster_chapter_info197 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info198;
create table novel_cluster_chapter_info198 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info199;
create table novel_cluster_chapter_info199 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info200;
create table novel_cluster_chapter_info200 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info201;
create table novel_cluster_chapter_info201 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info202;
create table novel_cluster_chapter_info202 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info203;
create table novel_cluster_chapter_info203 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info204;
create table novel_cluster_chapter_info204 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info205;
create table novel_cluster_chapter_info205 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info206;
create table novel_cluster_chapter_info206 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info207;
create table novel_cluster_chapter_info207 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info208;
create table novel_cluster_chapter_info208 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info209;
create table novel_cluster_chapter_info209 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info210;
create table novel_cluster_chapter_info210 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info211;
create table novel_cluster_chapter_info211 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info212;
create table novel_cluster_chapter_info212 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info213;
create table novel_cluster_chapter_info213 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info214;
create table novel_cluster_chapter_info214 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info215;
create table novel_cluster_chapter_info215 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info216;
create table novel_cluster_chapter_info216 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info217;
create table novel_cluster_chapter_info217 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info218;
create table novel_cluster_chapter_info218 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info219;
create table novel_cluster_chapter_info219 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info220;
create table novel_cluster_chapter_info220 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info221;
create table novel_cluster_chapter_info221 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info222;
create table novel_cluster_chapter_info222 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info223;
create table novel_cluster_chapter_info223 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info224;
create table novel_cluster_chapter_info224 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info225;
create table novel_cluster_chapter_info225 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info226;
create table novel_cluster_chapter_info226 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info227;
create table novel_cluster_chapter_info227 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info228;
create table novel_cluster_chapter_info228 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info229;
create table novel_cluster_chapter_info229 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info230;
create table novel_cluster_chapter_info230 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info231;
create table novel_cluster_chapter_info231 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info232;
create table novel_cluster_chapter_info232 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info233;
create table novel_cluster_chapter_info233 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info234;
create table novel_cluster_chapter_info234 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info235;
create table novel_cluster_chapter_info235 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info236;
create table novel_cluster_chapter_info236 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info237;
create table novel_cluster_chapter_info237 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info238;
create table novel_cluster_chapter_info238 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info239;
create table novel_cluster_chapter_info239 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info240;
create table novel_cluster_chapter_info240 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info241;
create table novel_cluster_chapter_info241 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info242;
create table novel_cluster_chapter_info242 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info243;
create table novel_cluster_chapter_info243 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info244;
create table novel_cluster_chapter_info244 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info245;
create table novel_cluster_chapter_info245 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info246;
create table novel_cluster_chapter_info246 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info247;
create table novel_cluster_chapter_info247 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info248;
create table novel_cluster_chapter_info248 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info249;
create table novel_cluster_chapter_info249 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info250;
create table novel_cluster_chapter_info250 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info251;
create table novel_cluster_chapter_info251 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info252;
create table novel_cluster_chapter_info252 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info253;
create table novel_cluster_chapter_info253 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info254;
create table novel_cluster_chapter_info254 like novel_cluster_chapter_info;
drop table if exists novel_cluster_chapter_info255;
create table novel_cluster_chapter_info255 like novel_cluster_chapter_info;
