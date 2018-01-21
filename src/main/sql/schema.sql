/*数据初始化脚本*/
CREATE database seckill;

use seckill;

CREATE table seckill (
     seckill_id bigint not null auto_increment comment='商品的id',
     name varchar(120) not null comment='商品名称',
     number int not null cpmment ='商品数量',
     start_time TIMESTAMP  not null comment='秒杀开始时间',
     end_time TIMESTAMP  not null comment='秒杀结束时间',
     create_time TIMESTAMP  NOT NULL DEFAULT  CURRENT_TIMESTAMP comment='秒杀创建时间',
     PRIMARY key (seckill_id),
     KEY idx_start_time(start_time),
     KEY idx_end_time(end_time),
     key idx_create_time(create_time)

     )ENGINE = InnoDB auto_increment =1000 DEFAULT charset=utf8 comment='秒杀库存表'

insert into seckill(name,number,start_time,end_time)
values
( '1000元秒杀iPhone6',100,'2015-11-01 00:00:00','2015-11-02 00:00:00'),
( '500元秒杀ipad2',200,'2015-11-01 00:00:00','2015-11-02 00:00:00'),
( '300元秒杀小米4',300,'2015-11-01 00:00:00','2015-11-02 00:00:00'),
( '200元秒杀红米note',400,'2015-11-01 00:00:00','2015-11-02 00:00:00');

create table success_killed(
    seckill_id bigint not null,
    user_phone bigint not null ,
    state tinyint not null DEFAULT -1 ,
    create_time TIMESTAMP not null,
    PRIMARY KEY (seckill_id,user_phone),
    key idx_create_time(create_time)

)ENGINE = InnoDB  DEFAULT charset=utf8