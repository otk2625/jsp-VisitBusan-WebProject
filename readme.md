## 테이블구조
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