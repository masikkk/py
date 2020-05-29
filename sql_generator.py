def update_user_sql_not_in_transaction(start, *end):
    if len(end) > 0:
        return "update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= %d and u.id < %d;\n" % (
            start, end[0])
    else:
        return "update user u set u.identity = 1, u.update_time = u.update_time where u.id not in (select distinct user_id from user_role_transaction) and u.id >= %d;\n" % start


def update_user_sql_in_transaction(start, *end):
    if len(end) > 0:
        return "UPDATE user u JOIN user_role_transaction urt ON urt.user_id = u.id SET u.identity = urt.user_identity, u.update_time = u.update_time WHERE urt.user_id = u.id AND NOT exists(SELECT 1 FROM user_role_transaction urt2 WHERE urt2.user_id = urt.user_id AND urt2.id > urt.id) and u.id >= %d and u.id < %d;\n" % (
            start, end[0])
    else:
        return "UPDATE user u JOIN user_role_transaction urt ON urt.user_id = u.id SET u.identity = urt.user_identity, u.update_time = u.update_time WHERE urt.user_id = u.id AND NOT exists(SELECT 1 FROM user_role_transaction urt2 WHERE urt2.user_id = urt.user_id AND urt2.id > urt.id) and u.id >= %d;\n" % start


# 不在 user_role_transaction 表中的 user
def generate_update_user_sql_not_in_transaction(linse):
    with open("update_users.sql", 'w') as f:
        f.write("-- 1、身份历史表中没出现过的user身份设为 1(粉丝)，约占全量用户数据的90%，按2万一组分批执行。\n")
        pre = 0
        for i in range(20000, linse, 20000):
            f.write(update_user_sql_not_in_transaction(pre, i))
            pre = i
        f.write(update_user_sql_not_in_transaction(pre))


# 在 user_role_transaction 表中的 user
def generate_update_user_sql_in_transaction(lines):
    with open("update_users.sql", 'a') as f:
        f.write("\n-- 2、根据身份历史表更新user表，约占全量用户数据的10%，按30万一组分批执行\n")
        pre = 0
        for i in range(300000, lines, 300000):
            f.write(update_user_sql_in_transaction(pre, i))
            pre = i
        f.write(update_user_sql_in_transaction(pre))


if __name__ == "__main__":
    maxId = 2340000  # 最大id
    generate_update_user_sql_not_in_transaction(maxId)
    generate_update_user_sql_in_transaction(maxId)
