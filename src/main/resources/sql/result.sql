CREATE TABLE class_result (
id varchar(50) PRIMARY KEY comment '课程编号',
teacher varchar(20) not null comment '任课教师',
classroom_id varchar(20) not null comment '教室编号',
week int not null comment '星期',
start_time int not null comment '开始时间',
end_time int not null comment '结束时间',
start_week varchar(20) not null comment '开始周次',
end_week varchar(20) not null comment '结束周次',
belong varchar(20) not null comment '所属班级'
);

insert into class_result value
    ('570102KBOBO3', '曹立文', 'JXL409',3,5,6,'[10]','[18]','23学前教育5班'),
    ('10000GXA03', '网瘾','JYYSZX303',32,3,4,'[9]','[12]','22早期教育1班')
