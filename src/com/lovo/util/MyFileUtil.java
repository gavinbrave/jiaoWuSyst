package com.lovo.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;


import org.omg.CORBA.Request;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class MyFileUtil {
	/**
	 * 传入一个FormFile对象 返回该对象在img中的文件名字
	 * @param ff FormFile对象
	 * @return  文件名字
	 */
	public static String getPath(String filePath,HttpServletRequest request,CommonsMultipartFile myFile){
		//得到文件名字
		//得到上传文件名字
		String fileName=myFile.getOriginalFilename();
		fileName=System.currentTimeMillis()+fileName.substring(fileName.lastIndexOf("."));
		//得到上传文件的真实路劲
		String path=request.getSession().getServletContext().getRealPath("/"+filePath+"/"+fileName);
		try {
			myFile.getFileItem().write(new File(path));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fileName;
	}
}
