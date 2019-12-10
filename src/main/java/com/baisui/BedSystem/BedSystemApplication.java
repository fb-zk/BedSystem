package com.baisui.BedSystem;

import com.github.pagehelper.PageHelper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ImportResource;

import java.util.Properties;

@SpringBootApplication
@ImportResource(locations = {"classpath:spring-cache.xml"})
@MapperScan(basePackages = {"com.baisui.BedSystem.mapper"})
public class BedSystemApplication  {

	//重写configure方法
//	@Override
//	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
//		return application.sources(BedSystemApplication.class);
//	}

	public static void main(String[] args) {
		SpringApplication.run(BedSystemApplication.class, args);
	}
	
	@Bean
	public PageHelper pageHelper() {
		PageHelper pageHelper = new PageHelper();
		Properties properties = new Properties();
		//properties.setProperty("offsetAsPageNum","true");
		properties.setProperty("rowBoundsWithCount","true");
		properties.setProperty("reasonable","true");
		properties.setProperty("dialect","oracle");
		pageHelper.setProperties(properties);
		return pageHelper;
	}

}
