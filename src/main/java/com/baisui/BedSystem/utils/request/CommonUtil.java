package com.baisui.BedSystem.utils.request;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class CommonUtil {
	/**
	 * 处理request传过来的数据
	 * 
	 * **/
	@SuppressWarnings("unchecked")
	public static Map<String,Object> getRequestParams(HttpServletRequest request){
		Map<String,Object> map=new  HashMap<String, Object>();
		for(Iterator iter = request.getParameterMap().entrySet().iterator();iter.hasNext();){ 
	        Map.Entry element = (Map.Entry)iter.next(); 
	        String strKey =(String)element.getKey(); 
	        String[] value=(String[])element.getValue();
	        map.put(strKey, value[0]);
	} 
		return map;
	}
	
}
