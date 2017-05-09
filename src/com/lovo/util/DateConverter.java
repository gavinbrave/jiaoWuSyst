package com.lovo.util;

import java.sql.Date;

import org.springframework.core.convert.converter.Converter;

public class DateConverter implements Converter<String,Date>{

	public Date convert(String arg0) {
		if(arg0.matches("\\d{4}-\\d{2}-\\d{2}")){
			return Date.valueOf(arg0);
		}
		return null;
	}
}
