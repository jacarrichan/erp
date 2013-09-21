package com.erp.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erp.dao.PublicDao;
import com.erp.model.Warehouse;
import com.erp.service.WarehouseService;
@SuppressWarnings("unchecked")
@Service("warehouseService")
public class WarehouseServiceImpl implements WarehouseService
{
	@SuppressWarnings("rawtypes")
	private PublicDao publicDao;
	@SuppressWarnings("rawtypes")
	@Autowired
	public void setPublicDao(PublicDao publicDao )
	{
		this.publicDao = publicDao;
	}
	
	public List<Warehouse> findWarehouseListCombobox()
	{
		String hql="from Warehouse t where t.status='A'";
		return publicDao.find(hql);
	}
}
