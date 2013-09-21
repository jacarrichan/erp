package com.erp.service;

import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;

import com.erp.model.BackupScheduleConfig;
import com.erp.model.Log;
import com.erp.util.PageUtil;

public interface DbBackUpService extends ApplicationListener<ContextRefreshedEvent>
{

	List<Log> findLogsAllList(Map<String, Object> map, PageUtil pageUtil );

	Long getCount(Map<String, Object> map, PageUtil pageUtil );

	String unSchedule();

	String schedule(int hour, int minute, String scheduleEnabled );

	boolean handSchedule();

	boolean addLog(String path, String fileName, boolean isSystem );

	BackupScheduleConfig getBackupScheduleConfig();

}
