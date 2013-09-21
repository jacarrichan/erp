package com.erp.action;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.FileCopyUtils;

import com.erp.model.Bug;
import com.erp.service.BugService;
import com.erp.util.Constants;
import com.erp.util.PageUtil;
import com.erp.util.ResourceUtil;
import com.erp.viewModel.GridModel;
import com.opensymphony.xwork2.ModelDriven;

@Namespace("/bug")
@Action(value = "bugAction")
public class BugAction extends BaseAction implements ModelDriven<Bug>
{
	private static final long serialVersionUID = -3055754336964775139L;
	private BugService bugService;
	private File filedata;
	private String filedataFileName;
	private String filedataContentType;
	
	public File getFiledata()
	{
		return filedata;
	}
	public void setFiledata(File filedata )
	{
		this.filedata = filedata;
	}
	public String getFiledataFileName()
	{
		return filedataFileName;
	}
	public void setFiledataFileName(String filedataFileName )
	{
		this.filedataFileName = filedataFileName;
	}
	public String getFiledataContentType()
	{
		return filedataContentType;
	}
	public void setFiledataContentType(String filedataContentType )
	{
		this.filedataContentType = filedataContentType;
	}

	private Bug bug;
	
	public Bug getBug()
	{
		return bug;
	}
	public void setBug(Bug bug )
	{
		this.bug = bug;
	}
	
	@Autowired
	public void setBugService(BugService bugService )
	{
		this.bugService = bugService;
	}
	
	/**  
	* 函数功能说明
	* Administrator修改者名字
	* 2013-6-22修改日期
	* 修改内容
	* @Title: findBugList 
	* @Description: TODO:查询所有bug
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findBugList() throws Exception
	{
		Map<String, Object> map=new HashMap<String, Object>();
		if (null!=searchValue&&!"".equals(searchValue))
		{
			map.put(getSearchName(), Constants.GET_SQL_LIKE+searchValue+Constants.GET_SQL_LIKE);
		}
		PageUtil pageUtil=new PageUtil(page, rows, searchAnds, searchColumnNames, searchConditions, searchVals);
		GridModel gridModel=new GridModel();
		gridModel.setRows(bugService.findBugList(map, pageUtil));
		gridModel.setTotal(bugService.getCount(map,pageUtil));
		OutputJson(gridModel);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-22修改日期
	* 修改内容
	* @Title: addBug 
	* @Description: TODO:增加bug
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String addBug() throws Exception
	{
		OutputJson(getMessage(bugService.addBug(getModel())),Constants.TEXT_TYPE_PLAIN);
		return null;
	}
	
	/**  
	* 函数功能说明
	* Administrator修改者名字
	* 2013-6-22修改日期
	* 修改内容
	* @Title: delBug 
	* @Description: TODO:删除bug
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String delBug() throws Exception
	{
		OutputJson(getMessage(bugService.delBug(getModel().getBugId())));
		return null;
	}
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-22修改日期
	* 修改内容
	* @Title: upload 
	* @Description: TODO:BUG附件上传
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String upload() throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		HttpServletRequest request=ServletActionContext.getRequest();
		//HttpServletResponse response=ServletActionContext.getResponse();
		
		
		HttpSession session = request.getSession();
		String contextPath=request.getContextPath();
		String savePath = session.getServletContext().getRealPath(File.separator) + ResourceUtil.getUploadDirectory() + "/";// 文件保存目录路径
		String saveUrl =contextPath+ "/" + ResourceUtil.getUploadDirectory() + "/";// 要返回给xhEditor的文件保存目录URL
		SimpleDateFormat yearDf = new SimpleDateFormat("yyyy");
		SimpleDateFormat monthDf = new SimpleDateFormat("MM");
		SimpleDateFormat dateDf = new SimpleDateFormat("dd");
		Date date = new Date();
		String ymd = yearDf.format(date) + "/" + monthDf.format(date) + "/" + dateDf.format(date) + "/";
		savePath += ymd;
		saveUrl += ymd;
		
		System.out.println("request.getContextPath()==>"+request.getContextPath());
		File uploadDir = new File(savePath);// 创建要上传文件到指定的目录
		if (!uploadDir.exists()) {
			uploadDir.mkdirs();
		}

		String contentDisposition = request.getHeader("Content-Disposition");// 如果是HTML5上传文件，那么这里有相应头的
		if (contentDisposition != null) {// HTML5拖拽上传文件
			Long fileSize = Long.valueOf(request.getHeader("Content-Length"));// 上传的文件大小
			String fileName = contentDisposition.substring(contentDisposition.lastIndexOf("filename=\""));// 文件名称
			fileName = fileName.substring(fileName.indexOf("\"") + 1);
			fileName = fileName.substring(0, fileName.indexOf("\""));
			fileName=URLDecoder.decode(fileName, "utf-8");
			ServletInputStream inputStream = null;
			try {
				inputStream = request.getInputStream();
			} catch (IOException e) {
				map.put("err", "上传文件出错！");
			}

			if (inputStream == null) {
				map.put("err", "您没有上传任何文件！");
			}

			if (fileSize > ResourceUtil.getUploadFileMaxSize()) {
				map.put("err", "上传文件超出限制大小！");
				map.put("msg", fileName);
			}else {
				// 检查文件扩展名
				String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
				String newFileName = UUID.randomUUID().toString().replaceAll("-", "") + "." + fileExt;// 新的文件名称
				File uploadedFile = new File(savePath, newFileName);

				try {
					FileCopyUtils.copy(inputStream, new FileOutputStream(uploadedFile));
				} catch (FileNotFoundException e) {
					map.put("err", "上传文件出错！");
				} catch (IOException e) {
					map.put("err", "上传文件出错！");
				}
				map.put("err", "");
				System.out.println("----"+saveUrl);
				Map<String, Object> nm = new HashMap<String, Object>();
				nm.put("url", saveUrl+newFileName);
				nm.put("localfile", fileName);
				nm.put("id", 0);
				map.put("msg", nm);
			}
		} else {// 不是HTML5拖拽上传,普通上传
			if (ServletFileUpload.isMultipartContent(request)) {// 判断表单是否存在enctype="multipart/form-data"
				Long fileSize = Long.valueOf(request.getHeader("Content-Length"));
				if (fileSize>ResourceUtil.getUploadFileMaxSize())
				{
					map.put("err", "上传文件超出限制大小！");
					map.put("msg", filedataFileName);
				}else {
					String fileExt = filedataFileName.substring(filedataFileName.lastIndexOf(".") + 1).toLowerCase();
					String newFileName = UUID.randomUUID().toString().replaceAll("-", "") + "." + fileExt;
					Constants.copy(filedata, savePath+newFileName);
					Map<String, Object> nm = new HashMap<String, Object>();
					map.put("err", "");
					nm.put("url", saveUrl+newFileName);
					nm.put("localfile", filedataFileName);
					nm.put("id", 0);
					map.put("msg", nm);
				}
			} else {
				// 不是multipart/form-data表单
				map.put("err", "上传文件出错！");
			}
		}
		System.out.println(request.getHeader("Content-Length"));
		System.out.println("filedataContentType=>>"+filedataContentType);
		System.out.println("filedata=>>"+filedata);
		System.out.println("filedataFileName==>>"+filedataFileName);
		System.out.println("savePath==>>"+savePath);
		System.out.println("saveUrl==>>"+saveUrl);
		OutputJson(map,Constants.TEXT_TYPE_PLAIN);
		return null;

	}
	
	
	public Bug getModel()
	{ 
		if (bug==null)
		{
			bug=new Bug();
		}
		return bug;
	}
}
