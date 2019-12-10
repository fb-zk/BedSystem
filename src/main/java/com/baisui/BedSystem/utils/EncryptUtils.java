package com.baisui.BedSystem.utils;

import com.baisui.BedSystem.constants.SaltConstant;

/**
 * 加密工具类信息 
 * @author
 *
 */
public class EncryptUtils {
	
	/**
	 * 密码+盐值, MD5加密
	 * @param String passWord	密码明文信息 
	 * @return
	 */
	public static String pwdEncode(String passWord) {
		return MD5.encode(new StringBuffer(SaltConstant.PW_SALT).append(passWord).toString());
	}
}
