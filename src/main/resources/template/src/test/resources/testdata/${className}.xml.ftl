<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
<?xml version='1.0' encoding='UTF-8'?>
<!-- DBUnit flatXml DataFile -->
<dataset>


	  <${table.sqlName} 
		<#list table.columns as column>
			${column.sqlName}='${column.testData}' 
		</#list>  
	  />	
  
</dataset>
