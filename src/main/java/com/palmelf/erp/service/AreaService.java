package com.palmelf.erp.service;

import java.util.List;

import com.palmelf.erp.model.City;
import com.palmelf.erp.model.Province;
import com.palmelf.erp.viewModel.TreeModel;

public interface AreaService
{

	List<TreeModel> findCities();

	List<Province> findProvinces();

	boolean addCities(City city );

}
