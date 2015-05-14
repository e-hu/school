/**
 * 
 */
package com.piggsoft.school.web.event.listener;

import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

import com.piggsoft.school.web.event.LoginEvent;

/**
 * @author piggsoft@gmail.com
 *
 */
@Component
public class LoginEventListener implements ApplicationListener<LoginEvent>{
	
	
	/* (non-Javadoc)
	 * @see org.springframework.context.ApplicationListener#onApplicationEvent(org.springframework.context.ApplicationEvent)
	 */
	@Override
	public void onApplicationEvent(LoginEvent event) {
	}


}
