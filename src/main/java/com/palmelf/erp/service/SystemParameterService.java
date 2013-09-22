package com.palmelf.erp.service;

import java.util.List;
import java.util.Map;

import com.palmelf.erp.model.Parameter;
import com.palmelf.erp.viewModel.ParameterModel;

public interface SystemParameterService
{

	List<ParameterModel> findParameterList(String type );

	boolean persistenceParameter(Map<String, List<Parameter>> map );

}
