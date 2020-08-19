package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TKetiDAO;
import com.model.TKeti;
import com.opensymphony.xwork2.ActionSupport;

public class ketiAction extends ActionSupport
{
	private int ketiId;
	private String ketiJiaoshi;
	private String ketiName;
	private String ketiDel;
	
//	private TKechengDAO kechengDAO;
	private TKetiDAO ketiDAO;
	private String message;
	private String path;
	
	
	public String ketiAdd()
	{
		TKeti keti=new TKeti();
		keti.setKetiJiaoshi(ketiJiaoshi);
		keti.setKetiName(ketiName);
		keti.setKetiDel("no");
		ketiDAO.save(keti);
		this.setMessage("录入成功");
		this.setPath("ketiManage.action");
		return "succeed";
	}
	
	public String ketiManage()
	{
		String sql = "from TKeti where ketiDel='no'";
		List ketiList=ketiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("ketiList", ketiList);
		return ActionSupport.SUCCESS;
	}
	public String ketiDel()
	{
		TKeti keti=ketiDAO.findById(ketiId);
		keti.setKetiDel("yes");
		ketiDAO.getHibernateTemplate().update(keti);
		this.setMessage("删除成功");
		this.setPath("ketiManage.action");
		return "succeed";
	}
	
	
	public String ketiEditPre()
	{
		TKeti keti=ketiDAO.findById(ketiId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("keti", keti);
		return ActionSupport.SUCCESS;
	}
	
	public String ketiEdit()
	{
		TKeti keti=ketiDAO.findById(ketiId);
		keti.setKetiJiaoshi(ketiJiaoshi);
		keti.setKetiName(ketiName);
		ketiDAO.attachDirty(keti);
		this.setMessage("更新成功");
		this.setPath("keManage.action");
		return "succeed";
	}
	
	public String ketiAllAll()
	{
		String sql = "from TKeti where ketiDel='no'";
		List ketiList=ketiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("ketiList", ketiList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String ketiSearch()
	{
		String sql = "from TKeti where ketiDel='no' and ketiName like '%"+ketiName.trim()+"%'";
		List ketiList=ketiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("ketiList", ketiList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String getketiJiaoshi()
	{
		return ketiJiaoshi;
	}
	
	public void setKetiJiaoshi(String ketiJiaoshi)
	{
		this.ketiJiaoshi = ketiJiaoshi;
	}
	public TKetiDAO getKetiDAO()
	{
		return ketiDAO;
	}
	public void setKetiDAO(TKetiDAO ketiDAO)
	{
		this.ketiDAO = ketiDAO;
	}
	public int getKetiId()
	{
		return ketiId;
	}
	public void setKetiId(int ketiId)
	{
		this.ketiId = ketiId;
	}
	
	public String getKetiName()
	{
		return ketiName;
	}
	public void setKetiName(String ketiName)
	{
		this.ketiName = ketiName;
	}
	
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
	
}
