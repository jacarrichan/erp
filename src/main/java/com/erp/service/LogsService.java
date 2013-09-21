package com.erp.service;

import java.util.List;
import java.util.Map;

import com.erp.model.Log;
import com.erp.util.PageUtil;

public interface LogsService
{

	List<Log> findLogsAllList(Map<String, Object> map,PageUtil pageUtil);

	Long getCount(Map<String, Object> map, PageUtil pageUtil );

	boolean persistenceLogs(Log l );

	boolean delLogs(Integer logId );

}
