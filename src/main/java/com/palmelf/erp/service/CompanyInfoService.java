package com.palmelf.erp.service;

import java.util.List;
import java.util.Map;

import com.palmelf.erp.model.CompanyInfo;
import com.palmelf.erp.util.PageUtil;



public interface CompanyInfoService {

	boolean persistenceCompanyInfo(Map<String, List<CompanyInfo>> map);

	List<CompanyInfo> findAllCompanyInfoList(Map<String, Object> param,PageUtil pageUtil);

	Long getCount(Map<String, Object> param,PageUtil pageUtil);

	boolean addCompanyInfo(List<CompanyInfo> addlist );

	boolean updCompanyInfo(List<CompanyInfo> updlist );

	boolean delCompanyInfo(List<CompanyInfo> dellist );

	boolean delCompanyInfo(Integer companyId );

}
