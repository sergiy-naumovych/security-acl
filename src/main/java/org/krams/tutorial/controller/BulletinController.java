/**
 * 
 */
package org.krams.tutorial.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.krams.tutorial.service.GenericService;
import org.krams.tutorial.service.PersonalService;
import org.krams.tutorial.service.PublicService;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles Bulletin related requests
 */
@Controller
@RequestMapping("/bulletin")
public class BulletinController{
        
	protected static Logger logger = Logger.getLogger("controller");

	@Resource(name="adminService")
	private GenericService adminService;
	
	@Resource(name="personalService")
	private GenericService personalService;
	
	@Resource(name="publicService")
	private GenericService publicService;
	
	/**
	 * Retrieves the View page. 
	 * <p>
	 * This loads all authorized posts.
	 */
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public String getViewAllPage(Model model) {
    	logger.debug("Received request to view all page");
    
    	// Retrieve items from service and add to model
    	model.addAttribute("adminposts", adminService.getAll());
    	model.addAttribute("personalposts", personalService.getAll());
    	model.addAttribute("publicposts", publicService.getAll());
    	
    	// Add our current role and username
    	model.addAttribute("role", SecurityContextHolder.getContext().getAuthentication().getAuthorities());
    	model.addAttribute("username", SecurityContextHolder.getContext().getAuthentication().getName());
    	
    	// This will resolve to /WEB-INF/jsp/bulletinpage.jsp
    	return "bulletinpage";
	}
}