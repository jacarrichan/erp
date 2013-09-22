package com.palmelf.erp.service;

import java.util.List;
import java.util.Map;

import com.palmelf.erp.model.Log;
import com.palmelf.erp.util.PageUtil;

public interface LogsService
{

	List<Log> findLogsAllList(Map<String, Object> map,PageUtil pageUtil);

	Long getCount(Map<String, Object> map, PageUtil pageUtil );

	boolean persistenceLogs(Log l );

	boolean delLogs(Integer logId );

}
