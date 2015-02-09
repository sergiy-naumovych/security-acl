package org.krams.tutorial.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Retrieves welcome pages for various roles.
 * These pages are secured via intercept-urls. See the security-context.xml file
 */
@Controller
@RequestMapping("/role")
public class RoleController {

	protected static Logger logger = Logger.getLogger("controller");
	
    /**
     * Retrieves the admin page.
     * <p>
     * Only clients with ROLE_ADMIN can see this page
     */
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String getAdminPage() {
    	logger.debug("Received request to show admin page");
    	
    	// This will resolve to /WEB-INF/jsp/role/adminpage.jsp
    	return "role/adminpage";
	}
    
    /**
     * Retrieves the user page.
     * <p>
     * Only clients with ROLE_ADMIN and ROLE_USER can see this page
     */
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String getUserPage() {
    	logger.debug("Received request to show user page");
    	
    	// This will resolve to /WEB-INF/jsp/role/userpage.jsp
    	return "role/userpage";
	}
    
    /**
     * Retrieves the visitor page.
     * <p>
     * Only clients with ROLE_ADMIN,  ROLE_USER, and ROLE_VISITOR can see this page
     */
    @RequestMapping(value = "/visitor", method = RequestMethod.GET)
    public String getVisitorPage() {
    	logger.debug("Received request to show visitor page");
    	
    	// This will resolve to /WEB-INF/jsp/role/visitorpage.jsp
    	return "role/visitorpage";
	}
}