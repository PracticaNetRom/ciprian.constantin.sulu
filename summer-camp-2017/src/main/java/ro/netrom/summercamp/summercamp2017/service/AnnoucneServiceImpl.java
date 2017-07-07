package ro.netrom.summercamp.summercamp2017.service;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO;

@Service
public class AnnoucneServiceImpl {

	@Autowired
	private RestTemplate restTemplate;
	

	
	public AnnouncementDTO findAll() {
	    return  restTemplate.getForObject("http://summercamp.api.stage03.netromsoftware.ro/api/announcement/getById.do", AnnouncementDTO.class);
	}
	
	public AnnouncementDTO create(AnnouncementDTO announcement) {
	    return restTemplate.postForObject("http://194.102.98.245:17281/announcement/save.do", announcement, AnnouncementDTO.class);
	}
}
