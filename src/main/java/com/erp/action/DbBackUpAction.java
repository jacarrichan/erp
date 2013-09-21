package com.erp.action;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.erp.model.BackupScheduleConfig;
import com.erp.service.DbBackUpService;
import com.erp.util.Constants;
import com.erp.util.FileUtil;
import com.erp.util.PageUtil;
import com.erp.util.ZipUtils;
import com.erp.viewModel.GridModel;
import com.erp.viewModel.Json;
import com.opensymphony.xwork2.ModelDriven;

@Namespace("/dbBackUp")
@Action(value = "dbBackUpAction")
public class DbBackUpAction extends BaseAction implements ModelDriven<BackupScheduleConfig>
{
	private static final long serialVersionUID = -1946182036619744959L;
	private BackupScheduleConfig backupScheduleConfig;
	private DbBackUpService dbBackUpService;
	private String fileName;
	
	
	public String getFileName()
	{
		return fileName;
	}

	public void setFileName(String fileName )
	{
		this.fileName = fileName;
	}

	@Autowired
	public void setDbBackUpService(DbBackUpService dbBackUpService )
	{
		this.dbBackUpService = dbBackUpService;
	}
	
	public BackupScheduleConfig getBackupScheduleConfig()
	{
		return backupScheduleConfig;
	}


	public void setBackupScheduleConfig(BackupScheduleConfig backupScheduleConfig )
	{
		this.backupScheduleConfig = backupScheduleConfig;
	}


	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-28修改日期
	* 修改内容
	* @Title: findDbBackUpAllList 
	* @Description: TODO:数据库备份
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findDbBackUpAllList() throws Exception
	{
		Map<String, Object> map=new HashMap<String, Object>();
		if (null!=searchValue&&!"".equals(searchValue))
		{
			map.put(searchName, Constants.GET_SQL_LIKE+searchValue+Constants.GET_SQL_LIKE);
		}
		PageUtil pageUtil=new PageUtil(page, rows, searchAnds, searchColumnNames, searchConditions, searchVals);
		GridModel gridModel=new GridModel();
		gridModel.setRows(dbBackUpService.findLogsAllList(map, pageUtil));
		gridModel.setTotal(dbBackUpService.getCount(map,pageUtil));
		OutputJson(gridModel);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-7-11修改日期
	* 修改内容
	* @Title: getScheduleConfig 
	* @Description: TODO:获取调度配置
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String getScheduleConfig() throws Exception
	{
		OutputJson(dbBackUpService.getBackupScheduleConfig());
		return null;
	}
	/**  
	* 函数功能说明
	* Administrator修改者名字
	* 2013-7-11修改日期
	* 修改内容
	* @Title: handSchedule 
	* @Description: TODO:手动备份方法
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String handSchedule() throws Exception
	{
		Json json=new Json();
		json.setTitle("提示");
		if (dbBackUpService.handSchedule())
		{
			json.setStatus(true);
			json.setMessage("备份完成!");
		}else {
			json.setStatus(false);
			json.setMessage("备份失败!");
		}
		OutputJson(json, Constants.TEXT_TYPE_PLAIN);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-7-11修改日期
	* 修改内容
	* @Title: checkBackUp 
	* @Description: TODO:检查备份文件是否存在 ，并进行压缩
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String checkBackUp() throws Exception
	{
		Json json=new Json();
		json.setTitle("提示");
		if ("".equals(fileName)||null==fileName)
		{
			json.setStatus(false);
			json.setMessage("文件不存在!");
		}else {
			String sqlName = Constants.BASE_PATH +"attachment" +File.separator+ "dbBackUp" + File.separator + fileName;
			String zipDir = Constants.BASE_PATH +"attachment" +File.separator+ "dbBackUpZip";
			File file=new File(sqlName);
			if (file.exists())
			{
				File zipDirPath = new File(zipDir);
				if(!zipDirPath.exists()){
					zipDirPath.mkdir();
				}
				String zipNameString=fileName.substring(0, fileName.lastIndexOf("."));
				String zipPath=zipDir+File.separator+zipNameString+Constants.FILE_SUFFIX_ZIP;
				File fileZip=new File(zipPath);
				if (!fileZip.exists())
				{
					ZipUtils.createZip(sqlName,zipPath);
				}
				json.setStatus(true);
			}else {
				json.setStatus(false);
				json.setMessage("文件不存在!");
			}
		}
		OutputJson(json);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-7-11修改日期
	* 修改内容
	* @Title: downBackUpFile 
	* @Description: TODO:下载备份文件
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String downBackUpFile() throws Exception
	{
		String zipName=fileName.substring(0, fileName.lastIndexOf("."))+Constants.FILE_SUFFIX_ZIP;
		HttpServletResponse response = ServletActionContext.getResponse();
		String sqlName = Constants.BASE_PATH +"attachment" +File.separator+ "dbBackUpZip" + File.separator + zipName;
		FileUtil.downFile(zipName, response, sqlName);
		return null;
	}
	/**  
	* 函数功能说明
	* Administrator修改者名字
	* 2013-7-10修改日期
	* 修改内容
	* @Title: schedule 
	* @Description: TODO:定时任务启动
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String schedule() throws Exception
	{
		dbBackUpService.unSchedule();
		String msg=dbBackUpService.schedule(getModel().getScheduleHour(), getModel().getScheduleMinute(), "Y");
		Json json=new Json();
		json.setTitle("提示");
		json.setStatus(true);
		json.setMessage(msg);
		OutputJson(json, Constants.TEXT_TYPE_PLAIN);
		return null;
	}
	
	public BackupScheduleConfig getModel()
	{
		if (null==backupScheduleConfig)
		{
			backupScheduleConfig=new BackupScheduleConfig();
		}
		return backupScheduleConfig;
	}

}
