/**
 * 
 */
package com.piggsoft.school.web.event.publisher;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.ApplicationEvent;
import org.springframework.stereotype.Component;

/**
 * @author piggsoft@gmail.com
 *
 */
@Component
public class EventPublisher implements ApplicationContextAware{
	
	protected ApplicationContext applicationContext;

	/* (non-Javadoc)
	 * @see org.springframework.context.ApplicationContextAware#setApplicationContext(org.springframework.context.ApplicationContext)
	 */
	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		this.applicationContext = applicationContext;
	}
	
	public void publishEvent(ApplicationEvent event) {
		applicationContext.publishEvent(event);
	}

}
