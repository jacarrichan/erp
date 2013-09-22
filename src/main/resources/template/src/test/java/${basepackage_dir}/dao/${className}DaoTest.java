<#include "/java_copyright.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first>   
package ${basepackage}.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.junit.Test;

import cn.org.rapid_framework.test.context.TestMethodContext;

import static junit.framework.Assert.*;

<#include "/java_imports.include">

public class ${className}DaoTest extends BaseDaoTestCase{
	
	private ${className}Dao dao;
	
	@Autowired
	public void set${className}Dao(${className}Dao dao) {
		this.dao = dao;
	}

	@Override 
	protected String[] getDbUnitDataFiles() {
	    //通过 TestMethodContext.getMethodName() 可以得到当前正在运行的测试方法名称
		return new String[]{"classpath:testdata/common.xml","classpath:testdata/${className}.xml",
		                    "classpath:testdata/${className}_"+TestMethodContext.getMethodName()+".xml"};
	}
	
	
	static int page = 1;
	static int pageSize = 10;	
	
	
	//数据库单元测试前会开始事务，结束时会回滚事务，所以测试方法可以不用关心测试数据的删除
	@Test
	public void findPage() {
		
		${className}Query query = new${className}Query();
		Page<${className}> result = dao.findPage(query);
		assertEquals(pageSize,result.getPageSize());
		assertNotNull(result);
	}
		
	public static ${className}Query new${className}Query() {
		${className}Query query = new ${className}Query();
		query.setPage(page);
		query.setPageSize(pageSize);	
		
		<#list table.columns as column>
	  		<#if column.isNotIdOrVersionField>
	  		<#if column.isDateTimeColumn && !column.contains("begin,start,end")>
		query.set${column.columnName}Begin(new ${column.simpleJavaType}(System.currentTimeMillis()));
		query.set${column.columnName}End(new ${column.simpleJavaType}(System.currentTimeMillis()));
			<#else>
	  	query.set${column.columnName}(new ${column.simpleJavaType}("1"));
			</#if>
			</#if>
		</#list>
		return query;
	}
	
}
