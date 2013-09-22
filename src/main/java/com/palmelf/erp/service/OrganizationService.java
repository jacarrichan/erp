package com.palmelf.erp.service;

import java.util.List;

import com.palmelf.erp.model.Organization;
import com.palmelf.erp.viewModel.TreeModel;

public interface OrganizationService 
{
	List<TreeModel> findOrganizationList();

	List<Organization> findOrganizationList(Integer id );

	boolean persistenceOrganization(Organization o );

	boolean delOrganization(Integer id );
}
