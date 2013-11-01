erp1
====

java  struts2 hibernate  



数据库文件在   \src\main\webapp中

装好maven后,双击start.bat就可以运行了


生成pojo和hbm文件    
在hibernate.reveng.xml配置好需要生成hibernate需要的pojo和hbm的表名后,
执行 mvn hibernate3:hbm2hbmxml hibernate3:hbm2java  命令,就可以得到了。