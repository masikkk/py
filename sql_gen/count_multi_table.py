# coding=utf-8
# 每个分表的count语句
def count_table(table_name, column_name, column_value):
    return "select count(*) cnt from %s where %s='%s'" % (table_name, column_name, column_value)


# 所有count union 后求总和
def sum_count(table_name_prefix, column_name, column_value):
    sql = "select sum(cnt)\n"
    sql += "from ( \n"
    for i in range(0, 100, 1):
        sql += "    " + count_table(table_name_prefix + "%s" % i, column_name, column_value)
        if i < 99:
            sql += '\n    union all \n'
    sql += '\n ) t_cnt;'
    return sql


if __name__ == "__main__":
    print sum_count("t_user_record_", "groupid", "collection_test_3")
