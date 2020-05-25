-- 1、身份历史表中没出现过的user身份设为 1(粉丝)，约占全量用户数据的90%，按2万一组分批执行。
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 0 and u.id < 20000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 20000 and u.id < 40000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 40000 and u.id < 60000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 60000 and u.id < 80000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 80000 and u.id < 100000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 100000 and u.id < 120000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 120000 and u.id < 140000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 140000 and u.id < 160000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 160000 and u.id < 180000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 180000 and u.id < 200000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 200000 and u.id < 220000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 220000 and u.id < 240000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 240000 and u.id < 260000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 260000 and u.id < 280000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 280000 and u.id < 300000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 300000 and u.id < 320000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 320000 and u.id < 340000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 340000 and u.id < 360000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 360000 and u.id < 380000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 380000 and u.id < 400000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 400000 and u.id < 420000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 420000 and u.id < 440000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 440000 and u.id < 460000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 460000 and u.id < 480000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 480000 and u.id < 500000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 500000 and u.id < 520000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 520000 and u.id < 540000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 540000 and u.id < 560000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 560000 and u.id < 580000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 580000 and u.id < 600000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 600000 and u.id < 620000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 620000 and u.id < 640000;
update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= 640000;

-- 2、根据身份历史表更新user表，约占全量用户数据的10%，按30万一组分批执行
UPDATE user u JOIN user_role_transaction urt ON urt.user_id = u.id SET u.identity = urt.user_identity, u.update_time = u.update_time WHERE urt.user_id = u.id AND NOT exists(SELECT 1 FROM user_role_transaction urt2 WHERE urt2.user_id = urt.user_id AND urt2.id > urt.id) and u.id >= 0 and u.id < 300000;
UPDATE user u JOIN user_role_transaction urt ON urt.user_id = u.id SET u.identity = urt.user_identity, u.update_time = u.update_time WHERE urt.user_id = u.id AND NOT exists(SELECT 1 FROM user_role_transaction urt2 WHERE urt2.user_id = urt.user_id AND urt2.id > urt.id) and u.id >= 300000 and u.id < 600000;
UPDATE user u JOIN user_role_transaction urt ON urt.user_id = u.id SET u.identity = urt.user_identity, u.update_time = u.update_time WHERE urt.user_id = u.id AND NOT exists(SELECT 1 FROM user_role_transaction urt2 WHERE urt2.user_id = urt.user_id AND urt2.id > urt.id) and u.id >= 600000;
