use my_db;
-- 接口信息
create table if not exists my_db.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '接口名称',
    `description` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    `requestParams` text not null comment '请求参数',
    `requestHeader` text null comment '请求头',
    `responseHeader` text null comment '响应头',
    `status` int default 0 not null comment '接口状态(0-关闭 1-开启)',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人id',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
    ) comment '接口信息';

insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('蒋晋鹏', '刘明杰', 'www.bruno-zulauf.co', '洪聪健', '杨致远', 0, '林智渊', 440);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('叶鹏飞', '夏鑫磊', 'www.princess-nader.io', '韩博涛', '邹志泽', 0, '傅展鹏', 9657844);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('韦志泽', '戴修洁', 'www.lazaro-mckenzie.com', '白文博', '曾瑞霖', 0, '余峻熙', 99628);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('郑绍齐', '江峻熙', 'www.nora-goodwin.org', '方绍辉', '何鑫鹏', 0, '邵泽洋', 7858100786);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('郑鹭洋', '廖语堂', 'www.rosita-ledner.biz', '洪绍辉', '唐嘉熙', 0, '周昊焱', 9709);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('于炎彬', '顾煜祺', 'www.graham-hane.com', '丁哲瀚', '蔡鸿煊', 0, '薛伟宸', 32);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('苏致远', '曾楷瑞', 'www.adan-walsh.net', '余鸿煊', '尹明哲', 0, '洪子默', 77);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('石绍齐', '覃文', 'www.donny-breitenberg.io', '张乐驹', '苏雪松', 0, '龙明轩', 6);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('钟金鑫', '洪峻熙', 'www.dudley-fadel.info', '梁涛', '陆思', 0, '汪语堂', 680120011);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('秦鹭洋', '谭昊强', 'www.rowena-cummings.info', '白鹭洋', '彭远航', 0, '徐聪健', 805);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('吕皓轩', '郝昊强', 'www.isabel-wisozk.co', '韦正豪', '薛旭尧', 0, '曾振家', 9);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('吕晋鹏', '董笑愚', 'www.neal-beier.io', '顾智渊', '吴哲瀚', 0, '毛俊驰', 865188);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('廖远航', '严炎彬', 'www.dusti-parker.org', '张子骞', '高黎昕', 0, '金伟宸', 5255);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('龙子默', '江炎彬', 'www.sixta-rutherford.io', '余文', '曹子轩', 0, '唐志泽', 4138956);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('陈鹏飞', '顾志泽', 'www.jeramy-kihn.biz', '胡懿轩', '孟越彬', 0, '萧鑫磊', 764007086);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('沈笑愚', '冯驰', 'www.myung-wunsch.org', '曹志强', '孟擎苍', 0, '冯思聪', 8);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('苏擎苍', '余思聪', 'www.edmund-kutch.co', '顾思远', '龚鑫磊', 0, '秦振家', 491016);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('范越彬', '张煜祺', 'www.jody-bayer.net', '叶明哲', '周晓啸', 0, '贾浩然', 7688907745);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('毛煜祺', '武明杰', 'www.elliott-ward.com', '汪健柏', '高鸿煊', 0, '朱耀杰', 7879408581);
insert into my_db.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('吴煜祺', '傅修杰', 'www.stanley-nicolas.info', '秦晓啸', '曹乐驹', 0, '毛文昊', 237934579);










-- 用户调用接口关系表
create table if not exists my_db.`user_interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `userId` bigint not null comment '调用用户 id',
    `interfaceInfoId` bigint not null comment '接口 id',
    `totalNum` int default 0 not null comment '总调用次数',
    `leftNum` int default 0 not null comment '剩余调用次数',
    `status` int default 0 not null comment '0-正常，1-禁用',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
) comment '用户调用接口关系';










