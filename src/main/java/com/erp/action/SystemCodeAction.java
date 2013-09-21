package com.erp.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.erp.model.SystemCode;
import com.erp.service.SystemCodeService;
import com.erp.util.Constants;
import com.erp.viewModel.Json;
import com.opensymphony.xwork2.ModelDriven;

@Namespace("/systemCode")
@Action(value = "systemCodeAction")
public class SystemCodeAction extends BaseAction implements ModelDriven<SystemCode>
{
	private static final long serialVersionUID = -7594149055359363935L;
	private SystemCodeService systemCodeService;
	private SystemCode systemCode;
	private String permissionName;
	private Integer id;
	private Integer codePid;
	
	public Integer getCodePid()
	{
		return codePid;
	}

	public void setCodePid(Integer codePid )
	{
		this.codePid = codePid;
	}

	public Integer getId()
	{
		return id;
	}

	public void setId(Integer id )
	{
		this.id = id;
	}

	public SystemCode getSystemCode()
	{
		return systemCode;
	}

	public void setSystemCode(SystemCode systemCode )
	{
		this.systemCode = systemCode;
	}
	
	public String getPermissionName()
	{
		return permissionName;
	}

	public void setPermissionName(String permissionName )
	{
		this.permissionName = permissionName;
	}

	@Autowired
	public void setSystemCodeService(SystemCodeService systemCodeService )
	{
		this.systemCodeService = systemCodeService;
	}
	
	/**  
	* 函数功能说明 TODO:按节点查询所有词典
	* Administrator修改者名字
	* 2013-6-19修改日期
	* 修改内容
	* @Title: findSystemCodeList 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findSystemCodeList() throws Exception
	{
		OutputJson(systemCodeService.findSystemCodeList(id));
		return null;
	}

	/**  
	* 函数功能说明 TODO:查询所有词典
	* Administrator修改者名字
	* 2013-6-19修改日期
	* 修改内容
	* @Title: findAllSystemCodeList 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findAllSystemCodeList() throws Exception
	{
		OutputJson(systemCodeService.findSystemCodeList());
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:弹窗持久化systemCode
	* Administrator修改者名字
	* 2013-6-19修改日期
	* 修改内容
	* @Title: persistenceSystemCodeDig 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceSystemCodeDig() throws Exception
	{
		OutputJson(getMessage(systemCodeService.persistenceSystemCodeDig(getModel(),permissionName,codePid)),Constants.TEXT_TYPE_PLAIN);
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:删除词典
	* Administrator修改者名字
	* 2013-6-19修改日期
	* 修改内容
	* @Title: delSystemCode 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String delSystemCode() throws Exception
	{
		Json json=new Json();
		json.setTitle("提示");
		if (systemCodeService.delSystemCode(getModel().getCodeId()))
		{
			json.setStatus(true);
			json.setMessage("数据更新成功!");
		}else {
			json.setStatus(false);
			json.setMessage("数据更新失败，或含有子项不能删除!");
		}
		OutputJson(json);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-24修改日期
	* 修改内容
	* @Title: findSystemCodeByType 
	* @Description: TODO:查询词典的公用方法
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findSystemCodeByType() throws Exception
	{
		OutputJson(systemCodeService.findSystemCodeByType(getModel().getCodeMyid()));
		return null;
	}
	public SystemCode getModel()
	{
		if (null==systemCode)
		{
			systemCode=new SystemCode();
		}
		return systemCode;
	}
}
