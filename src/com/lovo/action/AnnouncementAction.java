package com.lovo.action;

import java.sql.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.lovo.bean.AnnouncementBean;
import com.lovo.bean.CutPageBean;
import com.lovo.service.IAnnouncementService;

@Controller
@RequestMapping("/announcement")
public class AnnouncementAction {
	@Resource
	private IAnnouncementService announcementService;
	
	
	@RequestMapping("/findByItems")
	public void findByItems(int pageNO, Date endTime, Date startTime,
			String name,HttpServletResponse response) throws Exception{
		CutPageBean cutPage=announcementService.findByItem(pageNO, endTime, startTime, name);
		ObjectMapper om = new ObjectMapper();
		om.writeValue(response.getWriter(), cutPage);
	}
	@RequestMapping("/del")
	public void del(int id) throws Exception {
		announcementService.del(id);
	}
	@RequestMapping("/findById")
	public String findById(int annId,HttpServletRequest request) throws Exception {
		AnnouncementBean bean=announcementService.findById(annId);
		request.setAttribute("ann", bean);
		return "/jsp/notice_show.jsp";
	}
	
	
	@RequestMapping("add")
	public String add( AnnouncementBean bean,MultipartFile imgFile,HttpServletRequest request)throws Exception{
		
		bean.setCreateTime(new Date(System.currentTimeMillis()));
		announcementService.add(bean);
		
		return "/jsp/notice_main.jsp";
	}
}
