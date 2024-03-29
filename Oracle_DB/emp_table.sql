DROP TABLE EMP;
CREATE TABLE EMP(
    EMP_ID NUMBER(6) PRIMARY KEY,
    EMP_NAME VARCHAR2(20) NOT NULL,
    JOB VARCHAR2(35) NOT NULL,
    MGR_ID NUMBER(6),
    HIRE_DATE DATE NOT NULL,
    SALARY NUMBER(7,2),
    COMM_PCT NUMBER(2,2),
    DEPT_NAME VARCHAR2(30)
);


Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (100,'Steven','AD_PRES',null,to_date('03/06/17','RR/MM/DD'),24000,null,'Executive');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (101,'Neena','AD_VP',100,to_date('05/09/21','RR/MM/DD'),17000,null,'Executive');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (102,'Lex','AD_VP',100,to_date('01/01/13','RR/MM/DD'),17000,null,'Executive');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (103,'Alexander','IT_PROG',102,to_date('06/01/03','RR/MM/DD'),9000,null,'IT');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (104,'Bruce','IT_PROG',103,to_date('07/05/21','RR/MM/DD'),6000,null,'IT');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (105,'David','IT_PROG',103,to_date('05/06/25','RR/MM/DD'),4800,null,'IT');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (106,'Valli','IT_PROG',103,to_date('06/02/05','RR/MM/DD'),4800,null,'IT');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (107,'Diana','IT_PROG',103,to_date('07/02/07','RR/MM/DD'),4200,null,'IT');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (108,'Nancy','FI_MGR',101,to_date('02/08/17','RR/MM/DD'),12008,null,'Finance');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (109,'Daniel','FI_ACCOUNT',108,to_date('02/08/16','RR/MM/DD'),9000,null,'Finance');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (110,'John','FI_ACCOUNT',108,to_date('05/09/28','RR/MM/DD'),8200,null,'Finance');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (111,'Ismael','FI_ACCOUNT',108,to_date('05/09/30','RR/MM/DD'),7700,null,'Finance');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (112,'Jose Manuel','FI_ACCOUNT',108,to_date('06/03/07','RR/MM/DD'),7800,null,'Finance');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (113,'Luis','FI_ACCOUNT',108,to_date('07/12/07','RR/MM/DD'),6900,null,'Finance');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (114,'Den','PU_MAN',100,to_date('02/12/07','RR/MM/DD'),11000,null,'Purchasing');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (115,'Alexander','PU_MAN',100,to_date('03/05/18','RR/MM/DD'),7100,null,'Purchasing');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (116,'Shelli','PU_CLERK',114,to_date('05/12/24','RR/MM/DD'),2900,null,'Purchasing');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (117,'Sigal','PU_CLERK',115,to_date('05/07/24','RR/MM/DD'),2800,null,'Purchasing');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (118,'Guy','PU_CLERK',115,to_date('06/11/15','RR/MM/DD'),2600,null,'Purchasing');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (119,'Karen','PU_CLERK',114,to_date('07/08/10','RR/MM/DD'),2500,null,'Purchasing');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (120,'Matthew','ST_MAN',100,to_date('04/07/18','RR/MM/DD'),8000,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (121,'Adam','ST_MAN',100,to_date('05/04/10','RR/MM/DD'),8200,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (122,'Payam','ST_MAN',100,to_date('03/05/01','RR/MM/DD'),7900,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (123,'Shanta','ST_MAN',100,to_date('05/10/10','RR/MM/DD'),6500,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (124,'Kevin','ST_MAN',100,to_date('07/11/16','RR/MM/DD'),5800,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (125,'Julia','ST_CLERK',120,to_date('05/07/16','RR/MM/DD'),3200,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (126,'Irene','ST_CLERK',120,to_date('06/09/28','RR/MM/DD'),2700,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (127,'James','ST_CLERK',120,to_date('07/01/14','RR/MM/DD'),2400,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (128,'Steven','ST_CLERK',120,to_date('08/03/08','RR/MM/DD'),2200,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (129,'Laura','ST_CLERK',121,to_date('05/08/20','RR/MM/DD'),3300,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (130,'Mozhe','ST_CLERK',121,to_date('05/10/30','RR/MM/DD'),2800,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (131,'James','ST_CLERK',121,to_date('05/02/16','RR/MM/DD'),2500,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (132,'TJ','ST_CLERK',121,to_date('07/04/10','RR/MM/DD'),2100,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (133,'Jason','ST_CLERK',122,to_date('04/06/14','RR/MM/DD'),3300,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (134,'Michael','ST_CLERK',122,to_date('06/08/26','RR/MM/DD'),2900,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (135,'Ki','ST_CLERK',122,to_date('07/12/12','RR/MM/DD'),2400,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (136,'Hazel','ST_CLERK',122,to_date('08/02/06','RR/MM/DD'),2200,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (137,'Renske','ST_CLERK',123,to_date('03/07/14','RR/MM/DD'),3600,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (138,'Stephen','ST_CLERK',123,to_date('05/10/26','RR/MM/DD'),3200,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (139,'John','ST_CLERK',123,to_date('06/02/12','RR/MM/DD'),2700,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (140,'Joshua','ST_CLERK',123,to_date('06/04/06','RR/MM/DD'),2500,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (141,'Trenna','ST_CLERK',124,to_date('03/10/17','RR/MM/DD'),3500,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (142,'Curtis','ST_CLERK',124,to_date('05/01/29','RR/MM/DD'),3100,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (143,'Randall','ST_CLERK',124,to_date('06/03/15','RR/MM/DD'),2600,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (144,'Peter','ST_CLERK',124,to_date('06/07/09','RR/MM/DD'),2500,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (145,'John','SA_MAN',100,to_date('04/10/01','RR/MM/DD'),14000,0.4,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (146,'Karen','SA_MAN',100,to_date('05/01/05','RR/MM/DD'),13500,0.3,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (147,'Alberto','SA_MAN',100,to_date('05/03/10','RR/MM/DD'),12000,0.3, null);
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (148,'Ger%ald','SA_MAN',100,to_date('07/10/15','RR/MM/DD'),11000,0.3,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (149,'Eleni','SA_MAN',100,to_date('08/01/29','RR/MM/DD'),10500,0.2,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (150,'Peter','SA_REP',145,to_date('05/01/30','RR/MM/DD'),10000,0.3,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (151,'David','SA_REP',145,to_date('05/03/24','RR/MM/DD'),9500,0.25,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (152,'Peter','SA_REP',145,to_date('05/08/20','RR/MM/DD'),9000,0.25,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (153,'Christopher','SA_REP',145,to_date('06/03/30','RR/MM/DD'),8000,0.2,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (154,'Nanette','SA_REP',145,to_date('06/12/09','RR/MM/DD'),7500,0.2,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (155,'Oliver','SA_REP',145,to_date('07/11/23','RR/MM/DD'),7000,0.15,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (156,'Janette','SA_REP',146,to_date('04/01/30','RR/MM/DD'),10000,0.35,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (157,'Patrick','SA_REP',146,to_date('04/03/04','RR/MM/DD'),9500,0.35,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (158,'Allan','SA_REP',146,to_date('04/08/01','RR/MM/DD'),9000,0.35,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (159,'Lindsey','SA_REP',146,to_date('05/03/10','RR/MM/DD'),8000,0.3,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (160,'Louise','SA_REP',146,to_date('05/12/15','RR/MM/DD'),7500,0.3,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (161,'Sarath','SA_REP',146,to_date('06/11/03','RR/MM/DD'),7000,0.25,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (162,'Clara','SA_REP',147,to_date('05/11/11','RR/MM/DD'),10500,0.25,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (163,'Danielle','SA_REP',147,to_date('07/03/19','RR/MM/DD'),9500,0.15,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (164,'Mattea','SA_REP',147,to_date('08/01/24','RR/MM/DD'),7200,0.1,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (165,'David','SA_REP',147,to_date('08/02/23','RR/MM/DD'),6800,0.1,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (166,'Sundar','SA_REP',147,to_date('08/03/24','RR/MM/DD'),6400,0.1,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (167,'Amit','SA_REP',147,to_date('08/04/21','RR/MM/DD'),6200,0.1,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (168,'Lisa','SA_REP',148,to_date('05/03/11','RR/MM/DD'),11500,0.25,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (169,'Harrison','SA_REP',148,to_date('06/03/23','RR/MM/DD'),10000,0.2,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (170,'Tayler','SA_REP',148,to_date('06/01/24','RR/MM/DD'),9600,0.2,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (171,'William','SA_REP',148,to_date('07/02/23','RR/MM/DD'),7400,0.15,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (172,'Elizabeth','SA_REP',148,to_date('07/03/24','RR/MM/DD'),7300,0.15,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (173,'Sundita','SA_REP',148,to_date('08/04/21','RR/MM/DD'),6100,0.1,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (174,'Ellen','SA_REP',149,to_date('04/05/11','RR/MM/DD'),11000,0.3,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (175,'Alyssa','SA_REP',149,to_date('05/03/19','RR/MM/DD'),8800,0.25,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (176,'Jonathon','SA_REP',149,to_date('06/03/24','RR/MM/DD'),8600,0.2,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (177,'Jack','SA_REP',149,to_date('06/04/23','RR/MM/DD'),8400,0.2,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (178,'Kimberely','SA_REP',149,to_date('07/05/24','RR/MM/DD'),7000,0.15,null);
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (179,'Charles','SA_REP',149,to_date('08/01/04','RR/MM/DD'),6200,0.1,'Sales');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (180,'Winston','SH_CLERK',120,to_date('06/01/24','RR/MM/DD'),3200,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (181,'Jean','SH_CLERK',120,to_date('06/02/23','RR/MM/DD'),3100,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (182,'Martha','SH_CLERK',120,to_date('07/06/21','RR/MM/DD'),2500,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (183,'Girard','SH_CLERK',120,to_date('08/02/03','RR/MM/DD'),2800,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (184,'Nandita','SH_CLERK',121,to_date('04/01/27','RR/MM/DD'),4200,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (185,'Alexis','SH_CLERK',121,to_date('05/02/20','RR/MM/DD'),4100,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (186,'Julia','SH_CLERK',121,to_date('06/06/24','RR/MM/DD'),3400,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (187,'Anthony','SH_CLERK',121,to_date('07/02/07','RR/MM/DD'),3000,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (188,'Kelly','SH_CLERK',122,to_date('05/06/14','RR/MM/DD'),3800,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (189,'Jennifer','SH_CLERK',122,to_date('05/08/13','RR/MM/DD'),3600,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (190,'Timothy','SH_CLERK',122,to_date('06/07/11','RR/MM/DD'),2900,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (191,'Randall','SH_CLERK',122,to_date('07/12/19','RR/MM/DD'),2500,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (192,'Sarah','SH_CLERK',123,to_date('04/02/04','RR/MM/DD'),4000,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (193,'Britney','SH_CLERK',123,to_date('05/03/03','RR/MM/DD'),3900,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (194,'Samuel','SH_CLERK',123,to_date('06/07/01','RR/MM/DD'),3200,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (195,'Vance','SH_CLERK',123,to_date('07/03/17','RR/MM/DD'),2800,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (196,'Alana','SH_CLERK',124,to_date('06/04/24','RR/MM/DD'),3100,null, null);
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (197,'Kevin','SH_CLERK',124,to_date('06/05/23','RR/MM/DD'),3000,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (198,'Donald','SH_CLERK',124,to_date('07/06/21','RR/MM/DD'),2600,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (199,'Douglas','SH_CLERK',124,to_date('08/01/13','RR/MM/DD'),2600,null,'Shipping');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (200,'Jennifer','AD_ASST',101,to_date('03/09/17','RR/MM/DD'),4400,null,'Administration');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (201,'Michael','MK_MAN',100,to_date('04/02/17','RR/MM/DD'),13000,null,'Marketing');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (202,'Pat','MK_REP',201,to_date('05/08/17','RR/MM/DD'),6000,null,'Marketing');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (203,'Susan','HR_REP',101,to_date('02/06/07','RR/MM/DD'),6500,null,'Human Resources');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (204,'Hermann','PR_REP',101,to_date('02/06/07','RR/MM/DD'),10000,null,'Public Relations');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (205,'Shelley','AC_MGR',101,to_date('02/06/07','RR/MM/DD'),12008,null,'Accounting');
Insert into EMP (EMP_ID,EMP_NAME,JOB,MGR_ID,HIRE_DATE,SALARY,COMM_PCT,DEPT_NAME) values (206,'William','AC_ACCOUNT',205,to_date('02/06/07','RR/MM/DD'),8300,null,'Accounting');
commit;