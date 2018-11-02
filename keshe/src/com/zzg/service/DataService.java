package com.zzg.service;

import java.util.List;
import java.util.Map;

import com.zzg.dao.DataDao;
import com.zzg.entity.Data;


public class DataService {
	DataDao dataDao=new DataDao();

	public List<Map<String, Object>> findAll(int index,int pageSize,String key) {
		
		return dataDao.findAll(index,pageSize,key);
	}


	public void add(Data data) {
		dataDao.insert(data);
		
	}


	public void delById(String id) {
		dataDao.delById(id);
		
	}


	public List<Map<String, Object>> findCount(String key) {
		// TODO Auto-generated method stub
		return dataDao.findCount(key);
	}


	public void deleteMore(String ids[]){
		dataDao.delete(ids);
	}

}
