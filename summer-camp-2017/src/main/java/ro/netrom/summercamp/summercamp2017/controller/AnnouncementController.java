package ro.netrom.summercamp.summercamp2017.controller;




import java.util.Arrays;
import java.util.stream.Collectors;

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
import org.springframework.web.client.RestTemplate;

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
	@Autowired
	private RestTemplate restTemplate;

    @RequestMapping( method = RequestMethod.GET)
    public String findAll(Model model) {
        model.addAttribute("announcements", service.findAll());
        model.addAttribute("category", service.findCategory());
        model.addAttribute("newAnnouncement", new AnnouncementDTO());
        model.addAttribute("cAnnouncement", new AnnouncementDTO());
        return "index";
    }
    
    @RequestMapping(params = {"categ"}, method = RequestMethod.GET)
	public String findCateg(@RequestParam(name = "categ") String categ,Model model) {
        model.addAttribute("announcements", Arrays
				.stream(restTemplate.getForObject("http://194.102.98.245:17281/announcement/list.do",
						AnnouncementDTO[].class))
				.filter(x -> categ.equals(x.getCategoryName())).collect(Collectors.toList()));
        model.addAttribute("category", service.findCategory());
        return "index";
    }
    
    @RequestMapping(value = "/post", method = RequestMethod.GET)
    public String findAl(Model model) {
        model.addAttribute("newAnnouncement", new AnnouncementDTO());
        return "addAnnouncement";
    }

    @RequestMapping(value = "/add.do", method = RequestMethod.POST)
    public String create(@Valid @ModelAttribute("newAnnouncement") AnnouncementDTO announcement) {
        service.create(announcement);
        lOG.info("Announcement to string: " + announcement.toString());
        return "redirect:/announcements";
    }
    
    
}
