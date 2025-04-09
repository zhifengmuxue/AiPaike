CREATE TABLE schedule_result (
                                 week_day INT ,
                                 slot_start INT ,
                                 slot_end INT ,
                                 week_begin INT ,
                                 week_end INT ,
                                 course_name VARCHAR(100) ,
                                 teacher_name VARCHAR(50) ,
                                 classroom_name VARCHAR(50) ,
                                 room_building VARCHAR(50) ,
                                 room_floor INT,
                                 class_name VARCHAR(50)



);
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