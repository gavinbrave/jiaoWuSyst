package com.lovo.service.impl;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lovo.bean.AnnouncementBean;
import com.lovo.bean.CutPageBean;
import com.lovo.service.IAnnouncementService;

@Service("ancs")
@Transactional(readOnly=false,rollbackFor=Exception.class)
public class AnnouncementServiceImpl extends BaseService implements IAnnouncementService{

	public void add(AnnouncementBean bean) throws Exception {
		this.client.insert("announcement.add", bean);
	}

	public void del(int id) throws Exception {
		this.client.delete("announcement.del",id);
	}

	public AnnouncementBean findById(int annId) throws Exception {
		return (AnnouncementBean) this.client.queryForObject("announcement.findById", annId);
	}

	public CutPageBean findByItem(int pageNO, Date endTime, Date startTime,
			String name) throws Exception {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("endTime", endTime);
		map.put("startTime", startTime);
		map.put("name", name);
		return this.cut(pageNO, "announcement.findCutPage", "announcement.count", map);
	}
	public static void main(String[] args) {
		ApplicationContext c=new ClassPathXmlApplicationContext("app*.xml");
		IAnnouncementService service=(IAnnouncementService)c.getBean("ancs");
		try {
//			service.add(null, null, null);
//			service.add(new int[]{3,4},new AnnouncementBean("今天发奖金", 
//					"地上有曾班", "普通", "1.txt",new Date(System.currentTimeMillis())));
//			service.del(3);
//			System.out.println(service.findById(1));
//			service.findByIdByLook(1, 1);
//			System.out.println();
//			System.out.println(service.findByItem(1, "",Date.valueOf("2012-11-11") ,
//					Date.valueOf("2010-10-10"), "     ".trim()));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
