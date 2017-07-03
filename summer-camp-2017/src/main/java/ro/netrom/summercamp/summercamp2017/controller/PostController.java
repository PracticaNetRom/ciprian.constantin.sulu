//package ro.netrom.summercamp.summercamp2017.controller;
//
//import javax.validation.Valid;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO;
//import ro.netrom.summercamp.summercamp2017.service.AnnouncementServiceImpl;
//
//@Controller
//@RequestMapping("/create")
//public class PostController {
//
//	@Autowired
//    private AnnouncementServiceImpl service;
//	
//	@RequestMapping(method = RequestMethod.POST)
//    public String create(@Valid @ModelAttribute("newAnnouncement") AnnouncementDTO announcement) {
//        service.create(announcement);
//        return "redirect:/";
//    }
//}
