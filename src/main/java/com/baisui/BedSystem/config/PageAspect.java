package com.baisui.BedSystem.config;

import java.util.Map;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import com.github.pagehelper.PageHelper;

@Aspect
@Component
public class PageAspect {

	@Pointcut("execution(public com.baisui.BedSystem.utils.DataGridPage com.baisui.BedSystem.service.impl.*..*List(..))")
	public void page() {}
	
	@Before(value = "page()")
	public void before(JoinPoint joinPoint) {
		Object[] args = joinPoint.getArgs();
		Map params = (Map) args[0];
		int pageNum = 0;
		int pageSize = 20;
		if(params.containsKey("page")) pageNum = Integer.parseInt((String) params.get("page"));
		if(params.containsKey("rows")) pageSize = Integer.parseInt((String) params.get("rows"));
		PageHelper.startPage(pageNum, pageSize);
	}
}
