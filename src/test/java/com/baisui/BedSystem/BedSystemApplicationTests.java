package com.baisui.BedSystem;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDateTime;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BedSystemApplicationTests {

	@Test
	public void test(){
		LocalDateTime date = LocalDateTime.now();
		System.out.println("date:" + date);
	}


	@Test
	public void contextLoads() {
	}

}
