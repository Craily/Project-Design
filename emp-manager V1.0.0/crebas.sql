/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019.06.01 ÐÇÆÚÁù 23:13:49                      */
/*==============================================================*/


drop table if exists dept;

drop table if exists emp;

drop table if exists job;

drop table if exists job_menu;

drop table if exists menu;

drop table if exists operations;

/*==============================================================*/
/* Table: dept                                                  */
/*==============================================================*/
create table dept
(
   dept_no              varchar(32) not null,
   name                 varchar(64) not null,
   address              varchar(1028),
   primary key (dept_no)
);

/*==============================================================*/
/* Table: emp                                                   */
/*==============================================================*/
create table emp
(
   emp_no               varchar(32) not null,
   name                 varchar(64) not null,
   join_time            date not null,
   sex                  varchar(2) not null,
   mobile_phone         varchar(11) not null,
   dept_no              varchar(32) not null,
   login_name           varchar(32) not null,
   password             varchar(1024) not null,
   job_no               varchar(32) not null,
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
   primary key (job_no)
);

/*==============================================================*/
/* Table: job_menu                                              */
/*==============================================================*/
create table job_menu
(
   job_no               varchar(32) not null,
   menu_no              varchar(32) not null,
   primary key (job_no, menu_no)
);

/*==============================================================*/
/* Table: menu                                                  */
/*==============================================================*/
create table menu
(
   menu_no              varchar(32) not null,
   name                 varchar(64) not null,
   url                  varchar(1024) not null,
   parent_menu_no       varchar(32),
   open_all_operations  varchar(2) not null,
   primary key (menu_no)
);

/*==============================================================*/
/* Table: operations                                            */
/*==============================================================*/
create table operations
(
   operations_no        varchar(32) not null,
   job_no               varchar(32) not null,
   menu_no              varchar(32) not null,
   operations_name      varchar(32) not null,
   primary key (operations_no)
);

