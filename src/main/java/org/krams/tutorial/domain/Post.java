package org.krams.tutorial.domain;

import java.util.Date;

/**
 * A simple interface for Post objects
 */
public interface Post {

	public Long getId();

	public void setId(Long id);

	public Date getDate();

	public void setDate(Date date);

	public String getMessage();

	public void setMessage(String message);

}