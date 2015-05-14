package com.piggsoft.school.web;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Application Lifecycle Listener implementation class ApplicationInitListener
 *
 */
public class ApplicationInitListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ApplicationInitListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent event) {
        String basePath = event.getServletContext().getRealPath("/");
        /*System.setProperty("base.path", basePath);
        System.setProperty("log.path", basePath + "/WEB-INF/log");*/
        System.setProperty("log.path", "E:/log");
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent event) {
        // TODO Auto-generated method stub
    }
	
}
