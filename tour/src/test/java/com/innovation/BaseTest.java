package com.innovation;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Auther: Innovation
 * @Date: 2018/5/28 19:24
 * @Vison: 1.0
 * @Description:
 */
@RunWith(SpringJUnit4ClassRunner.class)
//告诉Junit Spring配置文件的位置
@ContextConfiguration({"classpath:spring/spring-*.xml"})
public class BaseTest {
}
