package com.palmelf.erp.service;

import java.util.List;
import java.util.Map;

import com.palmelf.erp.model.OrderPurchase;
import com.palmelf.erp.model.OrderPurchaseLine;
import com.palmelf.erp.util.PageUtil;

public interface OrderPurchaseService
{

	List<OrderPurchase> findPurchaseOrderList(Map<String, Object> param, PageUtil pageUtil );

	Long getCount(Map<String, Object> param, PageUtil pageUtil );

	boolean persistenceOrderPurchase(OrderPurchase c, Map<String, List<OrderPurchaseLine>> map );

	boolean delOrderPurchase(Integer orderPurchaseId );

	List<OrderPurchaseLine> findPurchaseOrderLineList(Integer orderPurchaseId );

}
