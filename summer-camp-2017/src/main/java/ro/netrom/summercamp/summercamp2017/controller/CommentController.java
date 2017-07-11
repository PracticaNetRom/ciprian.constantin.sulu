package ro.netrom.summercamp.summercamp2017.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ro.netrom.summercamp.summercamp2017.dto.SaveCommentDTO;
import ro.netrom.summercamp.summercamp2017.service.AnnouncementService;
import ro.netrom.summercamp.summercamp2017.service.CommentService;

@Controller
@RequestMapping("/comments")
public class CommentController {

	@Autowired
	private CommentService commentService;
	@Autowired
	private AnnouncementService announcementService;


	@RequestMapping(params = { "id" }, method = RequestMethod.GET)
	public String findAll(@RequestParam("id") Integer announcementId, Model model) {
		model.addAttribute("comments", commentService.findAllForId(announcementId));
		model.addAttribute("announcement", announcementService.findById(announcementId));
		model.addAttribute("newComment", new SaveCommentDTO());
		return "announcementPage";
	}
	


	@RequestMapping(value = "/add.do", method = RequestMethod.POST)
	public String create(@RequestParam(name="aId",required = false) Integer announcementId, 
			@RequestParam(name="pId",required = false) Integer parentId,
			@Valid @ModelAttribute("newComment") SaveCommentDTO comment) {
		commentService.create(comment, announcementId, parentId); 
		return "redirect:/comments?id="+announcementId;
	}
}
