## 本项目实现的最终作用是基于SSH土地信息管理系统平台
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 分类管理
 - 档案管理
 - 用户管理
 - 管理员登录
### 第2个角色为用户角色，实现了如下功能：
 - 查询土地类型
 - 查询档案
 - 用户登录与注册
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_tudisys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [t_dangan](#t_dangan) |  |
| [t_fenlei](#t_fenlei) |  |
| [t_jilu](#t_jilu) |  |
| [t_user](#t_user) | 用户表 |

**表名：** <a id="t_dangan">t_dangan</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | user |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | fenLei |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | d_number |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | d_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | d_age |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 年龄  |
|  7   | d_sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | d_hj |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | d_xjd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | d_sfz |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | d_xuel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | d_xuej |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | d_zhuan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  14   | d_status |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  15   | d_bz |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_fenlei">t_fenlei</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | f_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | f_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | f_bz |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_jilu">t_jilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | j_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | j_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | j_bz |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_user">t_user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | u_username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | u_password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | u_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | u_birthday |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 生日  |
|  6   | u_sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  7   | u_tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 联系方式  |
|  8   | u_lxr |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 紧急联系人  |
|  9   | u_phone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  10   | u_jg |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 籍贯  |
|  11   | u_address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 住址  |
|  12   | u_bm |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | u_type |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户类型  |
|  14   | u_by_1 |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备用1  |
|  15   | u_by_2 |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备用2  |
|  16   | u_by_3 |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备用3  |
|  17   | u_bz |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |

