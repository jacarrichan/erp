package com.erp.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.erp.model.City;
import com.erp.service.AreaService;
import com.erp.util.Constants;
import com.opensymphony.xwork2.ModelDriven;

@Namespace("/area")
@Action(value = "areaAction")
public class AreaAction extends BaseAction implements ModelDriven<City>
{
	private static final long serialVersionUID = 5060080266833835121L;
	private AreaService areaService;
	private City city;
	
	public City getCity()
	{
		return city;
	}

	public void setCity(City city )
	{
		this.city = city;
	}

	@Autowired
	public void setAreaService(AreaService areaService )
	{
		this.areaService = areaService;
	}
	
	public String findCities() throws Exception
	{
		OutputJson(areaService.findCities());
		return null;
	}
	
	public String findProvinces() throws Exception
	{
		OutputJson(areaService.findProvinces());
		return null;
	}
	
	public String addCities() throws Exception
	{
		OutputJson(getMessage(areaService.addCities(getModel())),Constants.TEXT_TYPE_PLAIN);
		return null;
	}

	public City getModel()
	{
		if (null==city)
		{
			city=new City();
		}
		return city;
	}
}
