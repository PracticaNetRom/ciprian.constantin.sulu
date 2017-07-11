package ro.netrom.summercamp.summercamp2017.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO;
import ro.netrom.summercamp.summercamp2017.service.AnnouncementService;

@Controller
public class PostController {

	@Autowired
    private AnnouncementService service;
	
	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
	public String getIndex() {
		return "index";
	}
	
	 @RequestMapping(value = "/post", method = RequestMethod.GET)
	    public String postControl(Model model) {
	        model.addAttribute("newAnnouncement", new AnnouncementDTO());
	        model.addAttribute("categories", service.findCategories());
	        return "addAnnouncement";
	    }
	
}
