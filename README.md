# Library_Management_System
Library_Management_System

###### 解决maven项目mapper接口和映射文件不在同一目录的问题。 

1. 可以直接在resources创建一个跟mapper接口一样的包，编译的时候就会直接把xml编译到类路径下的包中。

2. 将两个文件都放在类路径包下，并且在pom.xml中添加文件扫描配置。
