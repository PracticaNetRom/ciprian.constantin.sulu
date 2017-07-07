package ro.netrom.summercamp.summercamp2017.service;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO;
import ro.netrom.summercamp.summercamp2017.dto.CommentDTO;

@Service
public class CommentServiceImpl {

	@Autowired
	private RestTemplate restTemplate;
	
	public List<CommentDTO> findAll() {
	    return Arrays.stream(restTemplate.getForObject("http://194.102.98.245:17281/comments/list.do?announcementId", CommentDTO[].class)).collect(Collectors.toList());
	}
	public CommentDTO create(CommentDTO comment) {
	    return restTemplate.postForObject("http://summercamp.api.stage03.netromsoftware.ro/api/comments/save.do", comment, CommentDTO.class);
	}
}
