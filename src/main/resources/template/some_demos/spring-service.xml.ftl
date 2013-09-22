<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 

<bean id="${classNameLower}Manager" class="${basepackage}.service.${className}Manager"/>
<bean id="${classNameLower}Dao" class="${basepackage}.dao.${className}Dao"/>
<!-- 文件包含后面的这段字符: generator-...-location,则在模板输出的地方,如果发现同名文件,则可将生成内容插入在该标记之后 -->
<!--  generator-insert-location -->
