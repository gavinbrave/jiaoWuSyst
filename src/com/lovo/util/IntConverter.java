package com.lovo.util;

import org.springframework.core.convert.converter.Converter;

public class IntConverter implements Converter<String,Integer>{

	public Integer convert(String arg0) {
		if(arg0.matches("\\d+")){
			return Integer.parseInt(arg0);
		}
		return 0;
	}
}
