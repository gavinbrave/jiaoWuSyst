package com.lovo.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.lovo.bean.CutPageBean;

@Service
public class BaseService {
	private int PAGESIZE=5;
	@Resource
	protected SqlMapClient client;
	public CutPageBean cut(int pageNO,String dataSql,String countSql,Map paramMap)throws Exception{
		CutPageBean cutBean=new CutPageBean();
		if(paramMap==null){
			paramMap=new HashMap();
		}
		paramMap.put("start", (pageNO-1)*PAGESIZE);
		paramMap.put("size",PAGESIZE);
		List list=client.queryForList(dataSql,paramMap);
		cutBean.setList(list);
		int count=(Integer)client.queryForObject(countSql,paramMap);
		cutBean.setCount(count);
		if(count%PAGESIZE==0){
			cutBean.setTotalPage(count/PAGESIZE);
		}else{
			cutBean.setTotalPage(count/PAGESIZE+1);
		}
		return cutBean;
	}
}
