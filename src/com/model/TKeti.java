package com.model;

import java.util.Date;

/**
 * TKeti generated by MyEclipse Persistence Tools
 */

public class TKeti implements java.io.Serializable
{

	// Fields

	private Integer ketiId;

	private String ketiJiaoshi;

	private String ketiName;

	private String ketiDel;
	
	// Constructors

	/** default constructor */
	public TKeti()
	{
	}

	/** full constructor */
	public TKeti(String ketiJiaoshi, String ketiName,
			String ketiDel)
	{
		this.ketiJiaoshi = ketiJiaoshi;
		this.ketiName = ketiName;
		this.ketiDel = ketiDel;
	}

	// Property accessors

	public Integer getKetiId()
	{
		return this.ketiId;
	}

	public void setKetiId(Integer ketiId)
	{
		this.ketiId = ketiId;
	}

	public String ketiJiaoshi()
	{
		return this.ketiJiaoshi;
	}

	public void setKetiJiaoshi(String ketiJiaoshi)
	{
		this.ketiJiaoshi = ketiJiaoshi;
	}

	public String getKetiName()
	{
		return this.ketiName;
	}

	public void setKetiName(String ketiName)
	{
		this.ketiName = ketiName;
	}


	public String getKetiDel()
	{
		return ketiDel;
	}

	public void setKetiDel(String ketiDel)
	{
		this.ketiDel = ketiDel;
	}

}