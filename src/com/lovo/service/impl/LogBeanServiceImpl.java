package com.lovo.service.impl;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lovo.bean.CutPageBean;
import com.lovo.service.ILogBeanService;
@Service("logSer")
@Transactional(readOnly=false,rollbackFor=Exception.class)
public class LogBeanServiceImpl extends BaseService implements ILogBeanService{
	//ok
	public CutPageBean findByItem(int pageNO, Date endTime, Date startTime)
			throws Exception {
		Map paramMap=new HashMap();
		paramMap.put("endTime", endTime);
		paramMap.put("startTime", startTime);
		return this.cut(pageNO, "LogBean.findByItem", "LogBean.findByCount", paramMap);
	}
	public static void main(String[] args) {//测试方法
		ApplicationContext c=new ClassPathXmlApplicationContext("app*.xml");
		ILogBeanService s=(ILogBeanService)c.getBean("logSer");
		try {
			System.out.println(s.findByItem(1, Date.valueOf("1997-12-12"), null));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
