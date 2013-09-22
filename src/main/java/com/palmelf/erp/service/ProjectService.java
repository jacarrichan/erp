package com.palmelf.erp.service;

import java.util.List;
import java.util.Map;

import com.palmelf.erp.model.Customer;
import com.palmelf.erp.model.Project;
import com.palmelf.erp.model.ProjectFollow;
import com.palmelf.erp.util.PageUtil;

public interface ProjectService
{

	boolean delProject(Integer projectId );

	List<Project> findProjectList(Map<String, Object> param, PageUtil pageUtil );

	Long getCount(Map<String, Object> param, PageUtil pageUtil );

	boolean persistenceProject(Project p, Map<String, List<ProjectFollow>> map );

	List<ProjectFollow> findProjectFollowsList(Integer projectId );

	List<Customer> findCustomers();

	List<Project> findProjectListCombobox();

}
