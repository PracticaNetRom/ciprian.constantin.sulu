package ro.netrom.summercamp.summercamp2017.controller;




import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;

import ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO;
import ro.netrom.summercamp.summercamp2017.service.AnnouncementServiceImpl;

@Controller
@RequestMapping("/announcements")
public class AnnouncementController {
	
	static Log lOG = LogFactory.getLog(AnnouncementController.class.getName());

	@Autowired
    private AnnouncementServiceImpl service;
	@Autowired
	private ObjectMapper mapper;

    @RequestMapping( method = RequestMethod.GET)
    public String findAll(Model model) {
        model.addAttribute("announcements", service.findAll());
        model.addAttribute("newAnnouncement", new AnnouncementDTO());
        return "index";
    }



    @RequestMapping(value = "/add.do", method = RequestMethod.POST)
    public String create(@Valid @ModelAttribute("newAnnouncement") AnnouncementDTO announcement) {
        service.create(announcement);
        lOG.info("Announcement to string: " + announcement.toString());
        return "redirect:/announcements";
    }
    
    
}
