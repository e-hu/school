/**
 * 
 */
package com.piggsoft.school.web.event;

import org.springframework.context.ApplicationEvent;

/**
 * @author piggsoft@gmail.com
 *
 */
public class LoginEvent extends ApplicationEvent{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4983129033138853318L;
	
	
	/**
	 * @param source
	 */
	public LoginEvent(Object source) {
		super(source);
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * @param source
	 */
	public LoginEvent(Object source, Object message) {
		super(source);
	}
	

}
