package com.byland.bylfc.filter;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

/**
 * Application Lifecycle Listener implementation class AppInitListener
 *
 */
public class AppInitListener implements ServletContextListener {

	private DataSource dataSource;
    /**
     * Default constructor. 
     */
    public AppInitListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent event) {
    	Context context;
		try {
			context = new InitialContext();
			Context envContext = (Context) context.lookup("java:/comp/env");
			dataSource = (DataSource) envContext.lookup("jdbc/mine");
			
			event.getServletContext().setAttribute("DS", dataSource);
			System.out.println("INIT DS");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		


    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent event) {
    	event.getServletContext().removeAttribute("DS");
    }
	
}
