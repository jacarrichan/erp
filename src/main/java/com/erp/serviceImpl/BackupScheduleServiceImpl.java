package com.erp.serviceImpl;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.stereotype.Service;

import com.erp.service.BackupScheduleService;
import com.erp.service.DbBackUpService;
import com.erp.util.Constants;
@Service("backupScheduleService")
public class BackupScheduleServiceImpl implements BackupScheduleService
{
	/* (非 Javadoc) 
	* <p>Title: execute</p> 
	* <p>Description:备份调度执行方法 </p> 
	* @param jobCtx
	* @throws JobExecutionException 
	* @see org.quartz.Job#execute(org.quartz.JobExecutionContext) 
	*/
	public void execute(JobExecutionContext jobCtx ) throws JobExecutionException
	{
		String fineName = Constants.dbBackUp();
		String sqlName = Constants.BASE_PATH +"attachment" +File.separator+ "dbBackUp" + File.separator + fineName;
		System.out.println(jobCtx.getTrigger().getName()   + " triggered. time is:" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));  
		SpringWiredBean sdf = SpringWiredBean.getInstance();
		DbBackUpService sdsdf = (DbBackUpService)sdf.getBeanById("dbBackUpService");
		sdsdf.addLog(sqlName,fineName,true);
	}
}
