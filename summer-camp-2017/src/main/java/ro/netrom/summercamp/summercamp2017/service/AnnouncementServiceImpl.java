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
import ro.netrom.summercamp.summercamp2017.dto.CategoryDTO;

@Service
public class AnnouncementServiceImpl {

	@Autowired
	private RestTemplate restTemplate;

	public List<AnnouncementDTO> findAll() {
		return Arrays.stream(
				restTemplate.getForObject("http://194.102.98.245:17281/announcement/list.do", AnnouncementDTO[].class))
				.collect(Collectors.toList());
	}
	public List<AnnouncementDTO> findByCategoryName(String categoryName) {
		return Arrays.stream(
				restTemplate.getForObject("http://194.102.98.245:17281/announcement/list.do", AnnouncementDTO[].class))
				.filter(x -> categoryName.equals(x.getCategoryName()))
				.collect(Collectors.toList());
	}

	public AnnouncementDTO create(AnnouncementDTO announcement) {
		return restTemplate.postForObject("http://194.102.98.245:17281/announcement/save.do", announcement,
				AnnouncementDTO.class);
	}

	public List<AnnouncementDTO> findCars() {
		return Arrays
				.stream(restTemplate.getForObject("http://194.102.98.245:17281/announcement/list.do",
						AnnouncementDTO[].class))
				.filter(x -> "Cars".equals(x.getCategoryName())).collect(Collectors.toList());
	}

	public List<CategoryDTO> findCategory() {
		return Arrays.stream(
				restTemplate.getForObject("http://summercamp.api.stage03.netromsoftware.ro/api/categories/list.do", CategoryDTO[].class))
				.collect(Collectors.toList());
	}
}
