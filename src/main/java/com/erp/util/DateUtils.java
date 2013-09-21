package com.erp.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class DateUtils
{
	/**定义常量**/
	public static final String DATE_JFP_STR="yyyyMM";
	public static final String DATE_FULL_STR = "yyyy-MM-dd HH:mm:ss";
	public static final String DATE_SMALL_STR = "yyyy-MM-dd";
	public static final String DATE_KEY_STR = "yyMMddHHmmss";
	
	/**
	 * 使用预设格式提取字符串日期
	 * @param strDate 日期字符串
	 * @return
	 */
	public static Date parse(String strDate) {
		return parse(strDate,DATE_FULL_STR);
	}
	
	/**
	 * 使用用户格式提取字符串日期
	 * @param strDate 日期字符串
	 * @param pattern 日期格式
	 * @return
	 */
	public static Date parse(String strDate, String pattern) {
		SimpleDateFormat df = new SimpleDateFormat(pattern);
		try {
			return df.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 两个时间比较
	 * @param date
	 * @return
	 */
	public static int compareDateWithNow(Date date1){
		Date date2 = new Date();
		int rnum =date1.compareTo(date2);
		return rnum;
	}
	
	/**
	 * 两个时间比较(时间戳比较)
	 * @param date
	 * @return
	 */
	public static int compareDateWithNow(long date1){
		long date2 = dateToUnixTimestamp();
		if(date1>date2){
			return 1;
		}else if(date1<date2){
			return -1;
		}else{
			return 0;
		}
	}
	

	/**
	 * 获取系统当前时间
	 * @return
	 */
	public static String getNowTime() {
		SimpleDateFormat df = new SimpleDateFormat(DATE_FULL_STR);
		return df.format(new Date());
	}
	
	/**
	 * 获取系统当前时间
	 * @return
	 */
	public static String getNowTime(String type) {
		SimpleDateFormat df = new SimpleDateFormat(type);
		return df.format(new Date());
	}
	
	/**
	 * 获取系统当前计费期
	 * @return
	 */
	public static String getJFPTime() {
		SimpleDateFormat df = new SimpleDateFormat(DATE_JFP_STR);
		return df.format(new Date());
	}
	
	/**
	 * 将指定的日期转换成Unix时间戳
	 * @param String date 需要转换的日期 yyyy-MM-dd HH:mm:ss
	 * @return long 时间戳
	 */
	public static long dateToUnixTimestamp(String date) {
		long timestamp = 0;
		try {
			timestamp = new SimpleDateFormat(DATE_FULL_STR).parse(date).getTime();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return timestamp;
	}
	
	/**
	 * 将指定的日期转换成Unix时间戳
	 * @param String date 需要转换的日期 yyyy-MM-dd
	 * @return long 时间戳
	 */
	public static long dateToUnixTimestamp(String date, String dateFormat) {
		long timestamp = 0;
		try {
			timestamp = new SimpleDateFormat(dateFormat).parse(date).getTime();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return timestamp;
	}
	
	/**
	 * 将当前日期转换成Unix时间戳
	 * @return long 时间戳
	 */
	public static long dateToUnixTimestamp() {
		long timestamp = new Date().getTime();
		return timestamp;
	}
	
	
	/**
	 * 将Unix时间戳转换成日期
	 * @param long timestamp 时间戳
	 * @return String 日期字符串
	 */
	public static String unixTimestampToDate(long timestamp) {
		SimpleDateFormat sd = new SimpleDateFormat(DATE_FULL_STR);
		sd.setTimeZone(TimeZone.getTimeZone("GMT+8"));
		return sd.format(new Date(timestamp));
	}
}
