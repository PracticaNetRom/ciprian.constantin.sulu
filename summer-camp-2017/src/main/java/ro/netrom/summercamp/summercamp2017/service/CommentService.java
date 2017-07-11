package ro.netrom.summercamp.summercamp2017.service;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO;
import ro.netrom.summercamp.summercamp2017.dto.CommentDTO;
import ro.netrom.summercamp.summercamp2017.dto.SaveCommentDTO;

@Service
public class CommentService {

	@Autowired
	private RestTemplate restTemplate;

	public List<CommentDTO> findAllForId(Integer announcementId) {
	    return Arrays.stream(restTemplate.getForObject(
				"http://194.102.98.245:17281/comments/list.do?announcementId=" + announcementId, CommentDTO[].class))
				.collect(Collectors.toList());
	}

	public CommentDTO create(SaveCommentDTO  comment,Integer announcementId, Integer parentId) {
		return restTemplate.postForObject(
				"http://194.102.98.245:17281/comments/save.do?announcementId=" + announcementId +
				(parentId != null ? "&parentId=" + parentId : ""),
				comment, CommentDTO.class);
	}
	
}
