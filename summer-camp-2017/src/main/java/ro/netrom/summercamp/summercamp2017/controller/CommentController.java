package ro.netrom.summercamp.summercamp2017.controller;

import java.util.Arrays;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO;
import ro.netrom.summercamp.summercamp2017.dto.CommentDTO;
import ro.netrom.summercamp.summercamp2017.service.CommentServiceImpl;

@Controller
@RequestMapping("/comments")
public class CommentController {

	@Autowired
	private CommentServiceImpl service;
	@Autowired
	private RestTemplate restTemplate;

	@RequestMapping(params = { "id" }, method = RequestMethod.GET)
	public String findAll(@RequestParam("id") Integer id, Model model) {
		model.addAttribute("comments",
				Arrays.stream(restTemplate.getForObject(
						"http://194.102.98.245:17281/comments/list.do?announcementId=" + id, CommentDTO[].class))
						.collect(Collectors.toList()));
		model.addAttribute("newComment", new CommentDTO());
		return "announcementPage";
	}
	
	@RequestMapping( method = RequestMethod.GET)
	public String findCom( Model model) {
		model.addAttribute("newComment", new CommentDTO());
		return "announcementPage";
	}

	@RequestMapping(value = "/add.do", params = { "aId", "pId" }, method = RequestMethod.POST)
	public String create(@RequestParam("aId") Integer aId, @RequestParam("pId") Integer pId,
			@Valid @ModelAttribute("newComment") CommentDTO comment) {
		// service.create(comment);
		restTemplate.postForObject(
				"http://summercamp.api.stage03.netromsoftware.ro/api/comments/save.do?announcementId=" + aId + "&parentId=" + pId,
				comment, CommentDTO.class);
		return "redirect:/announcements";
	}
}
