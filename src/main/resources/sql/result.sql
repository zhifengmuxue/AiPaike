CREATE TABLE class_result (
id BIGINT AUTO_INCREMENT PRIMARY KEY comment '课程编号',
teacher varchar(20) not null comment '任课教师',
classroom_id varchar(20) not null comment '教室编号',
week int not null comment '星期',
start_time int not null comment '开始时间',
end_time int not null comment '结束时间',
start_week varchar(20) not null comment '开始周次',
end_week varchar(20) not null comment '结束周次',
belong varchar(20) not null comment '所属班级'
);