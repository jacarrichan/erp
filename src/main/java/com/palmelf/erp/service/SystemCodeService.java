package com.palmelf.erp.service;

import java.util.List;

import com.palmelf.erp.model.SystemCode;
import com.palmelf.erp.viewModel.TreeModel;

public interface SystemCodeService
{

	List<SystemCode> findSystemCodeList(Integer id);

	List<TreeModel> findSystemCodeList();

	boolean persistenceSystemCodeDig(SystemCode systemCode,String permissionName,Integer codePid);

	boolean delSystemCode(Integer codeId );

	List<SystemCode> findSystemCodeByType(String codeMyid );

}
