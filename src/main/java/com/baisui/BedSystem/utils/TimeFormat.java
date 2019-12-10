package com.baisui.BedSystem.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 	获取时间格式
 * @Description: TODO
 * @author Cheng_w
 * @date 2019年12月3日 下午2:25:07
 */
public class TimeFormat {
	
	/**
	 * 	返回指定时间戳对象的年月日时分秒形式
	 * @param date
	 * @return
	 */
	public static String nyrhms(Date date) {
		SimpleDateFormat sDateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String timeformate=sDateFormat.format(date);
		return timeformate;
	}
	
	/**
	 * 	返回指定时间戳对象的年月日形式
	 * @param date
	 * @return
	 */
	public static String nyr(Date date) {
		SimpleDateFormat sDateFormat= new SimpleDateFormat("yyyy-MM-dd");
		String time=sDateFormat.format(date);
		return time;
	}
}
