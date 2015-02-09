package org.krams.tutorial.service;

import java.util.List;

import javax.sql.DataSource;

import org.krams.tutorial.domain.Post;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PostFilter;
import org.springframework.security.access.prepost.PreAuthorize;

/**
 * A generic service for handling CRUD operations.
 * <p>
 * The method access-control expressions are specified in this interface.
 */
public interface GenericService {

	/**
	 * Inject the datasource for the bulletingapplication
	 */
	public void setDataSource(DataSource dataSource);

	/**
	 *  Retrieves a single post.
	 *  <p>
	 *  Access-control will be evaluated after this method is invoked.
	 *  returnObject refers to the returned object.
	 */
	@PostAuthorize("hasPermission(returnObject, 'WRITE')")
	public Post getSingle(Long id);

	/**
	 *  Retrieves all posts.
	 *  <p>
	 *  Access-control will be evaluated after this method is invoked.
	 *  filterObject refers to the returned object list.
	 */
	@PostFilter("hasPermission(filterObject, 'READ')")
	public List<Post> getAll();

	/**
	 * Adds a new post.
	 * <p>
	 * We don't provide any access control here because  
	 * the new object doesn't have an id yet. 
	 * <p>
	 * Instead we place the access control on the URL-level because
	 * the Add page shouldn't be visible in the first place.
	 * <p>
	 * There are two places where we can place this restriction:
	 * <pre>
	 * 1. At the controller method
	 * 2. At the external spring-security.xml file</pre>
	 * <p>
	 * 
	 */
	public Boolean add(Post post);

	/**
	 * Edits a post.
	 * <p>
	 * Access-control will be evaluated before this method is invoked.
	 * <b>#post</b> refers to the current object in the method argument. 
	 */
	@PreAuthorize("hasPermission(#post, 'WRITE')")
	public Boolean edit(Post post);

	/**
	 * Deletes a post.
	 * <p>
	 * Access-control will be evaluated before this method is invoked.
	 * <b>#post</b> refers to the current object in the method argument. 
	 */
	@PreAuthorize("hasPermission(#post, 'WRITE')")
	public Boolean delete(Post post);

}