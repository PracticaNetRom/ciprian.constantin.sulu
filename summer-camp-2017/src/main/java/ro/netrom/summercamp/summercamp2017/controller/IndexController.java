package ro.netrom.summercamp.summercamp2017.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO;

@Controller
public class IndexController {

	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
	public String getIndex() {
		return "index";
	}
	
	 @RequestMapping(value = "/post", method = RequestMethod.GET)
	    public String findAl(Model model) {
	        model.addAttribute("newAnnouncement", new AnnouncementDTO());
	        return "addAnnouncement";
	    }
	
}
