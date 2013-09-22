package com.palmelf.erp.service;

import java.util.List;
import java.util.Map;

import com.palmelf.erp.model.Customer;
import com.palmelf.erp.model.CustomerContact;
import com.palmelf.erp.util.PageUtil;
import com.palmelf.erp.viewModel.TreeModel;

public interface CstService
{

	List<Customer> findCustomerList(Map<String, Object> param, PageUtil pageUtil );

	Long getCount(Map<String, Object> param, PageUtil pageUtil );

	boolean persistenceCustomer(Customer c,Map<String, List<CustomerContact>> map);

	List<TreeModel> findSaleNameList();

	boolean delCustomer(Integer customerId );

	List<Customer> findCustomerListNoPage(Map<String, Object> param, PageUtil pageUtil );

}
