<#include "/java_copyright.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first>   
package ${basepackage}.dao;

<#include "/java_imports.include">

import static cn.org.rapid_framework.util.ObjectUtils.*;
import org.springframework.stereotype.Repository;

@SuppressWarnings(value = "all")
@Repository
public class ${className}Dao extends BaseHibernateDao<${className},${table.idColumn.javaType}>{

	public Class getEntityClass() {
		return ${className}.class;
	}
	
	public Page<${className}> findPage(${className}Query query) {
        
        StringBuilder hqlSb = new StringBuilder("SELECT t FROM  ${className} t WHERE 1=1 ");
        <#list table.columns as column>
        <#if column.isDateTimeColumn>
        if(isNotEmpty(query.get${column.columnName}Begin())) {
        	hqlSb.append(" AND  t.${column.columnNameLower} >= :${column.columnNameLower}Begin ");
        }
        if(isNotEmpty(query.get${column.columnName}End())) {
        	hqlSb.append(" AND t.${column.columnNameLower} <= :${column.columnNameLower}End ");
        }
        <#else>
        if(isNotEmpty(query.get${column.columnName}())) {
        	hqlSb.append(" AND  t.${column.columnNameLower} = :${column.columnNameLower} ");
        }
        </#if>
        </#list>
        
		return pageQuery(hqlSb.toString(),query);
	}
	
	<#list table.columns as column>
	<#if column.unique && !column.pk>
	public ${className} getBy${column.columnName}(${column.javaType} v) {
		return (${className}) findByProperty("${column.columnNameLower}",v);
	}	
	</#if>
	</#list>

}
