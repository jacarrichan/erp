package com.erp.service;

import java.util.List;
import java.util.Map;

import com.erp.model.Bug;
import com.erp.util.PageUtil;

public interface BugService
{

	List<Bug> findBugList(Map<String, Object> param, PageUtil pageUtil );

	Long getCount(Map<String, Object> param, PageUtil pageUtil );

	boolean addBug(Bug bug );

	boolean delBug(Integer bugId );

}
