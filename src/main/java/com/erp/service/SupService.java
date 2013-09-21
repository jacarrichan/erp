package com.erp.service;

import java.util.List;
import java.util.Map;

import com.erp.model.Suplier;
import com.erp.model.SuplierContact;
import com.erp.util.PageUtil;

public interface SupService
{

	List<Suplier> findSuplierList(Map<String, Object> param, PageUtil pageUtil );

	Long getCount(Map<String, Object> param, PageUtil pageUtil );

	boolean persistenceSuplier(Suplier c, Map<String, List<SuplierContact>> map );

	boolean delSuplier(Integer SuplierId );

	List<SuplierContact> findSuplierContactList(Integer SuplierId );

	List<Suplier> findSuplierListNoPage(Map<String, Object> param, PageUtil pageUtil );

}
