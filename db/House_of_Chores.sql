CREATE DATABASE chores_db;
USE chores_db;

CREATE TABLE tasks
(
	task_id int NOT NULL AUTO_INCREMENT,
	taskname varchar(255) NOT NULL,
    taskhrs Float(3,2),
	PRIMARY KEY (task_id)
);


CREATE TABLE user
(
	user_id int NOT NULL auto_increment,
    username varchar(255) NOT NULL,
    PRIMARY KEY (user_id)
);


CREATE TABLE task_pref_map
(
	pref_id int NOT NULL AUTO_INCREMENT,
    task_id int,
    user_id int,
    ranking int,
    PRIMARY KEY (pref_id)
    
);


CREATE TABLE task_user_map
(
	tumap_id int NOT NULL AUTO_INCREMENT,
    task_id int,
    user_id int,
    sched_id int,
	PRIMARY KEY (tumap_id)
);



CREATE TABLE task_user_sched
(
	tu_sched_id int NOT NULL AUTO_INCREMENT,
    sched_day varchar(255) NOT NULL,
    PRIMARY KEY (tu_sched_id)
);




INSERT INTO tasks (taskname, taskhrs) VALUES ('Wash Dishes', 0.5);
INSERT INTO tasks (taskname, taskhrs) VALUES ('Vacuum', 1.0);
INSERT INTO tasks (taskname, taskhrs) VALUES ('Take out Garbage', 0.2);
INSERT INTO tasks (taskname, taskhrs) VALUES ('Clean Bathrooms',1.5);
INSERT INTO tasks (taskname, taskhrs) VALUES ('Cook', 1.0);
INSERT INTO tasks (taskname, taskhrs) VALUES ('Buy Grocery', 2.0);
INSERT INTO tasks (taskname, taskhrs) VALUES ('Do Laundry', 2.3);
INSERT INTO tasks (taskname, taskhrs) VALUES ('Mow Lawn', 2.0);
INSERT INTO tasks (taskname, taskhrs) VALUES ('Trim Hedges', 2.1);


INSERT INTO task_user_sched (sched_day) VALUES ('Sunday');
INSERT INTO task_user_sched (sched_day) VALUES ('Monday');
INSERT INTO task_user_sched (sched_day) VALUES ('Tuesday');
INSERT INTO task_user_sched (sched_day) VALUES ('Wednesday');
INSERT INTO task_user_sched (sched_day) VALUES ('Thursday');
INSERT INTO task_user_sched (sched_day) VALUES ('Friday');
INSERT INTO task_user_sched (sched_day) VALUES ('Saturday');
INSERT INTO task_user_sched (sched_day) VALUES ('Daily');


INSERT INTO chores_db.user (username) VALUES ('Gerald Porter');
INSERT INTO chores_db.user (username) VALUES ('David Cresson');
INSERT INTO chores_db.user (username) VALUES ('Evgheni Pascalov');
INSERT INTO chores_db.user (username) VALUES ('Matt McIntyre');



SELECT * from tasks;

SELECT * from task_user_sched;