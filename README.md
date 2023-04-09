# JavaWeb-Experiment4--JDBC-database-connection-and-Dao-design-pattern
对课堂案例——学生信息管理系统进行完善，实现对学生信息的增、删、改、查功能，要求采用DAO设计模式。

数据库脚本如下：

```
create table students(
studentId varchar(20) primary key,
studentName varchar(30),
studentPwd varchar(20),
sex varchar(2),
classId int(8)
);


insert into  students values("2018110116","谢亚飞","123","男",10201842);
insert into  students values("2018130173","罗维林","123","女",10201841);
insert into  students values("2018110143","苏梦雪","123","女",10201842);
insert into  students values("2018110177","谭笑生","123","男",10201841);


create table classes(
classId int(8) primary key,
className varchar(40)
);


insert into classes values(10201841,"智科1811");
insert into classes values(10201842,"智科1812");
insert into classes values(10201821,"软件1811");
insert into classes values(10201822,"软件1812");
insert into classes values(10201811,"计算1811");
insert into classes values(10201822,"软件1812");
insert into classes values(10201831,"网络1811");
insert into classes values(10201832,"网络1812");
```
