/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019.03.18 星期一 20:00:06                      */
/*==============================================================*/


drop table if exists dept;

drop table if exists emp;

drop table if exists job;

drop table if exists menu;

drop table if exists menu_rules;

drop table if exists operations;

drop table if exists operations_rules;

/*==============================================================*/
/* Table: dept                                                  */
/*==============================================================*/
create table dept
(
   dept_no              varchar(32) not null,
   name                 varchar(64) not null,
   primary key (dept_no)
);

/*==============================================================*/
/* Table: emp                                                   */
/*==============================================================*/
create table emp
(
   emp_no               varchar(32) not null,
   name                 varchar(64) not null,
   birthday             date not null,
   sex                  varchar(2) not null,
   mobile_phone         varchar(11) not null,
   dept_no              varchar(32) not null,
   password             varchar(1024) not null,
   primary key (emp_no)
);

/*==============================================================*/
/* Table: job                                                   */
/*==============================================================*/
create table job
(
   job_no               varchar(32) not null,
   name                 varchar(64) not null,
   level                varchar(2) not null,
   dept_no              varchar(32) not null,
   primary key (job_no)
);

/*==============================================================*/
/* Table: menu                                                  */
/*==============================================================*/
create table menu
(
   menu_no              varchar(32) not null,
   name                 varchar(64) not null,
   url                  varchar(1024) not null,
   parent_menu_rulesno  varchar(64),
   open_rules           char(10),
   primary key (menu_no)
);

/*==============================================================*/
/* Table: menu_rules                                            */
/*==============================================================*/
create table menu_rules
(
   job_no               varchar(32) not null,
   menu_no              varchar(32) not null,
   primary key (job_no, menu_no)
);

/*==============================================================*/
/* Table: operations                                            */
/*==============================================================*/
create table operations
(
   operations_no        varchar(32) not null,
   name                 varchar(64) not null,
   code                 varchar(32) not null,
   menu_no              varchar(32) not null,
   primary key (operations_no)
);

/*==============================================================*/
/* Table: operations_rules                                      */
/*==============================================================*/
create table operations_rules
(
   job_no               varchar(32) not null,
   operations_no        varchar(32) not null,
   primary key (job_no, operations_no)
);

