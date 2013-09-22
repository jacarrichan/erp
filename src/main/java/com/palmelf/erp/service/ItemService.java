package com.palmelf.erp.service;

import java.util.List;
import java.util.Map;

import com.palmelf.erp.model.Brand;
import com.palmelf.erp.model.Item;
import com.palmelf.erp.util.PageUtil;

public interface ItemService
{

	List<Item> findItemList(Map<String, Object> param, PageUtil pageUtil );

	Long getCount(Map<String, Object> param, PageUtil pageUtil );

	boolean persistenceItem(Item item );

	boolean delItem(Integer itemId );

	List<Brand> findBrandList();

	boolean addBrands(String name );

	Item findItemByMyid(String myid, Integer suplierId );

}
