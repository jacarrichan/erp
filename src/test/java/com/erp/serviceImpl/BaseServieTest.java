package com.erp.serviceImpl;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

@ContextConfiguration(locations = { "classpath:/spring*.xml",
		"classpath:/spring-hibernate.xml", })
public class BaseServieTest extends AbstractJUnit4SpringContextTests {
	@Before
	public void init() {
		System.out.println("junit start........................");
	}

	@Test
	public void test() {
	}

	@After
	public void destory() {
	}
}
