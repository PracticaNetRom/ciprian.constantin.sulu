package ro.netrom.summercamp.summercamp2017.service;




import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO;

@Service
public class AnnouncementServiceImpl {
	
	@Autowired
	private RestTemplate restTemplate;
	
//	@Value("${resource.announcement}")
//	private String resource;
//	@Value("${resource.announcement}/{id}")
//	private String idResoiurce;
	
	public List<AnnouncementDTO> findAll() {
	    return Arrays.stream(restTemplate.getForObject("http://194.102.98.245:17281/announcement/list.do", AnnouncementDTO[].class)).collect(Collectors.toList());
	}
	
	public AnnouncementDTO create(AnnouncementDTO announcement) {
	    return restTemplate.postForObject("http://194.102.98.245:17281/announcement/list.do", announcement, AnnouncementDTO.class);
	}
}
