/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019.03.17 ÐÇÆÚÈÕ 14:51:10                      */
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
   deptno               varchar(32) not null,
   name                 varchar(64) not null,
   primary key (deptno)
);

/*==============================================================*/
/* Table: emp                                                   */
/*==============================================================*/
create table emp
(
   empno                varchar(32) not null,
   name                 varchar(64) not null,
   birthday             date not null,
   sex                  varchar(2) not null,
   mobilephone          varchar(11) not null,
   deptno               varchar(32) not null,
   password             varchar(1024) not null,
   primary key (empno)
);

/*==============================================================*/
/* Table: job                                                   */
/*==============================================================*/
create table job
(
   jobno                varchar(32) not null,
   name                 varchar(64) not null,
   level                varchar(2) not null,
   deptno               varchar(32) not null,
   primary key (jobno)
);

/*==============================================================*/
/* Table: menu                                                  */
/*==============================================================*/
create table menu
(
   menuno               varchar(32) not null,
   name                 varchar(64) not null,
   url                  varchar(1024) not null,
   parentmenurulesno    varchar(64),
   primary key (menuno)
);

/*==============================================================*/
/* Table: menu_rules                                            */
/*==============================================================*/
create table menu_rules
(
   jobno                varchar(32) not null,
   menuno               varchar(32) not null,
   primary key (jobno, menuno)
);

/*==============================================================*/
/* Table: operations                                            */
/*==============================================================*/
create table operations
(
   operationsno         varchar(32) not null,
   name                 varchar(64) not null,
   code                 varchar(32) not null,
   menuno               varchar(32) not null,
   primary key (operationsno)
);

/*==============================================================*/
/* Table: operations_rules                                      */
/*==============================================================*/
create table operations_rules
(
   jobno                varchar(32) not null,
   operationsno         varchar(32) not null,
   primary key (jobno, operationsno)
);

