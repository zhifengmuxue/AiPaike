-- 创建教室表
CREATE TABLE classroom (
room_Id VARCHAR(50) ,
campus VARCHAR(20),
room_type VARCHAR(30),
max_capacity INT,
floor INT,
room_name VARCHAR(50) ,
building VARCHAR(50)
);

CREATE TABLE course (
 course_id VARCHAR(50) ,
 course_name VARCHAR(50) ,
 course_type VARCHAR(20),
 room_type VARCHAR(30) ,
 department VARCHAR(30)
);

CREATE TABLE schedule (
   course_id VARCHAR(50) ,
   teacher_id VARCHAR(20) ,
   teacher_name VARCHAR(20) ,
   campus VARCHAR(20) ,
   classes VARCHAR(50) ,
   student_count INT,
   week_begin INT,
   week_end INT ,
   week_times INT,
   consecutive_sections INT
);


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX201','铁门关校区', '多媒体教室', '50','2' ,'HXGC2#201-化工分析实验室（一）', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX202','铁门关校区', '多媒体教室', '50','2' ,'HXGC2#202', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX203','铁门关校区', '多媒体教室', '50','2' ,'HXGC2#203-化学分析实验室（二）', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX204','铁门关校区', '多媒体教室', '50','2' ,'HXGC2#204', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX205','铁门关校区', '多媒体教室', '50','2' ,'HXGC2#205', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX207','铁门关校区', '多媒体教室', '50','2' ,'HXGC2#207', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX209','铁门关校区', '多媒体教室', '50','2' ,'HXGC2#209', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX211','铁门关校区', '多媒体教室', '50','2' ,'HXGC2#211', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX105','铁门关校区', '实训车间', '50','1' ,'JDGC1#105-智能焊接加工', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX106','铁门关校区', '机房', '50','1' ,'JDGC1#106-数控仿真机房', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XXJSZX304','铁门关校区', '机房', '50','3' ,'XXJS3#304电子商务机房', '信息技术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XXJSZX303','铁门关校区', '机房', '50','3' ,'XXJS3#303机房', '信息技术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XXJSZX301','铁门关校区', '多媒体教室', '50','3' ,'XXJS3#301多媒体教室', '信息技术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XXJSZX302','铁门关校区', '多媒体教室', '50','3' ,'XXJS3#302录播教室', '信息技术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX104','铁门关校区', '多媒体教室', '50','1' ,'JDGC1#104', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-406','库尔勒校区', '多媒体教室', '50','4' ,'4#406', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-302','库尔勒校区', '普通教室', '50','3' ,'3#302', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX302','铁门关校区', '机房', '50','3' ,'XDNY3#302-公共机房', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX201','铁门关校区', '多媒体教室', '35','2' ,'XDNY2#201', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('CJ1-hangongfang2','库尔勒校区', '实训车间', '80','1' ,'CJ1-焊工房2', '车间');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('CJ1-hangongfang1','库尔勒校区', '实训车间', '80','1' ,'CJ1-焊工房1', '车间');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-511','库尔勒校区', '普通教室', '50','5' ,'5-511', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX207','铁门关校区', '多媒体教室', '50','2' ,'JDGC2#207', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX3-301','铁门关校区', '汽修实训室', '50','3' ,'QCGCZX3-301-新能源电机实训室', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('CJ1-qiangongfang','库尔勒校区', '实训车间', '80','1' ,'CJ1-钳工房', '车间');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL519','铁门关校区', '多媒体教室', '50','5' ,'JXL5#519', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL420','铁门关校区', '多媒体教室', '50','4' ,'JXL4#420', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX306','铁门关校区', '多媒体教室', '35','3' ,'XDNY3#306', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL3-305','库尔勒校区', '普通教室', '80','3' ,'3#305', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX209','铁门关校区', '多媒体教室', '35','2' ,'XDNY2#209', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-309','库尔勒校区', '多媒体教室', '50','3' ,'3#309', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL4#402-蒙台梭立实训室','库尔勒校区', '蒙台梭立实训室', '80','4' ,'4#402-蒙台梭立实训室', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL201','铁门关校区', '多媒体教室', '50','2' ,'JXL2#201', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX307','铁门关校区', '多媒体教室', '50','3' ,'HXGC3#307', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX2-205','铁门关校区', '汽修实训室', '80','2' ,'QCGCZX2-205-汽车钣金综合实训室', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX305','铁门关校区', '多媒体教室', '50','3' ,'JDGC3#305', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL404','铁门关校区', '多媒体教室', '50','4' ,'JXL4#404', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX203','铁门关校区', '虚拟仿真实训室', '80','2' ,'JYYS2#203-幼儿园虚拟仿真实训室', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL413','铁门关校区', '琴房', '50','4' ,'JXL4#413-古筝实训室', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX306','铁门关校区', '多媒体教室', '50','3' ,'HXGC3#306', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX312','铁门关校区', '电工实训室', '50','3' ,'JDGC3#312-PLC实训室', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX311','铁门关校区', '电工实训室', '50','3' ,'JDGC3#311-电气控制实训室（二）', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5#511','库尔勒校区', '多媒体教室', '80','5' ,'5#511', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL3#309-3号琴房（电钢）','库尔勒校区', '琴房', '80','3' ,'3#309-3号琴房（电钢）', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX101','铁门关校区', '多媒体教室', '35','1' ,'XDNY1#101', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL205','铁门关校区', '多媒体教室', '50','2' ,'JXL2#205', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX206','铁门关校区', '多媒体教室', '35','2' ,'XDNY2#206', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL210','铁门关校区', '美术教室', '50','2' ,'JXL2#210-美术实训室（一）', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX209','铁门关校区', '现代电气控制实训室', '50','2' ,'JDGC2#209-现代电气实训室', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX203','铁门关校区', '多媒体教室', '35','2' ,'XDNY2#203', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-301','库尔勒校区', '多媒体教室', '50','3' ,'3#301', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5#507','库尔勒校区', '普通教室', '80','5' ,'5#507', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('CJ1-huagongchejian','库尔勒校区', '实训车间', '80','1' ,'CJ1-化工车间', '车间');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX103','铁门关校区', '多媒体教室', '35','1' ,'XDNY1#103', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-509','库尔勒校区', '普通教室', '50','5' ,'5-509', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL3#306-1号舞蹈室','库尔勒校区', '舞蹈教室', '80','3' ,'3#306-1号舞蹈室', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX210','铁门关校区', '多媒体教室', '50','2' ,'HXGC2#210', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL403','铁门关校区', '多媒体教室', '50','4' ,'JXL4#403', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL411','铁门关校区', '多媒体教室', '50','4' ,'JXL4#411', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL417','铁门关校区', '多媒体教室', '50','4' ,'JXL4#417', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL4#407','库尔勒校区', '普通教室', '80','4' ,'4#407', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL321','铁门关校区', '多媒体教室', '50','3' ,'JXL3#321', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX206','铁门关校区', '多媒体教室', '50','2' ,'HXGC2#206', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL503','铁门关校区', '多媒体教室', '50','5' ,'JXL5#503', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-315','库尔勒校区', '普通教室', '50','3' ,'3#315', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX107','铁门关校区', '实训车间', '50','1' ,'JDGC1#107-数控实训室', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL405','铁门关校区', '多媒体教室', '50','4' ,'JXL4#405', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX208','铁门关校区', '多媒体教室', '50','2' ,'HXGC2#208', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL506','铁门关校区', '多媒体教室', '50','5' ,'JXL5#506', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL504','铁门关校区', '多媒体教室', '50','5' ,'JXL5#504', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX110','铁门关校区', '实训车间', '50','1' ,'1#110-焊接实训中心', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX303','铁门关校区', '多媒体教室', '50','3' ,'HXGC3#303', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL209','铁门关校区', '机房', '50','2' ,'JXL2#209', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX302','铁门关校区', '多媒体教室', '50','3' ,'HXGC3#302', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX104','铁门关校区', '多媒体教室', '35','1' ,'XDNY1#104', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-211','库尔勒校区', '多媒体教室', '50','2' ,'2#211', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL3#304-1号琴房','库尔勒校区', '琴房', '80','3' ,'3#304-1号琴房', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX301','铁门关校区', '机房', '50','3' ,'XDNY3#301-公共机房', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX210','铁门关校区', '多媒体教室', '35','2' ,'XDNY2#210', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL4#401-3号舞蹈室','库尔勒校区', '舞蹈教室', '80','4' ,'4#401-3号舞蹈室', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX108','铁门关校区', '实训车间', '120','1' ,'HXGC1#108-化工实训车间(二)', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX314','铁门关校区', '琴房', '50','3' ,'JYYS3#314-电钢琴实训室（五）', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL4#410','库尔勒校区', '普通教室', '80','4' ,'4#410', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX3-304','铁门关校区', '汽修实训室', '50','3' ,'QCGCZX3-304-低压电工室(2)', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-401','库尔勒校区', '多媒体教室', '50','4' ,'4#401', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX204','铁门关校区', '多媒体教室', '35','2' ,'XDNY2#204', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-314','库尔勒校区', '普通教室', '50','3' ,'3#314', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL521','铁门关校区', '多媒体教室', '50','5' ,'JXL5#521', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL1#-数控加工中心','库尔勒校区', '多媒体教室', '80','1' ,'1#数控加工中心', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL223','铁门关校区', '多媒体教室', '50','2' ,'JXL2#223', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL513','铁门关校区', '多媒体教室', '50','5' ,'JXL5#513', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX3-309','铁门关校区', '汽修实训室', '100','3' ,'QCGCZX3-309-智能网联综合实训室', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL409','铁门关校区', '多媒体教室', '50','4' ,'JXL4#409', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL515','铁门关校区', '多媒体教室', '50','5' ,'JXL5#515', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-403','库尔勒校区', '多媒体教室', '50','4' ,'4#403', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL517','铁门关校区', '多媒体教室', '50','5' ,'JXL5#517', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL3#304','库尔勒校区', '多媒体教室', '80','3' ,'3#304', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX106','铁门关校区', '化工仿真实训室', '40','1' ,'HXGC1#106-化工仿真实训室(二)', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX302','铁门关校区', '琴房', '50','3' ,'JYYS3#302-电钢琴实训室（二）', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX305','铁门关校区', '声乐教室', '50','3' ,'JYYS3#305-乐理实训室', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL4#409','库尔勒校区', '普通教室', '80','4' ,'4#409', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL3#305-1号声乐室','库尔勒校区', '声乐教室', '80','3' ,'3#305-1号声乐室', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX204','铁门关校区', '自动化生产线实训室', '50','2' ,'JDGC2#204-自动化生产线实训室', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL1#104','库尔勒校区', '多媒体教室', '80','1' ,'1#104', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('CJ1-qixiuchejian','库尔勒校区', '实训车间', '80','1' ,'CJ1-汽修车间', '车间');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX308','铁门关校区', '电工实训室', '50','3' ,'JDGC3#308-电气实训室（二）', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5#508','库尔勒校区', '多媒体教室', '80','5' ,'5#508', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL2#208-液压气动室','库尔勒校区', '液压气动实训室', '80','2' ,'2#208-液压气动', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-xiaojifang','库尔勒校区', '机房', '50','2' ,'2#小机房', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-508','库尔勒校区', '普通教室', '50','5' ,'5-508', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL415','铁门关校区', '声乐教室', '50','4' ,'JXL4#415-乐理实训室（一）', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-202','库尔勒校区', '多媒体教室', '50','2' ,'2#202', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL3#302-美术室','库尔勒校区', '美术教室', '80','3' ,'3#302-美术室', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX104','铁门关校区', '舞蹈教室', '50','1' ,'JYYS1#104-舞蹈实训室（四）', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX309','铁门关校区', '多媒体教室', '50','3' ,'HXGC3#309', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX3-303','铁门关校区', '汽修实训室', '50','3' ,'QCGCZX3-303-低压电工室(1)', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-512','库尔勒校区', '普通教室', '50','5' ,'5-512', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-503','库尔勒校区', '普通教室', '50','5' ,'5#503', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL3#307-2号舞蹈室','库尔勒校区', '舞蹈教室', '80','3' ,'3#307-2号舞蹈室', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL1-xiaojifang','库尔勒校区', '机房', '50','1' ,'1#小机房', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-410','库尔勒校区', '普通教室', '50','4' ,'4#410', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX211','铁门关校区', '多媒体教室', '35','2' ,'XDNY2#211', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-404','库尔勒校区', '普通教室', '50','4' ,'4#404', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-dajifang','库尔勒校区', '机房', '60','3' ,'3#大机房', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL216','铁门关校区', '机房', '50','2' ,'JXL2#216', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5#513','库尔勒校区', '普通教室', '80','5' ,'5#513', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX308','铁门关校区', '多媒体教室', '50','3' ,'HXGC3#308', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL1-dajifang','库尔勒校区', '机房', '60','1' ,'1#大机房', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX203','铁门关校区', '电工实训室', '50','2' ,'JDGC2#203-逆向建模实训室', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL4-演播厅','库尔勒校区', '公共教室', '280','4' ,'4#演播厅', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL401','铁门关校区', '多媒体教室', '50','4' ,'JXL4#401', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX108','铁门关校区', '电工实训室', '50','1' ,'1#108-机械加工中心', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL2#208','库尔勒校区', '移动一体机', '80','2' ,'2#208', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL1#-报告厅','库尔勒校区', '多媒体教室', '80','1' ,'1#报告厅', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL2#206-现代电气控制室','库尔勒校区', '现代电气控制实训室', '80','2' ,'2#206现代电气控制', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-413','库尔勒校区', '多媒体教室', '50','4' ,'4#413', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-207','库尔勒校区', '多媒体教室', '50','2' ,'2#207', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-307','库尔勒校区', '普通教室', '50','3' ,'3#307', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX205','铁门关校区', '多媒体教室', '80','2' ,'JYYS2#205-玩具实训室', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX208','铁门关校区', '多媒体教室', '35','2' ,'XDNY2#208', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX313','铁门关校区', '电工实训室', '50','3' ,'JDGC3#313-传感器实训室', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL311','铁门关校区', '多媒体教室', '50','3' ,'JXL3#311', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL3#308','库尔勒校区', '普通教室', '80','3' ,'3#308', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-205','库尔勒校区', '普通教室', '50','2' ,'2#205', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('CJ1-qczhcj','库尔勒校区', '实训车间', '80','1' ,'CJ1-汽车综合车间', '车间');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX304','铁门关校区', '多媒体教室', '80','3' ,'XDNY3#304', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL3#303','库尔勒校区', '普通教室', '80','3' ,'3#303', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL507','铁门关校区', '多媒体教室', '50','5' ,'JXL5#507', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-304','库尔勒校区', '普通教室', '50','3' ,'3#304', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX105','铁门关校区', '多媒体教室', '35','1' ,'XDNY1#105', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL1#110','库尔勒校区', '移动一体机', '80','1' ,'1#110', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX3-302','铁门关校区', '汽修实训室', '50','3' ,'QCGCZX3-302-新能源动力电池实训室', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL2#206','库尔勒校区', '普通教室', '80','2' ,'2#206', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL304','铁门关校区', '多媒体教室', '50','3' ,'JXL3#304', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL1-xinlizhongxin','库尔勒校区', '活动室', '80','1' ,'1#心理活动中心', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL322','铁门关校区', '多媒体教室', '50','3' ,'JXL3#322', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX313','铁门关校区', '琴房', '50','3' ,'JYYS3#313-电钢琴实训室（四）', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XXJSZX306','铁门关校区', '普通教室', '50','3' ,'XXJS3#306教室', '信息技术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL204','铁门关校区', '多媒体教室', '50','2' ,'JXL2#204', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX2-202','铁门关校区', '汽修实训室', '80','2' ,'QCGCZX2-202-汽车电器设备实训室', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-dajifang','库尔勒校区', '机房', '60','2' ,'2#大机房', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL3#308-2号琴房（电钢）','库尔勒校区', '琴房', '80','3' ,'3#308-2号琴房（电钢）', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX102','铁门关校区', '舞蹈教室', '50','1' ,'JYYS1#102-舞蹈实训室（二）', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL511','铁门关校区', '多媒体教室', '50','5' ,'JXL5#511', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5#510','库尔勒校区', '多媒体教室', '80','5' ,'5#510', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5#509','库尔勒校区', '普通教室', '80','5' ,'5#509', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL4#403','库尔勒校区', '普通教室', '80','4' ,'4#403', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL410','铁门关校区', '多媒体教室', '50','4' ,'JXL4#410', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4402','库尔勒校区', '多媒体教室', '50','4' ,'4#402', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL2#204','库尔勒校区', '多媒体教室', '80','2' ,'2#204', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX2-204','铁门关校区', '汽修实训室', '80','2' ,'QCGCZX2-204-汽车发动机综合实训室', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX305','铁门关校区', '多媒体教室', '50','3' ,'HXGC3#305', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XXJSZX305','铁门关校区', '机房', '50','3' ,'XXJS3#305机房', '信息技术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-312','库尔勒校区', '多媒体教室', '50','3' ,'3#312', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-409','库尔勒校区', '多媒体教室', '50','4' ,'4#409', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX202','铁门关校区', '多媒体教室', '35','2' ,'XDNY2#202', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-209','库尔勒校区', '多媒体教室', '50','2' ,'2#209', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL3#303-2号声乐室','库尔勒校区', '声乐教室', '80','3' ,'3#303-2号声乐室', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL3#311-4号琴房（电钢）','库尔勒校区', '琴房', '80','3' ,'3#311-4号琴房（电钢）', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL3#307','库尔勒校区', '普通教室', '80','3' ,'3#307', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL406','铁门关校区', '多媒体教室', '50','4' ,'JXL4#406', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-411','库尔勒校区', '多媒体教室', '50','4' ,'4#411', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX303','铁门关校区', '琴房', '50','3' ,'JYYS3#303-电钢琴实训室（三）', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-513','库尔勒校区', '普通教室', '50','5' ,'5-513', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL211','铁门关校区', '公共教室', '60','2' ,'JXL2#211', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('CJ1-qcjdwxcj','库尔勒校区', '实训车间', '80','1' ,'CJ1-汽车机电维修车间', '车间');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL516','铁门关校区', '多媒体教室', '50','5' ,'JXL5#516', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX207','铁门关校区', '多媒体教室', '35','2' ,'XDNY2#207', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL313','铁门关校区', '多媒体教室', '50','3' ,'JXL3#313', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX2-203','铁门关校区', '多媒体教室', '50','2' ,'QCGCZX2-203', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-310jifang','库尔勒校区', '机房', '50','3' ,'3#310机房', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL2-203','库尔勒校区', '多媒体教室', '80','2' ,'2#203', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL320','铁门关校区', '多媒体教室', '50','3' ,'JXL3#320', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL509','铁门关校区', '多媒体教室', '50','5' ,'JXL5#509', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL1#103','库尔勒校区', '多媒体教室', '80','1' ,'1#103', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL306','铁门关校区', '多媒体教室', '50','3' ,'JXL3#306', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-313','库尔勒校区', '多媒体教室', '50','3' ,'3#313', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX2-201','铁门关校区', '汽修实训室', '80','2' ,'QCGCZX2-201-汽车底盘实训室', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX201','铁门关校区', '声乐教室', '50','2' ,'JYYS2#201-声乐实训室（一）', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL2#205-网络实训室','库尔勒校区', '网络实训室', '80','2' ,'2#205-网络实训室', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL408','铁门关校区', '多媒体教室', '50','4' ,'JXL4#408', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-505','库尔勒校区', '多媒体教室', '50','5' ,'5#505', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX304','铁门关校区', '普通教室', '50','3' ,'JDGC3#304', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX102','铁门关校区', '多媒体教室', '35','1' ,'XDNY1#102', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL407','铁门关校区', '多媒体教室', '50','4' ,'JXL4#407', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL421','铁门关校区', '多媒体教室', '50','4' ,'JXL4#421', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX306','铁门关校区', '电工实训室', '50','3' ,'JDGC3#306', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX303','铁门关校区', '虚拟仿真实训室', '50','3' ,'JDGC3#303-智能仿真实训室', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL308','铁门关校区', '多媒体教室', '50','3' ,'JXL3#308', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX307','铁门关校区', '电工实训室', '50','3' ,'JDGC3#307-电气实训室（一）', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL419','铁门关校区', '多媒体教室', '50','4' ,'JXL4#419', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL315','铁门关校区', '多媒体教室', '50','3' ,'JXL3#315', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL508','铁门关校区', '多媒体教室', '50','5' ,'JXL5#508', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL3#306','库尔勒校区', '普通教室', '80','3' ,'3#306', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-504','库尔勒校区', '多媒体教室', '50','5' ,'5#504', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL3#301','库尔勒校区', '多媒体教室', '80','3' ,'3#301', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX3-308','铁门关校区', '普通教室', '100','3' ,'QCGCZX3-308', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL4#405','库尔勒校区', '普通教室', '80','4' ,'4#405', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL416','铁门关校区', '声乐教室', '50','4' ,'JXL4#416-乐理实训室（二）', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-305','库尔勒校区', '普通教室', '50','3' ,'3#305', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-lubojiaoshi','库尔勒校区', '多媒体教室', '50','2' ,'2#录播教室', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX310','铁门关校区', '电工实训室', '50','3' ,'JDGC3#310-电气控制实训室（一）', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-210','库尔勒校区', '多媒体教室', '50','2' ,'2#210', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL224','铁门关校区', '公共教室', '60','2' ,'JXL2#224', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL505','铁门关校区', '多媒体教室', '50','5' ,'JXL5#505', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL310','铁门关校区', '多媒体教室', '50','3' ,'JXL3#310', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-506','库尔勒校区', '普通教室', '50','5' ,'5#506', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL309','铁门关校区', '多媒体教室', '50','3' ,'JXL3#309', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-405','库尔勒校区', '多媒体教室', '50','4' ,'4#405', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL1#107','库尔勒校区', '普通教室', '80','1' ,'1#107', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX210','铁门关校区', '实训车间', '50','2' ,'JDGC2#210-钳工创新实训室', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-306','库尔勒校区', '多媒体教室', '50','3' ,'3#306', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX3-306','铁门关校区', '汽修实训室', '50','3' ,'QCGCZX3-306-虚拟仿真实训室(2)', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-507','库尔勒校区', '普通教室', '50','5' ,'5-507', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-212','库尔勒校区', '多媒体教室', '50','2' ,'2#212', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL2#201-图书室','库尔勒校区', '普通教室', '80','2' ,'2#201-图书室（2）', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-201','库尔勒校区', '多媒体教室', '50','2' ,'2#201', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL520','铁门关校区', '多媒体教室', '50','5' ,'JXL5#520', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL4#408','库尔勒校区', '普通教室', '80','4' ,'4#408', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL121','铁门关校区', '公共教室', '215','1' ,'JXL1#121-阶梯教室', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL307','铁门关校区', '多媒体教室', '50','3' ,'JXL3#307', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL510','铁门关校区', '多媒体教室', '50','5' ,'JXL5#510', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX3-307','铁门关校区', '多媒体教室', '50','3' ,'QCGCZX3-307', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL3#310-婴幼儿卫生保健室','库尔勒校区', '幼儿保健室', '80','3' ,'3#310-婴幼儿卫生保健', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL501','铁门关校区', '多媒体教室', '50','5' ,'JXL5#501', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-501','库尔勒校区', '多媒体教室', '50','5' ,'5#501', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX207','铁门关校区', '多媒体教室', '80','2' ,'JYYS2#207-幼儿游戏实训室', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX202','铁门关校区', '声乐教室', '50','2' ,'JYYS2#202-声乐实训室（二）', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL2#202-图书室','库尔勒校区', '普通教室', '80','2' ,'2#202-图书室（1）', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX301','铁门关校区', '多媒体教室', '50','3' ,'HXGC3#301', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5#512','库尔勒校区', '多媒体教室', '80','5' ,'5#512', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX311','铁门关校区', '多媒体教室', '50','3' ,'HXGC3#311', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL2-203','库尔勒校区', '多媒体教室', '50','2' ,'2#203', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX1-101','铁门关校区', '实训车间', '150','1' ,'QCGCZX1-101-汽车综合维修车间', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX101','铁门关校区', '舞蹈教室', '50','1' ,'JYYS1#101-舞蹈实训室（一）', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX205','铁门关校区', '多媒体教室', '50','2' ,'JDGC2#205', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL215','铁门关校区', '公共教室', '60','2' ,'JXL2#215', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX105','铁门关校区', '化工仿真实训室', '40','1' ,'HXGC1#105-化工仿真实训室(一)', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL2#205','库尔勒校区', '多媒体教室', '80','2' ,'2#205', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-502','库尔勒校区', '多媒体教室', '50','5' ,'5#502', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('SXL2#207','库尔勒校区', '普通教室', '80','2' ,'2#207', '实训楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX304','铁门关校区', '多媒体教室', '50','3' ,'HXGC3#304', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL213','铁门关校区', '美术教室', '50','2' ,'JXL2#213-美术实训室（二）', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-311','库尔勒校区', '多媒体教室', '50','3' ,'3#311', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX301','铁门关校区', '琴房', '50','3' ,'JYYS3#301-电钢琴实训室（一）', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX205','铁门关校区', '多媒体教室', '35','2' ,'XDNY2#205', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL305','铁门关校区', '多媒体教室', '50','3' ,'JXL3#305', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL2#204-自动化生产线室','库尔勒校区', '自动化生产线实训室', '80','2' ,'2#204-自动化生产线', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-408','库尔勒校区', '多媒体教室', '50','4' ,'4#408', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL3-303','库尔勒校区', '多媒体教室', '50','3' ,'3#303', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX305','铁门关校区', '机房', '50','3' ,'XDNY3#305', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('CJ1-kqf','库尔勒校区', '实训车间', '80','1' ,'CJ1-烤漆房', '车间');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL1-jietijiaoshi','库尔勒校区', '普通教室', '200','1' ,'1#阶梯教室', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JDGCZX221','铁门关校区', '液压气动实训室', '50','2' ,'JDGC2#206-液压实训室', '机电工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('QCGCZX3-305','铁门关校区', '汽修实训室', '50','3' ,'QCGCZX3-305-虚拟仿真实训室(1)', '汽车工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-407','库尔勒校区', '普通教室', '50','4' ,'4#407', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX208','铁门关校区', '多媒体教室', '100','2' ,'JYYS2#208-早期教育智慧实训室', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL318','铁门关校区', '多媒体教室', '50','3' ,'JXL3#318', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL2#207-机械装调室','库尔勒校区', '机械装调实训室', '80','2' ,'2#207-机械装调', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL2#203-综合布线室','库尔勒校区', '网络综合布线室', '80','2' ,'2#203-综合布线室', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL5-510','库尔勒校区', '普通教室', '50','5' ,'5-510', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL203','铁门关校区', '公共教室', '60','2' ,'JXL2#203', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JYYSZX103','铁门关校区', '舞蹈教室', '50','1' ,'JYYS1#103-舞蹈实训室（三）', '教育艺术中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('ZHL4-412','库尔勒校区', '多媒体教室', '50','4' ,'4#412', '综合教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL218','铁门关校区', '机房', '50','2' ,'JXL2#218', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JNL3#301-3号声乐室','库尔勒校区', '声乐教室', '80','3' ,'3#301-3号声乐室', '技能训练中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('CJ1-bjcj','库尔勒校区', '实训车间', '80','1' ,'CJ1-钣金车间', '车间');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('JXL317','铁门关校区', '多媒体教室', '50','3' ,'JXL3#317', '教学楼');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX106','铁门关校区', '实训车间', '120','1' ,'XDNY1#106-农业实训车间', '现代农业实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('HXGCZX107','铁门关校区', '实训车间', '120','1' ,'HXGC1#107-化工实训车间(一)', '化学工程实训中心');


INSERT INTO classroom (room_Id, campus, room_type, max_capacity,floor,room_name, building) VALUES ('XDNYZX303','铁门关校区', '机房', '50','3' ,'XDNY3#303-会计实训室', '现代农业实训中心');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB36','681', '郭科伟', '铁门关校区','22早期教育1班,22早期教育2班' ,'49', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A02-1','372', '赵亚丽', '库尔勒校区','24教学10班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A15','381', '王晶晶', '铁门关校区','23党务工作1班' ,'37', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000GXA04','761', '孟凯凯', '铁门关校区','23学前教育10班' ,'31', '13','16','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460110B0B01','481', '孟怀洲', '铁门关校区','24智能焊接技术1班' ,'41', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570101KB0A07-1','339', '刘亚萍', '铁门关校区','23早期教育1班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A27','611', '李来徽', '铁门关校区','23社会工作1班' ,'33', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B01-1','586', '张丰', '铁门关校区','24婴幼儿托育服务与管理1班,24婴幼儿托育服务与管理2班' ,'72', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0B01','715', '潘瑞莹', '铁门关校区','23机电一体化技术2班' ,'48', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0B15','582', '彭廷海', '铁门关校区','23数字媒体技术1班' ,'38', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOA05','166', '赵银芳', '铁门关校区','24学前教育6班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0C01','734', '朱红羽', '铁门关校区','22数字媒体2班' ,'41', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460102B0B07','350', '宋春雨', '铁门关校区','22数字化设计1班' ,'34', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','10', '钟薇', '铁门关校区','24学前教育7班' ,'30', '10','13','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B01','501', '马军鹏', '铁门关校区','22软件技术1班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500210B0B11','755', '王镱霏', '铁门关校区','22汽车服务营销1班' ,'15', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('700206ZXA01','58', '朱子鹤', '库尔勒校区','22汽修1班,22汽修2班' ,'58', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000GXA04','761', '孟凯凯', '铁门关校区','23学前教育2班' ,'37', '9','12','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB10','740', '向荣欣', '铁门关校区','24学前教育6班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','496', '张桂香', '铁门关校区','23现代农业经济管理1班,23现代农业经济管理2班' ,'38', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB04','471', '赵伟华', '铁门关校区','22学前教育7班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB03','558', '杨永芬', '铁门关校区','22学前教育12班' ,'34', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570101KB0B02-1','561', '宋贺', '库尔勒校区','22保育1班' ,'29', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('420401B0A15','490', '张亚楠', '铁门关校区','22油气储运1班' ,'28', '1','8','10','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB05','540', '马华丽', '铁门关校区','24学前教育7班' ,'30', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A06-1','333', '李玲玉', '库尔勒校区','24教学13班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOA015','562', '杨舒程', '铁门关校区','22学前教育5班' ,'34', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A10','724', '宁亚', '铁门关校区','24软件技术2班' ,'42', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A16-1','358', '吴小银', '铁门关校区','24分析检验技术1班,24分析检验技术2班' ,'81', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470208B0B07','672', '马得梅', '铁门关校区','23分析检验技术1班' ,'50', '1','10','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('550201B0B07','741', '王姝懿', '铁门关校区','24音乐表演1班' ,'16', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOA05','166', '赵银芳', '铁门关校区','24学前教育4班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A07-3','665', '王玲', '库尔勒校区','23幼儿保育1班' ,'37', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A07-1','22', '肖媛媛', '库尔勒校区','24教学6班' ,'50', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B06','432', '高占鹏', '铁门关校区','24婴幼儿托育服务与管理2班' ,'39', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510107B0A03','765', '钱晓艳', '铁门关校区','24汽车智能技术1班' ,'32', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB36','681', '郭科伟', '铁门关校区','22学前教育15班' ,'18', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','244', '吴沁林', '铁门关校区','24新能源汽车检测与维修技术1班,24新能源汽车检测与维修技术2班' ,'68', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','496', '张桂香', '铁门关校区','23新能源汽车检测与维修技术3班' ,'31', '5','8','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510203B0B10','670', '李豪', '铁门关校区','23软件技术2班' ,'34', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','302', '桂永春', '铁门关校区','23汽车技术服务与营销1班,23汽车智能技术班' ,'47', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB10','655', '张可盈', '铁门关校区','23学前教育6班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB12','588', '邹尚岑', '库尔勒校区','22保育2班' ,'29', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500211B0B03','721', '王博', '库尔勒校区','22汽车检测维修1班(五年制)' ,'19', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000GXA04','761', '孟凯凯', '铁门关校区','22学前教育15班' ,'18', '5','8','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0B01','382', '王自丽', '铁门关校区','24数字媒体技术3班' ,'14', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('00000GXA02-3','68', '刘江', '库尔勒校区','23汽车检测与维修技术1班（五年制）' ,'29', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500211B0B05','257', '胡宇', '铁门关校区','21汽车检测维修1班(五年制)' ,'25', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','507', '吕江慧', '铁门关校区','24化工智能制造技术1班' ,'43', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500211B0A02','352', '孙生莲', '铁门关校区','24汽车检测与维修技术1班,24汽车检测与维修技术2班' ,'96', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB36','369', '赵兰兰', '铁门关校区','22学前教育9班' ,'29', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570101KB0B04','428', '刘嘉斌', '铁门关校区','24早期教育1班' ,'35', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB36','369', '赵兰兰', '铁门关校区','22学前教育6班' ,'33', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('770101B0B03-3','432', '高占鹏', '库尔勒校区','23学前教育2班（五年制）' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460306B0B14','522', '张惠敏', '铁门关校区','23电气自动化技术2班' ,'43', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('530802B0A01','764', '陈莉', '铁门关校区','23棉花加工与经营管理1班,23现代农业经济管理1班,23现代农业经济管理2班' ,'63', '1','9','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB03','558', '杨永芬', '铁门关校区','22学前教育11班' ,'35', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A16-1','358', '吴小银', '铁门关校区','24社会工作1班,24社会工作2班,24社会工作3班' ,'68', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('770101B0B04','154', '唐阳阳', '库尔勒校区','22保育3班' ,'30', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A12','14', '杨惠娟', '铁门关校区','24汽车技术服务与营销2班' ,'41', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510203B0B19','705', '何珍珍', '铁门关校区','24电子商务1班（产业学院）' ,'53', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A16-1','365', '于鹤文', '铁门关校区','24机电一体化技术1班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510202ZXB02','506', '孙雅莹', '铁门关校区','22网络技术3班' ,'45', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A16-1','365', '于鹤文', '铁门关校区','24数字化设计与制造技术1班,24数字化设计与制造技术2班' ,'68', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510202B0B09','383', '张祥', '铁门关校区','23计算机网络技术1班' ,'41', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A06-1','606', '周江鸥', '铁门关校区','23机电一体化技术3班' ,'47', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470208B0B16','487', '王宁', '铁门关校区','22分析检验1班' ,'26', '1','8','10','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('710201B0B15','172', '彭美荣', '库尔勒校区','22数字媒体1班(五年制)' ,'35', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B05','292', '马逸伦', '铁门关校区','23婴幼儿托育服务与管理2班' ,'22', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A09','310', '汪文舒', '铁门关校区','24电气自动化技术3班' ,'27', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('700206B0B04','653', '张晓涵', '铁门关校区','21汽车检测维修1班(五年制)' ,'22', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('610214B0B12','455', '袁慧楠', '铁门关校区','22电子商务1班' ,'38', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','464', '应俊平', '铁门关校区','23油气储运技术1班' ,'43', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB05','540', '马华丽', '铁门关校区','24学前教育5班' ,'31', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('00000GXA02-1','546', '张爱娜', '库尔勒校区','24教学8班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('770101B0B04','154', '唐阳阳', '库尔勒校区','22保育1班' ,'29', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A01','72', '路菁', '库尔勒校区','24教学12班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460104B0B09','321', '柴金伟', '铁门关校区','23机械制造及自动化1班' ,'29', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460102ZXB03','65', '谢天航', '铁门关校区','23数字化设计与制造技术1班' ,'38', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('560214B0A07','455', '袁慧楠', '铁门关校区','22网络直播3班' ,'31', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0B40','714', '陈安琪', '铁门关校区','21应用化工1班(五年制)' ,'53', '1','10','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','496', '张桂香', '铁门关校区','23党务工作1班' ,'37', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','330', '雷涛', '铁门关校区','24学前教育5班,24学前教育6班' ,'63', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000GXA04','761', '孟凯凯', '铁门关校区','23学前教育5班' ,'31', '9','12','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','302', '桂永春', '铁门关校区','24新能源汽车检测与维修技术2班' ,'35', '10','13','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','507', '吕江慧', '铁门关校区','24油气储运技术2班' ,'31', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0B01','716', '牛庆彬', '铁门关校区','23机电一体化技术4班' ,'47', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','659', '胡高芳', '铁门关校区','24机械制造与自动化1班' ,'40', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('410303B0B03','311', '张超', '铁门关校区','24畜牧兽医1班,24畜牧兽医2班' ,'55', '15','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('710201B0B14','618', '朱嘉琪', '库尔勒校区','22计算机应用1班' ,'34', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A09','310', '汪文舒', '铁门关校区','24电气自动化技术4班' ,'26', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('560214B0A06','668', '王星星', '铁门关校区','22网络直播2班' ,'39', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510107B0B09','217', '白亮', '铁门关校区','22汽车智能技术1班' ,'19', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460104B0A05','91', '何莲梅', '铁门关校区','24机械制造与自动化1班,24机械制造与自动化2班' ,'81', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B05','682', '房灵紫', '库尔勒校区','24学前教育1班（五年制）,24学前教育2班（五年制）,24幼儿保育1班' ,'56', '5','8','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0B07','608', '王国华', '铁门关校区','24社会工作1班' ,'23', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000GXA04','761', '孟凯凯', '铁门关校区','23学前教育7班' ,'31', '9','12','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB03','130', '曹立汶', '铁门关校区','23学前教育1班' ,'32', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB09','467', '于东晖', '铁门关校区','23学前教育9班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A06-1','333', '李玲玉', '库尔勒校区','24教学7班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A02','343', '马万俊', '库尔勒校区','22应用化工1班(五年制),22数字媒体1班(五年制),22数字媒体2班(五年制)' ,'100', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B03','675', '王颖', '铁门关校区','23学前教育5班' ,'31', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460102ZXB01','196', '何雪梅', '铁门关校区','22数字化设计1班' ,'34', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A01','260', '古丽博斯坦·艾比不拉', '库尔勒校区','24教学7班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB06','586', '张丰', '铁门关校区','24学前教育4班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0B15','582', '彭廷海', '铁门关校区','23数字媒体技术2班' ,'43', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('160200B0B06','568', '赵银刚', '铁门关校区','23音乐表演1班' ,'18', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('051300ZXA02','132', '李龙', '铁门关校区','22机电1班' ,'32', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510102ZXB03','500', '郭龙', '铁门关校区','23物联网应用技术1班,23物联网应用技术2班' ,'99', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0B06','686', '张秀红', '铁门关校区','22党务工作1班,22党务工作2班' ,'52', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460102B0B01','754', '王强', '铁门关校区','23数字化设计与制造技术1班' ,'38', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('550201B0A01-1','559', '李娜', '铁门关校区','24音乐表演1班' ,'16', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510102B0B01','500', '郭龙', '铁门关校区','24物联网应用技术2班' ,'38', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A38','732', '孙行行', '铁门关校区','nan' ,'0', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','496', '张桂香', '铁门关校区','23现代物流管理1班,23畜禽智能化养殖1班' ,'57', '5','8','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A09','177', '吕晗', '铁门关校区','24智能焊接技术1班' ,'41', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','709', '热伊莱·胡加木尼牙孜', '铁门关校区','24汽车检测与维修技术1班,24汽车检测与维修技术2班' ,'96', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B06','432', '高占鹏', '铁门关校区','24婴幼儿托育服务与管理1班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','10', '钟薇', '铁门关校区','24早期教育1班' ,'35', '14','17','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A02','661', '马慧', '铁门关校区','24机械制造与自动化1班,24机械制造与自动化2班' ,'81', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0A15','713', '王靖', '铁门关校区','22化工智造1班,22应用化工1班' ,'77', '1','10','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','464', '应俊平', '铁门关校区','23分析检验技术1班' ,'50', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','663', '薛霞', '铁门关校区','24软件技术2班' ,'42', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('700206B0B04','653', '张晓涵', '铁门关校区','21汽车检测维修1班(五年制)' ,'22', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A09-1','206', '王丹', '库尔勒校区','24教学6班' ,'50', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A11','85', '曲红霞', '铁门关校区','24汽车智能技术2班' ,'30', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','382', '王自丽', '铁门关校区','24分析检验技术1班' ,'42', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A17-1','456', '丁婕', '铁门关校区','24数字化设计与制造技术1班,24数字化设计与制造技术2班' ,'68', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0B10','605', '马景瑞', '铁门关校区','23化工智能制造技术1班,23化工智能制造技术2班' ,'55', '1','9','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','496', '张桂香', '铁门关校区','23社会工作1班,23社会工作2班' ,'70', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('560214B0B11','610', '董延芳', '铁门关校区','22网络直播2班' ,'39', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB36','681', '郭科伟', '铁门关校区','22学前教育12班' ,'34', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('051300ZXA02','132', '李龙', '库尔勒校区','22机电2班,22机电3班' ,'48', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('770101B0A03','341', '罗梦娇', '库尔勒校区','23学前教育2班（五年制）' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500212B0B07','368', '张震', '铁门关校区','23新能源汽车检测与维修技术1班' ,'30', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB04','471', '赵伟华', '铁门关校区','22学前教育10班' ,'31', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB36','369', '赵兰兰', '铁门关校区','22学前教育10班' ,'31', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0B37','99', '戈琳娜', '库尔勒校区','22数字媒体2班(五年制)' ,'34', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0B40','604', '张太龙', '铁门关校区','23数字媒体技术1班' ,'38', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000GXA04','761', '孟凯凯', '铁门关校区','22学前教育12班' ,'34', '5','8','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0A07','452', '刘启全', '铁门关校区','23机电一体化技术2班' ,'48', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460306B0A07','607', '程占', '铁门关校区','24电气自动化技术3班,24电气自动化技术4班' ,'53', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500211B0B11','332', '李海超', '铁门关校区','22汽车检测维修2班' ,'22', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B06','431', '刘星', '铁门关校区','23婴幼儿托育服务与管理1班' ,'22', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510202B0B09','383', '张祥', '铁门关校区','23计算机网络技术4班' ,'41', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A12','545', '明婕', '铁门关校区','24油气储运技术1班,24油气储运技术2班' ,'71', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','723', '张林升', '铁门关校区','24计算机网络技术1班,24计算机网络技术2班' ,'67', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0A02','329', '马得林', '铁门关校区','24分析检验技术2班' ,'39', '11','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500210ZXA01','549', '方璟儒', '铁门关校区','22汽车服务营销1班' ,'15', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A16-1','199', '陈忠宏', '铁门关校区','24汽车技术服务与营销1班,24汽车技术服务与营销2班' ,'80', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0A09','256', '韩增强', '铁门关校区','23应用化工技术1班,23应用化工技术2班' ,'58', '1','10','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','464', '应俊平', '铁门关校区','24物联网应用技术1班,24物联网应用技术2班' ,'77', '10','13','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('530802B0A02','667', '刘凤会', '铁门关校区','24现代物流管理1班' ,'41', '10','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','498', '彭聪', '铁门关校区','24电子商务1班' ,'25', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','464', '应俊平', '铁门关校区','23电气自动化技术1班' ,'40', '5','8','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A07-3','665', '王玲', '库尔勒校区','23学前教育1班（五年制）,23学前教育2班（五年制）' ,'66', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('410119B0B01','554', '胡惠元', '铁门关校区','24现代农业经济管理2班' ,'42', '1','12','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB03','558', '杨永芬', '铁门关校区','23学前教育13班' ,'35', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510203B0B02','367', '张珍珍', '铁门关校区','24软件技术1班' ,'44', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B03','741', '王姝懿', '铁门关校区','24学前教育8班' ,'29', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A06-1','468', '胡娜', '库尔勒校区','24教学10班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','357', '王晓蓓', '铁门关校区','24社会工作1班,24社会工作2班,24社会工作3班' ,'68', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0B08','416', '张莉', '铁门关校区','21应用化工1班(五年制)' ,'53', '1','9','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB03','130', '曹立汶', '铁门关校区','23学前教育7班' ,'31', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570101KZXA01','739', '武小玲', '铁门关校区','23婴幼儿托育服务与管理1班' ,'22', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('420401B0A10','337', '李泳宏', '铁门关校区','23油气储运技术1班' ,'43', '10','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0B10','605', '马景瑞', '铁门关校区','23化工智能制造技术1班,23化工智能制造技术2班' ,'55', '10','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','752', '白轩宇', '铁门关校区','24党务工作1班' ,'44', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('530701ZXA01','232', '何向荣', '铁门关校区','22电子商务1班' ,'38', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('160200B0A06','697', '张瑜', '库尔勒校区','22保育1班' ,'29', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','464', '应俊平', '铁门关校区','24电气自动化技术3班,24电气自动化技术4班' ,'53', '14','17','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0B16','700', '顾乡侬', '库尔勒校区','21数字媒体1班(五年制)' ,'31', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460306B0C06','433', '连进牛', '铁门关校区','22电气自动化1班,22电气自动化2班' ,'47', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460102B0C01','716', '牛庆彬', '铁门关校区','23数字化设计与制造技术1班' ,'38', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','353', '孙燕华', '铁门关校区','24化工智能制造技术1班,24学前教育5班' ,'43', '14','17','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B04','170', '曹镛', '铁门关校区','24婴幼儿托育服务与管理1班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB09','585', '唐振钊', '铁门关校区','23学前教育10班' ,'31', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510107B0C03','327', '金龙', '铁门关校区','22汽车智能技术1班' ,'19', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB36','369', '赵兰兰', '铁门关校区','22学前教育5班' ,'34', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0A02','329', '马得林', '铁门关校区','24分析检验技术1班' ,'42', '11','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','496', '张桂香', '铁门关校区','23新能源汽车检测与维修技术2班' ,'35', '5','8','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB04','471', '赵伟华', '铁门关校区','22学前教育9班' ,'29', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0B02','518', '骆彦朝', '铁门关校区','23机电一体化技术1班,23机电一体化技术2班' ,'97', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','496', '张桂香', '铁门关校区','24现代农业经济管理1班' ,'40', '10','13','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','496', '张桂香', '铁门关校区','24智能焊接技术1班' ,'41', '10','13','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A06-1','359', '吴玉梅', '铁门关校区','23化工智能制造技术1班,23化工智能制造技术2班' ,'55', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A09-1','28', '张燕林', '库尔勒校区','24教学14班' ,'50', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('670201B0B04-1','49', '瞿林', '库尔勒校区','23应用化工技术1班（五年制）' ,'46', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOA015','562', '杨舒程', '铁门关校区','22学前教育13班' ,'35', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('550201B0A04','557', '张策百川', '铁门关校区','23音乐表演1班' ,'18', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510202B0B02','346', '裴涛', '铁门关校区','24计算机网络技术1班' ,'33', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('160200B0A07','341', '罗梦娇', '库尔勒校区','23学前教育1班（五年制）' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A03','83', '梁婧', '库尔勒校区','23汽车检测与维修技术1班（五年制）,23汽车运用与维修1班,23汽车运用与维修2班' ,'101', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','302', '桂永春', '铁门关校区','23物联网应用技术1班,23物联网应用技术2班' ,'99', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510203B0B01','512', '赵转梅', '铁门关校区','24软件技术2班' ,'42', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB03','558', '杨永芬', '铁门关校区','22学前教育9班' ,'29', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A20','611', '李来徽', '铁门关校区','23社会工作1班,23社会工作2班' ,'70', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','353', '孙燕华', '铁门关校区','24婴幼儿托育服务与管理2班' ,'39', '14','17','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460104B0A01','42', '王挺', '铁门关校区','22机电一体化1班(五年制)' ,'43', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','723', '张林升', '铁门关校区','24电子商务1班,24网络直播与运营1班' ,'52', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('700206B0B09','553', '宋箫龙', '库尔勒校区','23汽车检测与维修技术1班（五年制）' ,'29', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','464', '应俊平', '铁门关校区','23电气自动化技术2班' ,'43', '5','8','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A02-1','372', '赵亚丽', '库尔勒校区','24教学6班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B09','562', '杨舒程', '铁门关校区','23婴幼儿托育服务与管理1班' ,'22', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000GXA04','761', '孟凯凯', '铁门关校区','23学前教育3班' ,'34', '9','12','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000GXA04','761', '孟凯凯', '铁门关校区','22学前教育6班' ,'33', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460104B0A02','754', '王强', '铁门关校区','24机械制造与自动化1班' ,'40', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','302', '桂永春', '铁门关校区','23婴幼儿托育服务与管理1班,23婴幼儿托育服务与管理2班' ,'44', '5','8','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','601', '刘嘉雄', '铁门关校区','24现代农业经济管理1班' ,'40', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB09','241', '李雪瑶', '铁门关校区','23学前教育14班' ,'36', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A16-1','358', '吴小银', '铁门关校区','24应用化工技术1班' ,'35', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('550201B0B07-3','66', '王艺璇', '库尔勒校区','23学前教育1班（五年制）' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A06-1','nan', 'nan', '铁门关校区','nan' ,'0', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','464', '应俊平', '铁门关校区','23应用化工技术2班' ,'28', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('051300B0B02','23', '姜维', '库尔勒校区','23机电技术应用1班,23机电技术应用2班' ,'57', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A09','683', '王小丽', '铁门关校区','24棉花加工与经营管理1班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500212B0A02','229', '靳鹏辉', '铁门关校区','24新能源汽车检测与维修技术3班' ,'35', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0B02','518', '骆彦朝', '铁门关校区','23机电一体化技术3班' ,'47', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0B10','443', '王丽', '铁门关校区','22电气自动化1班,22电气自动化2班' ,'47', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB12','588', '邹尚岑', '库尔勒校区','22保育3班' ,'30', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB04','470', '石云', '铁门关校区','22学前教育12班' ,'34', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0A02','329', '马得林', '铁门关校区','24分析检验技术1班' ,'42', '1','10','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','68', '刘江', '库尔勒校区','22机电一体化1班(五年制)' ,'43', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A09','310', '汪文舒', '铁门关校区','24电气自动化技术1班' ,'27', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('530802B0B02','772', '杨梦蕾', '铁门关校区','23现代物流管理1班' ,'31', '13','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510203B0B12','699', '李棋景', '铁门关校区','23物联网应用技术1班' ,'49', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510202ZXB02','506', '孙雅莹', '铁门关校区','22网络技术1班' ,'46', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000GXA04','761', '孟凯凯', '铁门关校区','22学前教育9班' ,'29', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500211B0C04','63', '赵帅庆', '铁门关校区','22汽车检测维修1班,22汽车检测维修2班' ,'51', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A07-3','73', '刘健', '库尔勒校区','23计算机应用1班,23计算机应用2班' ,'64', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A02','334', '李庆霞', '铁门关校区','24计算机网络技术1班,24计算机网络技术2班,24计算机网络技术3班' ,'99', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('610214ZXB04','501', '马军鹏', '铁门关校区','23电子商务1班' ,'47', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB10','740', '向荣欣', '铁门关校区','24学前教育7班' ,'30', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('550201ZXB04','557', '张策百川', '铁门关校区','22音乐表演1班' ,'7', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A16-1','199', '陈忠宏', '铁门关校区','24新能源汽车检测与维修技术3班' ,'35', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500211B0A01','721', '王博', '库尔勒校区','22汽车检测维修1班(五年制)' ,'19', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','10', '钟薇', '铁门关校区','24学前教育8班' ,'29', '10','13','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A11','9', '周萍', '铁门关校区','24党务工作1班' ,'44', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','330', '雷涛', '铁门关校区','24学前教育3班,24学前教育4班' ,'60', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A15','381', '王晶晶', '铁门关校区','23党务工作3班' ,'31', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B03','560', '方佳璐', '铁门关校区','23学前教育10班' ,'31', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOA05','369', '赵兰兰', '铁门关校区','24学前教育8班' ,'29', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B13','567', '石可心', '铁门关校区','24婴幼儿托育服务与管理2班' ,'39', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('410119B0B01','554', '胡惠元', '铁门关校区','24现代农业经济管理1班' ,'40', '13','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0A32','680', '任蓉', '铁门关校区','24婴幼儿托育服务与管理2班' ,'39', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A09','78', '孙烨', '铁门关校区','24现代农业经济管理2班' ,'42', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204ZXA03','458', '王丽荣', '铁门关校区','23数字媒体技术2班' ,'43', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570101KB0A14','739', '武小玲', '铁门关校区','23早期教育2班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B03','560', '方佳璐', '铁门关校区','23学前教育8班' ,'31', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','330', '雷涛', '铁门关校区','24软件技术1班' ,'44', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A34','602', '马欢', '铁门关校区','23社会工作1班,23社会工作2班' ,'70', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB06','586', '张丰', '铁门关校区','24学前教育3班' ,'28', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A10','366', '张锋', '铁门关校区','24电子商务1班（产业学院）' ,'53', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOA015','562', '杨舒程', '铁门关校区','22学前教育6班' ,'33', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A02','343', '马万俊', '铁门关校区','24汽车技术服务与营销1班,24汽车技术服务与营销2班' ,'80', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB07','556', '王振华', '铁门关校区','24学前教育1班' ,'31', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A11','449', '侯莉', '铁门关校区','24学前教育7班' ,'30', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','302', '桂永春', '铁门关校区','23网络直播与运营1班' ,'36', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470209B0A08','672', '马得梅', '铁门关校区','23化工智能制造技术1班,23化工智能制造技术2班' ,'55', '1','10','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB07','585', '唐振钊', '铁门关校区','24学前教育4班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('410119B0A01','480', '候芳芳', '铁门关校区','24现代农业经济管理2班' ,'42', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A06-1','324', '韩春林', '铁门关校区','23新能源汽车检测与维修技术1班,23新能源汽车检测与维修技术2班,23新能源汽车检测与维修技术3班' ,'96', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A12','212', '向川', '铁门关校区','24棉花加工与经营管理1班,24棉花加工与经营管理2班' ,'69', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A17-1','456', '丁婕', '铁门关校区','24化工智能制造技术1班,24化工智能制造技术2班,24油气储运技术2班' ,'43', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570101KB0B01','563', '李雪', '铁门关校区','24早期教育2班' ,'35', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B03','560', '方佳璐', '铁门关校区','23学前教育9班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KZXB36','369', '赵兰兰', '铁门关校区','22学前教育4班' ,'33', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A09-1','206', '王丹', '库尔勒校区','24教学7班' ,'50', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','498', '彭聪', '铁门关校区','24社会工作1班' ,'23', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB09','170', '曹镛', '铁门关校区','23学前教育13班' ,'35', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B03','108', '孙思邈', '铁门关校区','24学前教育3班' ,'28', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A38','732', '孙行行', '铁门关校区','23党务工作1班' ,'37', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A01','9', '周萍', '铁门关校区','24党务工作1班,24党务工作2班' ,'87', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB11','431', '刘星', '铁门关校区','23学前教育14班' ,'36', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('770101B0B01','682', '房灵紫', '库尔勒校区','22保育2班' ,'29', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A11','88', '徐盈盈', '铁门关校区','24汽车技术服务与营销2班' ,'41', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A09-1','731', '蔺琪云', '库尔勒校区','24教学9班' ,'50', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500211B0A02','721', '王博', '库尔勒校区','22汽车检测维修1班(五年制)' ,'19', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('700206ZXB03','338', '刘亚杰', '库尔勒校区','22汽修2班' ,'29', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A16-1','365', '于鹤文', '铁门关校区','24机械制造与自动化1班,24机械制造与自动化2班' ,'81', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOA015','562', '杨舒程', '铁门关校区','22学前教育7班' ,'32', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0A09','256', '韩增强', '铁门关校区','23应用化工技术3班' ,'32', '11','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A02-1','691', '谭翱翔', '库尔勒校区','24教学9班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','357', '王晓蓓', '铁门关校区','24畜牧兽医1班,24畜牧兽医2班' ,'55', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','496', '张桂香', '铁门关校区','24畜牧兽医1班,24畜牧兽医2班' ,'55', '10','13','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500212ZXA04','719', '雍睿思', '铁门关校区','23新能源汽车检测与维修技术1班,23新能源汽车检测与维修技术2班,23新能源汽车检测与维修技术3班' ,'96', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A38','732', '孙行行', '铁门关校区','23党务工作2班,23党务工作3班' ,'66', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('00000GXA02-1','546', '张爱娜', '库尔勒校区','24教学11班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A09','78', '孙烨', '铁门关校区','24畜牧兽医1班,24畜牧兽医2班' ,'55', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB10','740', '向荣欣', '铁门关校区','24学前教育4班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','68', '刘江', '库尔勒校区','22数字媒体1班(五年制),22数字媒体2班(五年制)' ,'69', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A11','312', '张蕊婕', '铁门关校区','24新能源汽车检测与维修技术3班' ,'35', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500210B0B05','551', '王虎龙', '铁门关校区','23汽车技术服务与营销1班' ,'26', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('710201B0B08','439', '翟建楠', '库尔勒校区','23计算机应用2班' ,'33', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB09','31', '李富丽', '铁门关校区','24学前教育2班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('530802B0A01','764', '陈莉', '铁门关校区','23棉花加工与经营管理1班,23现代农业经济管理1班,23现代农业经济管理2班' ,'63', '10','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A09','177', '吕晗', '铁门关校区','24智能焊接技术2班' ,'36', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460104B0C05','321', '柴金伟', '铁门关校区','23机械制造及自动化1班' ,'29', '1','18','8','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A03','662', '冯靖棋', '库尔勒校区','23幼儿保育1班,23数字媒体技术1班（五年制）' ,'87', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A44','494', '闫军刚', '铁门关校区','24社会工作1班,24社会工作2班,24社会工作3班' ,'68', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0C01','734', '朱红羽', '铁门关校区','22数字媒体1班' ,'39', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A09','374', '曹玉婷', '铁门关校区','24物联网应用技术2班' ,'38', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB09','556', '王振华', '铁门关校区','24学前教育6班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A08-1','730', '冯艳霞', '库尔勒校区','24教学14班' ,'50', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('051300B0B04','59', '安怡凤', '库尔勒校区','23机电技术应用1班,23机电技术应用2班' ,'57', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A24','732', '孙行行', '铁门关校区','22社会工作1班' ,'27', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('420401B0A01','348', '尚鹏博', '铁门关校区','24油气储运技术1班,24油气储运技术2班' ,'71', '11','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('770101B0B04','154', '唐阳阳', '库尔勒校区','23幼儿保育1班' ,'37', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOA015','562', '杨舒程', '铁门关校区','22学前教育12班' ,'34', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460102B0A05','56', '王鹏鹏', '铁门关校区','23数字化设计与制造技术1班,23机械制造及自动化1班' ,'67', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500211B0A03','364', '于登高', '铁门关校区','24汽车检测与维修技术1班,24汽车检测与维修技术2班' ,'96', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','353', '孙燕华', '铁门关校区','23学前教育11班,23学前教育12班' ,'64', '5','8','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('530802B0A01','667', '刘凤会', '铁门关校区','24现代物流管理2班' ,'42', '10','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204ZXA03','335', '李晓龙', '铁门关校区','23数字媒体技术3班' ,'36', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','244', '吴沁林', '铁门关校区','24现代物流管理2班' ,'42', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0A05','38', '杨璐', '铁门关校区','23机电一体化技术2班' ,'48', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','274', '刘恒玮', '铁门关校区','24数字媒体技术3班' ,'14', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('410117B0B04','441', '王冬梅', '铁门关校区','23棉花加工与经营管理1班' ,'25', '13','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB07','585', '唐振钊', '铁门关校区','24学前教育3班' ,'28', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0B03','500', '郭龙', '铁门关校区','24数字媒体技术3班' ,'14', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('610214B0A04','81', '梁辉', '铁门关校区','23电子商务1班' ,'47', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B03','676', '李杰', '库尔勒校区','24学前教育1班（五年制）,24学前教育2班（五年制）,24幼儿保育1班' ,'56', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0C02','458', '王丽荣', '铁门关校区','22数字媒体1班' ,'39', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB11','349', '史正兵', '铁门关校区','23学前教育4班' ,'35', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0B10-1','617', '付玉', '库尔勒校区','22应用化工1班(五年制)' ,'31', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','244', '吴沁林', '铁门关校区','24汽车技术服务与营销1班,24汽车技术服务与营销2班' ,'80', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570101KB0A31','323', '程双儿', '铁门关校区','23早期教育2班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A09-1','731', '蔺琪云', '库尔勒校区','24教学10班' ,'50', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A06-1','359', '吴玉梅', '铁门关校区','23分析检验技术1班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460110B0B11','717', '武云涛', '铁门关校区','23智能焊接技术1班' ,'23', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510203B0B03','513', '麻翠翠', '铁门关校区','23计算机网络技术2班' ,'43', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','464', '应俊平', '铁门关校区','24机械制造与自动化2班' ,'41', '14','17','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB03','558', '杨永芬', '铁门关校区','23学前教育12班' ,'30', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A12','325', '韩慧', '铁门关校区','24电气自动化技术3班,24电气自动化技术4班' ,'53', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','464', '应俊平', '铁门关校区','23机电一体化技术1班' ,'49', '5','8','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','244', '吴沁林', '铁门关校区','24电子商务1班（产业学院）' ,'53', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','244', '吴沁林', '铁门关校区','24汽车智能技术1班,24汽车智能技术2班' ,'62', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB03','130', '曹立汶', '铁门关校区','23学前教育8班' ,'31', '10','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('530802B0A02','667', '刘凤会', '铁门关校区','24现代物流管理1班' ,'41', '1','9','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460306B0B14','650', '鲁文斌', '铁门关校区','23电气自动化技术1班' ,'40', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000GXA04','761', '孟凯凯', '铁门关校区','23学前教育6班' ,'33', '9','12','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','330', '雷涛', '铁门关校区','24网络直播与运营1班（产业学院）' ,'52', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570101KB0A12','680', '任蓉', '铁门关校区','23早期教育1班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOA015','562', '杨舒程', '铁门关校区','22学前教育4班' ,'33', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510203B0B13','669', '王成佳', '铁门关校区','23软件技术2班' ,'34', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A42','419', '杨文莉', '铁门关校区','23党务工作2班' ,'35', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('410119B0B08','554', '胡惠元', '铁门关校区','23现代农业经济管理1班,23现代农业经济管理2班' ,'38', '13','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB03','558', '杨永芬', '铁门关校区','23学前教育11班' ,'34', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A11','9', '周萍', '铁门关校区','24党务工作2班' ,'43', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0A09','256', '韩增强', '铁门关校区','23应用化工技术1班,23应用化工技术2班' ,'58', '11','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('710201B0B15','172', '彭美荣', '库尔勒校区','22计算机应用2班' ,'37', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0A32','680', '任蓉', '铁门关校区','24早期教育1班' ,'35', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510203B0B03','701', '翟彩云', '铁门关校区','23计算机网络技术1班' ,'41', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0A01','475', '赵家嘉', '铁门关校区','24机电一体化技术1班' ,'32', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0A07','452', '刘启全', '铁门关校区','21机电一体化1班(五年制)' ,'36', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A11','300', '刘省委', '铁门关校区','24学前教育3班' ,'28', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB03','558', '杨永芬', '铁门关校区','22学前教育8班' ,'33', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A18','733', '张亮', '铁门关校区','24党务工作2班' ,'43', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570101KB0A13','463', '王凡兰', '铁门关校区','23早期教育2班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('560214B0B15','226', '韩书红', '铁门关校区','22网络直播3班' ,'31', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('410117B0B02','441', '王冬梅', '铁门关校区','23棉花加工与经营管理1班' ,'25', '1','12','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0A01','713', '王靖', '铁门关校区','24应用化工技术1班' ,'35', '11','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0B01','715', '潘瑞莹', '铁门关校区','23机电一体化技术3班' ,'47', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('590101B0A42','419', '杨文莉', '铁门关校区','23党务工作3班' ,'31', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A09','177', '吕晗', '铁门关校区','24数字化设计与制造技术1班' ,'38', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500210B0B04','719', '雍睿思', '铁门关校区','23汽车技术服务与营销1班' ,'26', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460306B0A08','753', '郭高飞', '铁门关校区','24电气自动化技术1班,24电气自动化技术2班' ,'54', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('410119B0A01','603', '洪贤泰', '铁门关校区','24棉花加工与经营管理1班' ,'33', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','752', '白轩宇', '铁门关校区','24应用化工技术1班' ,'35', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('550201B0A05','675', '王颖', '铁门关校区','24音乐表演1班' ,'16', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0B15','582', '彭廷海', '铁门关校区','23数字媒体技术3班' ,'36', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570101KB0A31','323', '程双儿', '铁门关校区','23早期教育1班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB05','540', '马华丽', '铁门关校区','24学前教育3班' ,'28', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A02','343', '马万俊', '库尔勒校区','22机电一体化1班(五年制),22汽车检测维修1班(五年制)' ,'62', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A12','545', '明婕', '铁门关校区','24新能源汽车检测与维修技术1班,24新能源汽车检测与维修技术3班' ,'68', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0A07','452', '刘启全', '铁门关校区','23机电一体化技术4班' ,'47', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204ZXB10','699', '李棋景', '铁门关校区','23数字媒体技术1班' ,'38', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0B16','700', '顾乡侬', '库尔勒校区','21数字媒体2班(五年制)' ,'28', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('700206B0B01','360', '徐国申', '库尔勒校区','23汽车检测与维修技术1班（五年制）' ,'29', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0B11','307', '李荣荣', '库尔勒校区','21数字媒体1班(五年制)' ,'31', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB11','48', '巩俞含', '铁门关校区','24学前教育8班' ,'29', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A07-1','167', '尚巾慧', '库尔勒校区','24教学12班' ,'50', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOA05','166', '赵银芳', '铁门关校区','24学前教育7班' ,'30', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('051300ZXA08','301', '王勇健', '库尔勒校区','22机电1班' ,'32', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','309', '万晓娟', '铁门关校区','24分析检验技术1班,24分析检验技术2班' ,'81', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A12','212', '向川', '铁门关校区','24畜牧兽医1班,24畜牧兽医2班' ,'55', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','302', '桂永春', '铁门关校区','24新能源汽车检测与维修技术1班' ,'33', '10','13','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB03','558', '杨永芬', '铁门关校区','22学前教育10班' ,'31', '1','9','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A11','300', '刘省委', '铁门关校区','24学前教育5班' ,'31', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460306B0A07','607', '程占', '铁门关校区','24电气自动化技术1班,24电气自动化技术2班' ,'54', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470208B0A01','50', '时乐然', '铁门关校区','24分析检验技术1班' ,'42', '11','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('410303B0B02','376', '代佳君', '铁门关校区','24畜牧兽医1班,24畜牧兽医2班' ,'55', '1','12','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('550201B0B03','560', '方佳璐', '铁门关校区','22音乐表演1班' ,'7', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A02','343', '马万俊', '铁门关校区','24汽车检测与维修技术1班,24汽车检测与维修技术2班' ,'96', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('670201B0B02-2','308', '牛秀', '库尔勒校区','23应用化工技术1班（五年制）' ,'46', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510203ZXB06','272', '牟倡宏', '铁门关校区','22软件技术1班' ,'33', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A06-1','606', '周江鸥', '铁门关校区','23机电一体化技术2班' ,'48', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460104B0A02','754', '王强', '铁门关校区','24机械制造与自动化2班' ,'41', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB11','340', '刘玉阁', '铁门关校区','24学前教育5班' ,'31', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510202ZXB01','669', '王成佳', '铁门关校区','23计算机网络技术3班,23计算机网络技术4班' ,'82', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A16-1','199', '陈忠宏', '铁门关校区','24汽车检测与维修技术1班,24汽车检测与维修技术2班' ,'96', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A02','756', '吴英格', '铁门关校区','24化工智能制造技术1班,24化工智能制造技术2班,24数字媒体技术3班' ,'43', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B09','562', '杨舒程', '铁门关校区','23婴幼儿托育服务与管理2班' ,'22', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A06-1','468', '胡娜', '库尔勒校区','24教学6班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('470201B0B08','416', '张莉', '铁门关校区','21应用化工1班(五年制)' ,'53', '10','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510102ZXA01','335', '李晓龙', '铁门关校区','23物联网应用技术1班,23物联网应用技术2班' ,'99', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','302', '桂永春', '铁门关校区','24化工智能制造技术2班,24学前教育6班' ,'70', '14','17','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204ZXB01','604', '张太龙', '库尔勒校区','21数字媒体1班(五年制)' ,'31', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A11','748', '彭思婕', '铁门关校区','24化工智能制造技术1班' ,'43', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('530802B0A02','769', '黄甜甜', '铁门关校区','24现代物流管理2班' ,'42', '10','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('670201B0B09','46', '王瑾', '库尔勒校区','23化学工艺1班' ,'27', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A17-1','725', '衡怡欣', '铁门关校区','24网络直播与运营1班（产业学院）' ,'52', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A06-1','359', '吴玉梅', '铁门关校区','23油气储运技术1班' ,'43', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A02-1','691', '谭翱翔', '库尔勒校区','24教学11班' ,'50', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B13','567', '石可心', '铁门关校区','24婴幼儿托育服务与管理1班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A06-1','418', '陈录琴', '铁门关校区','23现代农业经济管理1班,23现代农业经济管理2班' ,'38', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB06','586', '张丰', '铁门关校区','24学前教育1班' ,'31', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A11','25', '蒲丽', '铁门关校区','24音乐表演1班' ,'16', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510204B0B43','351', '苏光辉', '铁门关校区','23数字媒体技术1班' ,'38', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('560214B0B09','610', '董延芳', '铁门关校区','23网络直播与运营1班' ,'36', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A12','212', '向川', '铁门关校区','24党务工作2班' ,'43', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('770101B0B05','676', '李杰', '库尔勒校区','22保育1班' ,'29', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','4', '苏强', '铁门关校区','24软件技术1班' ,'44', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('500212B0A02','352', '孙生莲', '铁门关校区','24新能源汽车检测与维修技术1班,24新能源汽车检测与维修技术2班' ,'68', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510202B0B19','438', '郭雨婷', '铁门关校区','22网络技术1班' ,'46', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','734', '朱红羽', '铁门关校区','24网络直播与运营1班' ,'27', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570101KB0A07-1','339', '刘亚萍', '铁门关校区','23早期教育2班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B04','670', '李豪', '铁门关校区','24社会工作3班' ,'22', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB06','586', '张丰', '铁门关校区','24学前教育8班' ,'29', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('570102KBOB09','467', '于东晖', '铁门关校区','23学前教育6班' ,'33', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','496', '张桂香', '铁门关校区','23数字化设计与制造技术1班' ,'38', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A08-1','730', '冯艳霞', '库尔勒校区','24教学12班' ,'50', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0B02-1','659', '胡高芳', '铁门关校区','24智能焊接技术2班' ,'36', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('000000B0A08-1','729', '娜迪古丽·吾布里', '库尔勒校区','24教学10班' ,'50', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510102B0B06','698', '龚德滔', '铁门关校区','23物联网应用技术2班' ,'50', '1','18','6','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('510202B0B11','502', '安吉芳', '铁门关校区','23计算机网络技术4班' ,'41', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('460301B0B09','519', '李智军', '铁门关校区','22机电一体化1班,22机电一体化2班' ,'56', '1','18','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-3','464', '应俊平', '铁门关校区','23化工智能制造技术1班,23化工智能制造技术2班' ,'55', '1','4','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000B0A04-1','353', '孙燕华', '铁门关校区','24汽车检测与维修技术1班,24汽车检测与维修技术2班' ,'96', '14','17','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('100000GXA04','761', '孟凯凯', '铁门关校区','23学前教育11班' ,'34', '13','16','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B03','328', '靳忠宏', '铁门关校区','24学前教育6班' ,'32', '1','18','2','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('410119B0B01','554', '胡惠元', '铁门关校区','24现代农业经济管理1班' ,'40', '1','12','4','2');


INSERT INTO schedule (course_id, teacher_id, teacher_name, campus, classes,student_count,week_begin,week_end,week_times,consecutive_sections) VALUES ('520802B0B03','676', '李杰', '库尔勒校区','24学前教育1班（五年制）,24学前教育2班（五年制）,24幼儿保育1班' ,'56', '9','12','2','2');

INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '虚拟仿真实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A15','管理沟通技巧', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460110B0B01','机械识图与CAD绘制', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A07-1','0-3岁早期教育活动设计与指导-1', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A27','社会工作政策法规', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B01-1','幼儿教师口语-1', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B01','电气控制系统与可编程控制器', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B15','影视特效制作', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA05','学前教育学', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0C01','平面广告综合设计实训', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102B0B07','产品数字化设计与3D打印', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B01','文献检索', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210B0B11','汽车销售礼仪', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206ZXA01','汽车保险与理赔', '专业选修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0B02-1','美术基础与手工制作-1', '必修课', '美术教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A15','毕业综合训练', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB05','学前儿童健康教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0B01','舞蹈基础与婴幼儿律动', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0B07','仪器分析技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0B07','合唱与指挥', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA05','学前教育学', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-3','语文3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B06','幼儿美术', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107B0A03','C语言程序设计', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '虚拟仿真实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B10','软件测试技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB12','书写', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B03','汽车维修业务接待', '必修课', '普通教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B01','设计基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-3','体育与健康3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B05','汽车结构与拆装（二）', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0A02','汽车机械基础', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0B04','音乐基础', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B03-3','美术-3', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0B14','电气运行', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0B04','农产品电子商务', '必修课', '机房','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0A01','现代物流管理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B04','钢琴基础', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '公共教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B19','计算机网络基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB02','无线局域网组建（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B09','Linux操作系统管理', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0B16','毕业综合训练', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B15','3dsMAX动画制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B05','幼儿舞蹈', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206B0B04','汽车电控发动机维修', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('610214B0B12','网店经营与管理', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB05','学前儿童健康教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B04','钢琴基础', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104B0B09','数控加工工艺及编程', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102ZXB03','智能制造概论', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0A07','网络公共关系与舆情处理', '专业拓展课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B40','有机化工生产技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B01','电气控制系统与可编程控制器', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410303B0B03','动物营养与饲料', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B14','图形图像综合实训', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B01','文献检索', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0A06','整合营销', '专业拓展课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107B0B09','汽车车载网络技术', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104B0A05','机械制造基础', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B05','幼儿舞蹈', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0B07','社会工作概论', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '公共教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102ZXB01','产品质量检测（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB06','教师口语', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B15','影视特效制作', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('160200B0B06','舞蹈', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300ZXA02','机电产品安装与调试（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102ZXB03','物联网工程布线(限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0B06','人类行为与社会环境', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102B0B01','逆向设计', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0A01-1','基本乐理-1', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102B0B01','C语言程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A38','党内法规1', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B06','幼儿美术', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A15','石油化工工艺学', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206B0B04','汽车电控发动机维修', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B10','化工单元操作Ⅱ', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B11','直播电商实战', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '虚拟仿真实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300ZXA02','机电产品安装与调试（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0A03','幼儿教育学基础', '必修课', '蒙台梭立实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B07','新能源汽车维护与保养', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B37','多媒体制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B40','数字绘画', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A07','传感器与自动检测技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0A07','C语言程序设计与应用', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B11','汽车性能与检测', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B06','幼儿美术', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B09','Linux操作系统管理', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A02','有机化学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210ZXA01','新能源汽车（限选）', '专业选修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A09','化工设备基础', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0A02','货物学', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-3','语文3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0B01','基础会计', '必修课', '机房','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B02','图形图像处理', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B08','化工单元操作Ⅰ', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KZXA01','婴幼儿感统训练设计与指导', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A10','油气储存与销售', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B10','化工单元操作Ⅱ', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '公共基础课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530701ZXA01','客户关系管理（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('160200B0A06','0-3岁婴幼儿抚育与教育', '必修课', '幼儿保健室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B16','游戏引擎基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0C06','电工电子技能综合训练', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102B0C01','数控车床编程与操作', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B04','钢琴基础', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107B0C03','毕业设计', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A02','有机化学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B02','运动控制技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0B04-1','有机化学1', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0A04','外国音乐简史', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B02','C 语言程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('160200B0A07','学前儿童卫生保健', '必修课', '幼儿保健室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A03','哲学与人生', '公共基础课', '公共教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B01','C语言程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A20','社会福利', '专业拓展课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104B0A01','公差配合与测量', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206B0B09','汽车定期维护（二）', '必修课', '实训车间','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B09','婴幼儿游戏活动实施', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104B0A02','机械识图与绘制', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0B07-3','形体与舞蹈-3', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300B0B02','电气控制及 PLC 控制技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0A02','汽车机械基础', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B02','运动控制技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A01','中华优秀传统文化', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B10','自动生产线安装与调试', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB12','书写', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A02','有机化学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0B02','采购与供应链管理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B12','移动应用开发', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB02','无线局域网组建（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0C04','毕业设计', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-3','语文3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('610214ZXB04','RTMC企业管理沙盘模拟经营（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201ZXB04','民族器乐（任选）', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0A01','汽车机械制图', '必修课', '普通教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A15','管理沟通技巧', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA05','学前教育学', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B13','音乐基础', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0B01','基础会计', '必修课', '机房','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0A32','婴幼儿卫生与保健', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXA03','文案写作（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A14','婴幼儿学习与发展', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A34','行政秘书基础', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB06','教师口语', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB07','乐理视唱', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470209B0A08','化工自动化技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB07','乐理视唱', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-3','语文3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0A01','经济学基础', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '公共教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0B01','舞蹈基础与婴幼儿律动', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '公共基础课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0A03','新能源汽车概论', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A38','党内法规1', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A01','中华优秀传统文化', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B01','形体与舞蹈', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0A02','汽车机械基础', '必修课', '普通教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206ZXB03','汽车涂装技术', '专业选修课', '实训车间','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A09','化工设备基础', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212ZXA04','汽车配件及营销', '专业选修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A38','党内法规1', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210B0B05','汽车结构与拆装（二）', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B08','中小型网络构建与管理', '必修课', '普通教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0A01','现代物流管理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104B0C05','数控加工技能训练', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A03','哲学与人生', '公共基础课', '公共教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A44','社会心理学', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0C01','平面广告综合设计实训', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300B0B04','照明线路安装与检修', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A24','个案工作', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A01','基础化学', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B04','钢琴基础', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102B0A05','机械设计基础', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0A03','汽车文化', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0A01','现代物流管理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXA03','文案写作（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A05','液压与气压传动', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410117B0B04','土壤肥料学', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB07','乐理视唱', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B03','C语言程序设计基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('610214B0A04','管理学基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0C02','室内设计综合设计实训', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B10-1','物理化学1', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A31','婴幼儿行为观察与记录', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460110B0B11','金属材料焊接', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B03','数据库基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '公共教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0A02','货物学', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0B14','电气运行', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A12','婴幼儿家庭教育教育与指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B13','HTML5+JavaScript程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A42','公共关系实务', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0B08','会计电算化', '必修课', '机房','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A09','化工设备基础', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B15','3dsMAX动画制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0A32','婴幼儿卫生与保健', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B03','数据库基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A01','电工电子技术基础', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A07','传感器与自动检测技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A18','党务工作实务', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A13','婴幼儿情感与社会发展', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B15','直播电商与案例分析', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410117B0B02','棉花加工', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A01','无机化学及分析', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B01','电气控制系统与可编程控制器', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A42','公共关系实务', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210B0B04','汽车营销', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0A08','电路原理', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0A01','经济学基础', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0A05','中外音乐名作音乐赏析', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B15','影视特效制作', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A31','婴幼儿行为观察与记录', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB05','学前儿童健康教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '公共教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A07','传感器与自动检测技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXB10','网页设计与制作（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B16','游戏引擎基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206B0B01','汽车构造及实训', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B11','后期合成', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA05','学前教育学', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300ZXA08','模具数字化设计与制造技术（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '公共教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0A07','C语言程序设计与应用', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0A01','无机化学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410303B0B02','动物药理学', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0B03','声乐演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0B02-2','无机化学2', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203ZXB06','Unity游戏开发（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104B0A02','机械识图与绘制', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB01','HTML5+JavaScript程序设计（任选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B09','婴幼儿游戏活动实施', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B08','化工单元操作Ⅰ', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102ZXA01','创新创业教育-专业方向（任选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXB01','插画设计（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0A02','货物学', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0B04','农产品电子商务', '必修课', '机房','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0B09','化工分析基础', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B13','音乐基础', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB06','教师口语', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B43','游戏美术基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B09','电商直播营销', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '公共教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B05','唱歌与幼儿歌曲弹唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0A02','汽车机械基础', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B19','Python程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A07-1','0-3岁早期教育活动设计与指导-1', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '公共基础课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB06','教师口语', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A01','中华优秀传统文化', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102B0B06','传感器应用技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B11','网络运行与维护', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B09','工业机器人', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0B01','基础会计', '必修课', '机房','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0A01','汽车机械制图', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0A08','电路原理', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A12','婴幼儿家庭教育教育与指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB06','教师口语', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B03','网店装修与美工', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A05','液压与气压传动', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B05','数据库应用基础', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B06','幼儿美术', '必修课', '公共教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B08','汽车车载网络技术', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0A01','经济学基础', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410117B0B04','土壤肥料学', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B13','汽车故障诊断技术', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102B0B16','无线组网技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A02','工程制图', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB07','乐理视唱', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B31','婴幼儿活动保育', '公共必修课', '蒙台梭立实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B02','图形图像处理', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '公共教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A31','婴幼儿行为观察与记录', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A07','传感器与自动检测技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107ZXA05','汽车鉴定与评估（限选）', '专业选修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0A01','经济学基础', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B18','计算机组成原理', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B03-3','美术-3', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206B0B03','汽车发动机构造与维修', '必修课', '普通教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('610214ZXA07','经济学基础（任选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B11','网络运行与维护', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0B08','会计电算化', '必修课', '机房','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B04','钢琴基础', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306ZXB06','智能应用技术（任选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0A07','网络公共关系与舆情处理', '专业拓展课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '公共基础课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A07','储运仪表及自动化', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0A09','化工制图', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A12','油气储运安全技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B08','路由交换技术Ⅱ', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A02','有机化学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A24','个案工作', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-3','语文3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B04-1','钢琴基础-1', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0A02','经济法基础', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B03','汽车电路分析与检测', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B03','计算机网络基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B04','汽车发动机构造与维修', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0A01','无机化学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102B0A03','物联网概论', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-3','语文3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B39','化工生产DSC操作', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0C17','认识实习', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA04','学前儿童卫生与保育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A03','哲学与人生', '公共基础课', '公共教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B06','化工安全技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B06','汽车底盘构造与维修', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211ZXA01','新能源汽车（限选）', '专业选修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0B15','合成氨工艺及设备', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107B0A03','C语言程序设计', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A05','液压与气压传动', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B08','路由交换技术Ⅱ', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA04','学前儿童卫生与保育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '公共教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0A01','无机化学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201ZXB04','民族器乐（任选）', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300ZXA07','维修电工（初级）（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-3','体育与健康3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210B0B11','汽车销售礼仪', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXB01','插画设计（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530701B0A01','电子商务基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0B07','工程热力学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0A02','经济法基础', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A12','婴幼儿家庭教育教育与指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B09','Premiere影视制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0B02-1','美术基础与手工制作-1', '必修课', '美术教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B16','游戏引擎基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A36','社会工作行政', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB05','学前儿童健康教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104B0B03','机械CAD及CAM应用', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301ZXB01','单片机应用技术（限选）', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B18','计算机组成原理', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('610214B0B13','商务数据分析与应用', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B07','化工仪表及自动化', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102B0A03','电工电子技术基础', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206ZXB03','汽车涂装技术', '专业选修课', '实训车间','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107B0B10','汽车综合检测与诊断技术', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B40','数字绘画', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B06','Coreldraw平面设计', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211ZXA04','汽车配件及营销（限选）', '专业选修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B43','游戏美术基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0B05','农业技术推广', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A01','中华优秀传统文化', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B03','网店装修与美工', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410117B0B02','棉花加工', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B07','新能源汽车维护与保养', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410303B0B01','动物解剖生理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0C03','影视后期特效综合设计实训', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA04','学前儿童卫生与保育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410303B0B01','动物解剖生理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211ZXA04','汽车配件及营销（限选）', '专业选修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB06','教师口语', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '汽修实训室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0B10','电机与拖动', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206B0B07','汽车空调维修', '必修课', '普通教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410117ZXB01','农学概论', '专业选修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470209B0A04','基础化学', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0C02','Web前端综合实战', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0B01','认知实习', '必修课', '实训车间','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A01','基础化学', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA05','学前教育学', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A02','机械识图与CAD绘制', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '公共教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0A02','婴幼儿生理基础', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B14','图形图像综合实训', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A45','人力资源管理', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0A06','整合营销', '专业拓展课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '公共教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B13','汽车故障诊断技术', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470209B0A07','化工反应过程及设备', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104ZXB03','工业机器人编程', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB02','无线局域网组建（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B03','数据库基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104B0A03','电工电子技术基础', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470209B0A02','化工制图', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B08','化工单元操作Ⅰ', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107B0A02','汽车机械基础', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102B0A02','机械制图与CAD', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107B0B11','智能网联汽车技术', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A10','油气储存与销售', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B01','C语言程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410303B0B11','宠物疾病防治', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B11','汽车性能与检测', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B02','C 语言程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0A02','市场营销', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A45','人力资源管理', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B05','数据库应用基础', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B15','直播电商与案例分析', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXB05','数据结构（任选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A15','管理沟通技巧', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B03','计算机网络基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A03','哲学与人生', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '公共教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '虚拟仿真实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0B02','器乐演奏（钢琴）', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B01','汽车结构与拆装', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B41','化工安全生产技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-3','体育与健康3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0B07-3','形体与舞蹈-3', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A03','哲学与人生', '公共基础课', '公共教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102B0A03','物联网概论', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0B04','音乐基础', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B01','文献检索', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B06','Coreldraw平面设计', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B03','数据库基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102B0B03','产品优化设计', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B08','化工单元操作Ⅰ', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460110ZXB04','机器人焊接技术', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B08','化工单元操作Ⅰ', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0A01','现代物流管理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A31','婴幼儿行为观察与记录', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0A01','汽车机械制图', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B04','新能源汽车底盘技术与检修', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206B0A04','汽车电工电子基础', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0A06','整合营销', '专业拓展课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B06','幼儿美术', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B09','新能源汽车综合故障诊断', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A01','无机化学及分析', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B05','唱歌与幼儿歌曲弹唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A07-1','0-3岁早期教育活动设计与指导-1', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB06','教师口语', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B02','运动控制技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102ZXB02','物联网工程制图（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B04','钢琴基础', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0C03','影视后期特效综合设计实训', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0A32','婴幼儿卫生与保健', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A47','学校社会工作', '专业选修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210ZXA04','汽车发动机构造与维修（限选）', '专业选修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B03','汽车维修业务接待', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B08','化工单元操作Ⅰ', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410307B0B08','牛羊病防治', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB01','HTML5+JavaScript程序设计（任选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A32','会议管理实务', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104ZXB04','智能制造技术基础', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410117B0B05','机械制图', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214ZXA01','经济学（任选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0A09','化工制图', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460110B0B06','压焊方法及设备', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0C07','电子设计与实践', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B07','网页设计与制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B05','数字绘画（CorelDRAW X5）', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A09','化工设备基础', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0A08','管理学基础与实务', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B08','中小型网络构建与管理', '必修课', '普通教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0B09','化工分析基础', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300B0B08','焊接技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '公共基础课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B09','汽车车载网络技术', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0B04-2','有机化学2', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B01','形体与舞蹈', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102B0A04','机械制造基础', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('160200B0B02','幼儿教师口语', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A27','社会工作政策法规', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102B0A02','机械制图与CAD', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B05','幼儿舞蹈', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210B0B10','汽车配件及营销', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('160200B0A07','学前儿童卫生保健', '必修课', '幼儿保健室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0B01','视唱练耳', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B03','数据库基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0A01','电子商务概论', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B16','化工生产过程操作与控制', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0A10','化工生产技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B11','幼儿园教育活动设计与指导', '必修课', '蒙台梭立实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0A03','幼儿教育学基础', '必修课', '蒙台梭立实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0C05','1+X机械产品三维模型设计（中级）', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B03','数据库基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0C17','认识实习', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-3','体育与健康3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB05','学前儿童健康教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B15','3dsMAX动画制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KBOC13','认识实习', '必修课', '公共教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-3','体育与健康3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A01','中华优秀传统文化', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530701B0A01','电子商务基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('610214ZXA02','电子商务安全（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B06','Coreldraw平面设计', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXB10','网页设计与制作（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B16','游戏引擎基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B37','多媒体制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A07','传感器与自动检测技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB12','书写', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470209B0A08','化工自动化技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A14','婴幼儿学习与发展', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300B0B02','电气控制及 PLC 控制技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B07','新能源汽车维护与保养', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410117B0B05','机械制图', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB05','学前儿童健康教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB07','乐理视唱', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107ZXA04','汽车配件及营销（限选）', '专业选修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A18','党务工作实务', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A12','油气储运安全技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460110B0B01','机械识图与CAD绘制', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0B03','声乐演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A01','电工电子技术基础', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0A07','网络公共关系与舆情处理', '专业拓展课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-3','语文3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104B0B07','自动控制原理与系统', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0A05','典型工业原料与产品分析', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102B0B10','物联网项目规划与实施', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B02','C 语言程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B05','数字绘画（CorelDRAW X5）', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B03','计算机网络基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A05','液压与气压传动', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460110B0B13','焊接结构与生产', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210B0A02','汽车机械基础', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0B13','电气控制与PLC应用技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A34','行政秘书基础', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0B06','人类行为与社会环境', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B06','化工安全技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B19','Python程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0A01','经济学基础', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B04','市场调研与预测', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B04','汽车发动机构造与维修', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '公共基础课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A13','婴幼儿情感与社会发展', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214ZXB04','内容策划与编辑（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B01','形体与舞蹈', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A44','社会心理学', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB04','网络存储技术（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0B01','基础会计', '必修课', '机房','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B11','汽车性能与检测', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0B01','物流信息管理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0A02','经济法基础', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B05','数据库应用基础', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B05','唱歌与幼儿歌曲弹唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300ZXA08','模具数字化设计与制造技术（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '普通教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410117B0B05','机械制图', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0A02','货物学', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB05','学前儿童健康教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B40','数字绘画', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXA02','广告文案写作（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B13-1','化工单元操作1', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0A01','无机化学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A42','公共关系实务', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0B07','合唱与指挥', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300B0B08','焊接技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB05','操作系统（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA04','学前儿童卫生与保育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B16','游戏引擎基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0B13','电气控制与PLC应用技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA05','学前教育学', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0B16','毕业综合训练', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '公共基础课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206B0B09','汽车定期维护（二）', '必修课', '实训车间','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0B06','化工安全与清洁生产', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0A05','典型工业原料与产品分析', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206ZXB02','汽车钣金技术', '专业选修课', '实训车间','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A03','哲学与人生', '公共基础课', '公共教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A01','中华优秀传统文化', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B13','汽车故障诊断技术', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B31','婴幼儿活动保育', '公共必修课', '蒙台梭立实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B13','汽车故障诊断技术', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B14','图形图像综合实训', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B09','Linux操作系统管理', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0B02','器乐演奏（钢琴）', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B39','化工生产DSC操作', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA04','学前儿童卫生与保育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0B02','器乐演奏（钢琴）', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B14','图形图像综合实训', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB02','无线局域网组建（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0B02','采购与供应链管理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B08','路由交换技术Ⅱ', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470209B0A02','化工制图', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104B0B12','机械零件数字化设计', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107B0B02','汽车维护与保养', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B19','Python程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '公共基础课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB07','乐理视唱', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410303B0B02','动物药理学', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0A01','现代物流管理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107B0A01','汽车机械制图', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201ZXB01','认知实习', '专业选修课', '网络实训室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '公共教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXB10','网页设计与制作（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A03','哲学与人生', '公共基础课', '公共教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0C02','室内设计综合设计实训', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '公共基础课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B22','幼儿健康照护', '公共必修课', '幼儿保健室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A45','人力资源管理', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0B05','农业技术推广', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '公共教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B09','Premiere影视制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0B07','社会工作概论', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206B0B03','汽车发动机构造与维修', '必修课', '普通教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXA02','广告文案写作（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802ZXA34','亲子活动指导设计与组织', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B03','数据库基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('160200B0B02','幼儿教师口语', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B08','路由交换技术Ⅱ', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B15','嵌入式系统及应用', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0B01','认知实习', '必修课', '普通教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0A01','基础和声', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300B0B03','电力拖动控制与技能训练', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0A16','化工企业企业管理', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB05','学前儿童健康教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B16','多媒体制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102ZXB02','物联网工程制图（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A02','有机化学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B19','Python程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211ZXA05','汽车鉴定与评估（任选）', '专业选修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A02','有机化学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B02','运动控制技术', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B22','幼儿健康照护', '公共必修课', '幼儿保健室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0C05','1+X机械产品三维模型设计（中级）', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0B04','农产品电子商务', '必修课', '机房','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0B07','仪器分析技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB04','网络存储技术（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530701ZXA01','客户关系管理（限选）', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0C05','1+X机械产品三维模型设计（中级）', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0B01','物流信息管理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300B0B03','电力拖动控制与技能训练', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B22','幼儿健康照护', '公共必修课', '幼儿保健室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B01','电气控制系统与可编程控制器', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A07','储运仪表及自动化', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300B0B04','照明线路安装与检修', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB06','教师口语', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '虚拟仿真实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A43','社区工作', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0B10','电机与拖动', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB05','操作系统（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('610214B0B14','互联网产品开发', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KZXA01','婴幼儿感统训练设计与指导', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B09','Premiere影视制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210B0B03','汽车维修业务接待', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B03','数据库基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA05','学前教育学', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB05','操作系统（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530701B0A01','电子商务基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KZXA01','婴幼儿感统训练设计与指导', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B01','摄影基础与构图', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460110BOA03','工程力学', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('610214B0B13','商务数据分析与应用', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KZXA01','婴幼儿感统训练设计与指导', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410307B0B06','家禽生产技术', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104ZXB04','智能制造技术基础', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB04','网络存储技术（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107B0B04','新能源汽车技术', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0A02','市场营销', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210B0B09','市场营销学', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212ZXA01','汽车维修业务接待', '专业选修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B41','化工安全生产技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA05','学前教育学', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B05','唱歌与幼儿歌曲弹唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B31','婴幼儿活动保育', '公共必修课', '蒙台梭立实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B12','移动应用开发', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0B08','化工单元操作', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '公共基础课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB04','网络存储技术（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B04','钢琴基础', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B15','直播电商与案例分析', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('610214B0B16','零售基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212ZXA05','汽车鉴定与评估', '专业选修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B13','HTML5+JavaScript程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B01','形体与舞蹈', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460110ZXB01','焊接生产管理（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470209B0A04','基础化学', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B07','化工仪表及自动化', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA04','学前儿童卫生与保育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0C04','毕业设计', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0C05','1+X机械产品三维模型设计（中级）', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B05','汽车结构与拆装（二）', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206B0B09','汽车定期维护（二）', '必修课', '实训车间','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A15','毕业综合训练', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('160200B0A06','0-3岁婴幼儿抚育与教育', '必修课', '幼儿保健室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('051300ZXA07','维修电工（初级）（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A01','中华优秀传统文化', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102B0B01','C语言程序设计', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0A01','现代物流管理', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410307B0B07','畜牧场规划与设计', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '公共基础课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301ZXB01','单片机应用技术（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA04','学前儿童卫生与保育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0A02','经济法基础', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510107B0B05','汽车维修业务接待', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA04','学前儿童卫生与保育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB36','教师资格证综合训练', '专业拓展课', '虚拟仿真实训室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-3','语文3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0A03','中国传统音乐', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB07','乐理视唱', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B16','化工生产过程操作与控制', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '实训车间','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B03','美术', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206ZXB02','汽车钣金技术', '专业选修课', '实训车间','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B03','幼儿歌曲演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460110ZXB07','焊接中级工（实操）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B11','网络运行与维护', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0B14','化工生产过程操作与控制', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B03','汽车电路分析与检测', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B08','汽车车载网络技术', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0A05','液压与气压传动', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0A15','石油化工工艺学', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '实训车间','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0B01','舞蹈基础与婴幼儿律动', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301ZXB01','单片机应用技术（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500211B0B05','汽车结构与拆装（二）', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB07','乐理视唱', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXA03','文案写作（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410307B0B07','畜牧场规划与设计', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470209B0A07','化工反应过程及设备', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0B07','工程热力学', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301ZXB01','单片机应用技术（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102B0B09','数控铣床编程与操作', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B04','钢琴基础', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0B04-1','钢琴基础-1', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B05','唱歌与幼儿歌曲弹唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210B0A01','汽车机械制图', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A02','思想道德与法治', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A01','中华优秀传统文化', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('160200B0A06','0-3岁婴幼儿抚育与教育', '必修课', '幼儿保健室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102B0B09','无线传感网应用技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301ZXB01','单片机应用技术（限选）', '专业选修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470201B0B40','有机化工生产技术', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B16','多媒体制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B09','Linux操作系统管理', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('470208B0B08','化工单元操作', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410303B0B03','动物营养与饲料', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B11','直播电商实战', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A06-1','习近平新时代中国特色社会主义思想概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B09','电商直播营销', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A31','婴幼儿行为观察与记录', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203ZXA01','创新创业教育-专业方向（任选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A14','婴幼儿学习与发展', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214ZXB04','内容策划与编辑（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204ZXA01','创新创业教育-专业方向（任选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '公共选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A09-1','英语1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXA01','创新创业教育-专业方向（任选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460102B0A01','公差配合与测量', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210B0A03','汽车文化', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B11','直播电商实战', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460306B0C07','电子设计与实践', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB11','美术与幼儿美术创作', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB09','钢琴与幼儿歌曲伴奏', '必修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B07','维修电工技能训练', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201ZXB01','音乐教学法（限选）', '专业选修课', '琴房','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KZXB04','教玩具制作', '专业选修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0A05','中外音乐名作音乐赏析', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510102B0B06','传感器应用技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B11','后期合成', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0B07','化工仪表及自动化', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B01','汽车结构与拆装', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A01','中国特色社会主义', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('560214B0B04','市场调研与预测', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510204B0B43','游戏美术基础', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B04','信息技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KZXA01','婴幼儿感统训练设计与指导', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('700206B0B07','汽车空调维修', '必修课', '普通教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0B13','小组工作', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A12','心理健康教育', '公共基础课', '多媒体教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202B0B11','网络运行与维护', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000GXA04','公共艺术', '专业选修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410117ZXB01','农学概论', '专业选修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203ZXA01','创新创业教育-专业方向（任选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460110B0A04','电工基础', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460104B0C04','1+X机械产品三维设计', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A34','行政秘书基础', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-1','形势与政策1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B15','3dsMAX动画制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('530802B0B04','农产品电子商务', '必修课', '机房','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('590101B0A32','会议管理实务', '必修课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0A02','婴幼儿生理基础', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('520802B0A32','婴幼儿卫生与保健', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410117B0B05','机械制图', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510202ZXB05','操作系统（限选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A17-1','普通话正音1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('670201B0B06','化工安全与清洁生产', '必修课', '多媒体教室','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A10','高等数学', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410119B0A01','经济学基础', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500210B0C04','毕业设计', '必修课', '多媒体教室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-3','体育与健康3', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A02-1','心理健康与职业生涯1', '公共必修课', '公共教室','心理教学部' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203ZXB02','计算机网络基础（任选）', '专业选修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('420401B0A02','工程制图', '必修课', '实训车间','化学与材料工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0B02-1','美术基础与手工制作-1', '必修课', '美术教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB10','舞蹈与儿童舞蹈创编', '必修课', '舞蹈教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570101KB0A13','婴幼儿情感与社会发展', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('550201B0B03','声乐演唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('500212B0B03','汽车电路分析与检测', '必修课', '汽修实训室','汽车与智能交通学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('460301B0B01','电气控制系统与可编程控制器', '必修课', '多媒体教室','机械电气工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('770101B0B05','唱歌与幼儿歌曲弹唱', '必修课', '声乐教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A16-1','中华民族共同体概论1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A07-1','语文1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410307B0B08','牛羊病防治', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A11','大学语文', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOB03','学前儿童社会教育', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A04-3','形势与政策3', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('710201B0B07','网页设计与制作', '必修课', '机房','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A06-1','中国历史1', '公共基础课', '多媒体教室','马克思主义学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410303B0B11','宠物疾病防治', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('00000GXA02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0A09','大学英语', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('000000B0A08-1','数学1', '公共基础课', '多媒体教室','公共基础学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('510203B0B10','软件测试技术', '必修课', '多媒体教室','信息智能工程学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('410307B0B06','家禽生产技术', '必修课', '多媒体教室','现代农业学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('570102KBOA015','学前儿童科学教育活动指导', '必修课', '多媒体教室','教育艺术学院' );


INSERT INTO course (course_id, course_name, course_type, room_type, department) VALUES ('100000B0B02-1','体育与健康1', '公共基础课', '多媒体教室','公共基础学院' );
