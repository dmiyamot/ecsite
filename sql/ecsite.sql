set names utf8;
set foreign_key_checks = 0;
drop database if exists ecsite;
--データベース作成（ecsite)
create database if exists ecsite;
use ecsite;
drop table if not exists ecsite;
use ecsite;

drop table if exists login_user_transaction;
--テーブル01作成
create table login_user_transaction(
 id int not null primary key auto_increment,
 login_id varchar(16) unique,
 login_pass varchar(16),
 user_name varchar(50),
 insert_date datetime,
 updated_date datetime
);

drop table if exists item_info_transaction;
--テーブル02作成
create table item_info_transaction(
	id int not null primary key auto_increment,
	item_name varchar(30),
	item_price int,
	item_stock int,
	insert_date datetime
	update_datee datetime
);

drop table if exists user_buy_item_transaction;
--テーブル03作成
create table user_buy_item_transaction(
	id int not null primary key auto_increment,
	item_transaction_id int,
	total_price int,
	total_coount int,
	user_master_id varchar(16),
	pay varchar(30),
	insert_date datetime,
	delete_date datetime
);

--作成したテーブルに情報を格納
INSERT INTO item_info_transaction(item_name,item_price,item_stock)VALUES("ノートBook",100,50);
INSERT INTO login_user_transaction(login_id,login_pass,user_name)VALUES("dm","dm01","test");