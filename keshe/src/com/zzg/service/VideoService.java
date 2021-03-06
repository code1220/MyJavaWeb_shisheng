package com.zzg.service;

import java.util.List;
import java.util.Map;

import com.zzg.dao.VideoDao;
import com.zzg.entity.Data;
import com.zzg.entity.Video;

public class VideoService {
	VideoDao videoDao=new VideoDao();

	public void add(Video video) {
		videoDao.insert(video);
	}

	public List<Map<String, Object>> findAll(int index,int pageSize,String key) {
		return videoDao.findAll(index,pageSize,key);
	}

	public void delById(String id) {
		videoDao.delById(id);
		
	}

	public List<Map<String, Object>> findById(String id) {
		return videoDao.findById(id);
	}
	
	public List<Map<String, Object>> findCount(String key) {
		return videoDao.findCount(key);
	}

	public void deleteMore(String ids[]){
		videoDao.delete(ids);
	}

}
