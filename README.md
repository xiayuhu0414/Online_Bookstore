# Library_Management_System
Library_Management_System

###### 解决maven项目mapper接口和映射文件不在同一目录的问题。 

1. 可以直接在resources创建一个跟mapper接口一样的包，编译的时候就会直接把xml编译到类路径下的包中。

2. 将两个文件都放在类路径包下，并且在pom.xml中添加文件扫描配置。

---
###### 数据库连接池

1. 什么是数据库连接池？  
数据库连接池（Database Connection Pooling）在程序初始化时创建一定数量的数据库连接对象并将其保存在一块
内存区域中，_它允许应用程序重复使用一个现有的数据库连接，而不是重新建立一个；释放空闲时间超过最大空闲时间的数据库连接一避免因为没有释放数据库连接而引起的数据库连接遗漏。_  
 即在程序初始化时创建一定数量的数据库连接，用完可以放回去，下一个接着用，通过配置连接池的参数来控制连接池中的*初始连接数、最小连接、最大连接、最大空闲时间*这些参数保证访问数据库的数量在一定可控制的范围内，防止系统崩溃，使用户的体验好。<br>
 
 2. 为什么使用数据库连接池？<br>
    数据库连接是一种关键、有限且昂贵的资源，创建和释放数据库连接是一个很耗时的操作，频繁地进行这样的操作将占用大量的性能开销，进而导致网站的响应速度下降，严重的时候可能导致服务器崩溃；数据库连接池可以节省系统许多开销。<br>
    最大的空闲时间：数据库连接对象所能存活的最大时间。
    
    最小连接数：是连接池一直保持的数据库连接，所以如果应用程序对数据库连接的使用量不大，将会有大量的数据库连接资源被浪费。
    
    最大连接数：所能创建连接池的最大数目，如果数据库连接池连接请求超过该数目，这个请求就先等待