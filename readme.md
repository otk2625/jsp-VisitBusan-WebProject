# JSP VisitBusan Web 프로젝트

## 환경
- JDK1.8
- Tomcat9.0
- STS 툴
- MySQL8.0
- Windows
- Postman
- lombok.jar
- jstl-1.2.jar
- gson.jar(json파싱)
- 인코딩 utf-8
- git

## MySQL 데이터베이스 생성 및 사용자 생성

- 사용자 생성 및 DB생성

```sql
create user 'visituser'@'%' identified by 'bitc5600';
grant all privileges on *.* to 'visituser'@'%';
create database visitdb;
```

- 테이블구조

```sql
CREATE TABLE user(
    id int primary key auto_increment,
    username varchar(100) not null unique,
    password varchar(100) not null,
    email varchar(100) not null,
    address varchar(100),
    userRole varchar(20),
    createDate timestamp
)  engine=InnoDB default charset=utf8;

CREATE TABLE sight(
    id int primary key,
    title varchar(100) not null unique,
	readCount int default 0
)  engine=InnoDB default charset=utf8;

CREATE TABLE reply(
    id int primary key auto_increment,
    userId int,
    sightid int,
    title varchar(100) not null,
    content longtext,
	likepoint int,
    createDate timestamp,
    foreign key (userId) references user (id),
    foreign key (sightid) references sight (id)
)  engine=InnoDB default charset=utf8;

create table favorite (
	id int primary key auto_increment,
    userid int,
    sightid int,
    foreign key (userid) references user (id),
    foreign key (sightid) references sight (id)
);
```