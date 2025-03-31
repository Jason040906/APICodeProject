> 作者：[Jason](https://github.com/Jason040906)
  ### 项目介绍:
> 本项目是一个面向开发者的API平台，提供 API接口供开发者调用。
> 用户通过注册登录，可以开通接口调用权限，并可以浏览和调用接口。
> 每次调用都会进行统计，用户可以根据统计数据进行分析和优化。
  管理员可以发布接口、下线接口、接入接口，并可视化接口的调用情况和数据。本项目侧重于后端，涉及多种编程技巧和架构设计层面的知识。
    一个提供 API 接口供开发者调用的平台：
        管理员可以发布接口，同时统计分析各接口的调用情况，
        用户可以注册登录并开通接口调用权限，浏览接口以及在线进行调试，并可以使用SDK轻松地在代码中调用接口。
        该项目前端简单，后端丰富，涵盖编程技巧和架构设计等多个技术领域。



 ## 后端本地部署运行
 ### 环境准备
- 源码
- Java >=8+ Maven 
- IDEA 
- Redis 
- MySQL 
- Nacos
  ### 本地启动
- MySQL
- Redis 下载下来直接默认下一步就行
- 配置 IDEA Maven 配置 
- 安装 Redis
  如果想要修改端口号可以把上面的6379修改成对应的端口号
>  技术栈为springboot+React+Dubbo+Gateway
 ## 前端本地部署运行
 ### 环境准备
- 源码
- node >= 18 推荐使用 NVM安装
- WebStorm/VSCode
- Webstorm打开jsapi-frontend文件(VSCode也可)
- yarn安装
### 主流框架 & 特性

- Spring Boot 2.7.x（贼新）
- Spring MVC
- MyBatis + MyBatis Plus 数据访问（开启分页）
- Spring Boot 调试工具和项目处理器
- Spring AOP 切面编程
- Spring Scheduler 定时任务
- Spring 事务注解

### 数据存储

- MySQL 数据库
- Redis 内存数据库
- Elasticsearch 搜索引擎
- 腾讯云 COS 对象存储

### 工具类

- Easy Excel 表格处理
- Hutool 工具库
- Gson 解析库
- Apache Commons Lang3 工具类
- Lombok 注解

### 业务特性

- Spring Session Redis 分布式登录
- 全局请求响应拦截器（记录日志）
- 全局异常处理器
- 自定义错误码
- 封装通用响应类
- Swagger + Knife4j 接口文档
- 自定义权限注解 + 全局校验
- 全局跨域处理
- 长整数丢失精度解决
- 多环境配置



### 单元测试

- JUnit5 单元测试
- 示例单元测试类

### 架构设计

- 合理分层


## 快速上手

> 所有需要修改的地方我都标记了 `todo`

### MySQL 数据库

1）修改 `application.yml` 的数据库配置为你自己的：

```yml
spring:
  datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: jdbc:mysql://localhost:3306/my_db
    username: root
    password: 123456
```

2）执行 `sql/create_table.sql` 中的数据库语句，自动创建库表

3）启动项目，访问 `http://localhost:8101/api/doc.html` 即可打开接口文档，不需要写前端就能在线调试接口了~

![](doc/swagger.png)

### Redis 分布式登录

1）修改 `application.yml` 的 Redis 配置为你自己的：

```yml
spring:
  redis:
    database: 1
    host: localhost
    port: 6379
    timeout: 5000
    password: 123456
```

2）修改 `application.yml` 中的 session 存储方式：

```yml
spring:
  session:
    store-type: redis
```

3）移除 `MainApplication` 类开头 `@SpringBootApplication` 注解内的 exclude 参数：

修改前：

```java
@SpringBootApplication(exclude = {RedisAutoConfiguration.class})
```

修改后：


```java
@SpringBootApplication
```

### Elasticsearch 搜索引擎

1）修改 `application.yml` 的 Elasticsearch 配置为你自己的：

```yml
spring:
  elasticsearch:
    uris: http://localhost:9200
    username: root
    password: 123456
```

2）复制 `sql/post_es_mapping.json` 文件中的内容，通过调用 Elasticsearch 的接口或者 Kibana Dev Tools 来创建索引（相当于数据库建表）

```
PUT post_v1
{
 参数见 sql/post_es_mapping.json 文件
}
```

这步不会操作的话需要补充下 Elasticsearch 的知识，或者自行百度一下~

3）开启同步任务，将数据库的帖子同步到 Elasticsearch

找到 job 目录下的 `FullSyncPostToEs` 和 `IncSyncPostToEs` 文件，取消掉 `@Component` 注解的注释，再次执行程序即可触发同步：

```java
// todo 取消注释开启任务
//@Component
```
