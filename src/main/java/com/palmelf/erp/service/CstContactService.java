package com.palmelf.erp.service;

import java.util.List;

import com.palmelf.erp.model.CustomerContact;

public interface CstContactService
{

	List<CustomerContact> findCustomerContactList(Integer customerId );

}
