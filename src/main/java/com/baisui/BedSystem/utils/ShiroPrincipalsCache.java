package com.baisui.BedSystem.utils;

import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@Component
public class ShiroPrincipalsCache {
	
	public static Map<String, SimpleAuthorizationInfo> cache = new HashMap<String, SimpleAuthorizationInfo>();
	
	public static void put(String userName, SimpleAuthorizationInfo authorizationInfo) {
		cache.put(getKey(userName), authorizationInfo);
	}
	
	public static SimpleAuthorizationInfo get(String userName) {
		return cache.get(getKey(userName));
	}
	
	public static void remove(String userName) {
		cache.remove(getKey(userName));
	}
	
	public static void removeAll() {
		cache.clear();
	}
	
	public static String getKey(String userName) {
		return MD5.encode(new StringBuffer("shiroAuth").append(userName).toString());
	}
	
}
