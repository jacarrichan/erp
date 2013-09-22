package com.palmelf.erp.service;

import java.util.List;
import java.util.Map;

import com.palmelf.erp.model.OrderSale;
import com.palmelf.erp.model.OrderSaleLine;
import com.palmelf.erp.util.PageUtil;

public interface OrderSaleService
{

	boolean delOrderSale(Integer orderSaleId );

	boolean persistenceOrderSale(OrderSale c, Map<String, List<OrderSaleLine>> map );

	Long getCount(Map<String, Object> param, PageUtil pageUtil );

	List<OrderSale> findOrderSaleList(Map<String, Object> param, PageUtil pageUtil );

	List<OrderSaleLine> findOrderSaleLineList(Integer orderSaleId );

}
