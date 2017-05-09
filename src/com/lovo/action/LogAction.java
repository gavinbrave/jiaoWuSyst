package com.lovo.action;
import java.sql.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lovo.bean.CutPageBean;
import com.lovo.service.ILogBeanService;

@Controller
@RequestMapping("/log")
public class LogAction {
	@Resource
	ILogBeanService log;
	@RequestMapping("findAll")
	public void findAll(int pageNO,Date endTime,Date startTime,HttpServletResponse response) throws Exception{
		CutPageBean bean= log.findByItem(pageNO, endTime, startTime);
		System.out.println(bean);
		ObjectMapper om=new ObjectMapper();
		
		om.writeValue(response.getWriter(), bean);
	}
}
