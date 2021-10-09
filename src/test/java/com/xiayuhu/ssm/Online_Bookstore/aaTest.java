package com.xiayuhu.ssm.Online_Bookstore;

import com.xiayuhu.ssm.Online_Bookstore.entity.User;
import com.xiayuhu.ssm.Online_Bookstore.dao.UserDao;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class aaTest {




    Logger logger=  LoggerFactory.getLogger(aaTest.class);

    @Test
    public void test() {
        logger.debug("debug message");
        logger.info("info message");
        logger.warn("warning message");
        logger.error("error message");
        logger.warn("login message");
    }

}
