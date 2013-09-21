package com.erp.action;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.erp.model.CompanyInfo;
import com.erp.service.ExcelService;
import com.erp.util.ExcelUtil;
import com.erp.util.FileUtil;
@Namespace("/excel")
@Action(value = "excelAction")
public class ExcelAction extends BaseAction
{
	private static final long serialVersionUID = 6711372422886609823L;
	private ExcelService excelService;
	private String isCheckedIds;
	
	public String getIsCheckedIds()
	{
		return isCheckedIds;
	}
	public void setIsCheckedIds(String isCheckedIds )
	{
		this.isCheckedIds = isCheckedIds;
	}
	@Autowired
	public void setExcelService(ExcelService excelService )
	{
		this.excelService = excelService;
	}
	
	public String CompanyInfoExcelExport() throws Exception
	{
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
		String excelName = format.format(new Date());
		String path = "CompanyInfo-"+excelName+".xls";
		String fegefu = File.separator;
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		String severPath = request.getSession().getServletContext().getRealPath(fegefu);
		String allPath = severPath + "attachment" + fegefu + path;
		FileOutputStream out = null;
		try {
			out = new FileOutputStream(allPath);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		List<CompanyInfo> list = excelService.findExcelExportList(isCheckedIds, CompanyInfo.class);
		ExcelUtil<CompanyInfo> util=new ExcelUtil<CompanyInfo>(CompanyInfo.class);
		util.exportExcel(list, "Sheet", 60000, out);
		FileUtil.downFile(path, response, allPath);
		return null;
	}
}
