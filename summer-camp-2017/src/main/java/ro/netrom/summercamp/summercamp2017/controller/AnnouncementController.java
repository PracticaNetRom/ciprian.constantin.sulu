package ro.netrom.summercamp.summercamp2017.controller;




import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;



import ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO;
import ro.netrom.summercamp.summercamp2017.service.AnnouncementServiceImpl;

@Controller
@RequestMapping("/announcement")
public class AnnouncementController {

	@Autowired
    private AnnouncementServiceImpl service;

    @RequestMapping(method = RequestMethod.GET)
    public String findAll(Model model) {
        model.addAttribute("announcements", service.findAll());
        model.addAttribute("newAnnouncement", new AnnouncementDTO());
        return "announcement";
    }
    
//    @RequestMapping(value = "/usersList", method = RequestMethod.GET)
//    public @ResponseBody List<AnnouncementDTO> usersList() {
//       // logger.debug("get json user list");
//        return service.findAll();
//    }
//    
    @RequestMapping(value = "announcement", method = RequestMethod.GET)
    public ModelAndView getUsers() {
       
        ModelAndView mv= new ModelAndView("index");
        mv.addObject("announcementModel", service.findAll());
        return mv;
    }



    @RequestMapping(value = "/add.do",method = RequestMethod.POST)
    public String create(@Valid @ModelAttribute("newAnnouncement") AnnouncementDTO announcement) {
        service.create(announcement);
        return "redirect:/";
    }
    
   
}
