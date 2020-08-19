package com.service;

import java.util.List;

import com.dao.TKetiDAO;

public class ketiService
{
	private TKetiDAO ketiDAO;

	public TKetiDAO getKetiDAO()
	{
		return ketiDAO;
	}

	public void setKetiDAO(TKetiDAO ketiDAO)
	{
		this.ketiDAO = ketiDAO;
	}
	
	public List findAllKeti()
	{
		String sql="from TKeti where ketiDel='no'";
		return ketiDAO.getHibernateTemplate().find(sql);
	}
	
	
	public String findKetiName(int ketiId)
	{
		return ketiDAO.findById(ketiId).getKetiName();
	}

}
