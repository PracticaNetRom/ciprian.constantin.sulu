package ro.netrom.summercamp.summercamp2017;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.client.RestTemplate;

import ro.netrom.summercamp.summercamp2017.service.AnnouncementService;
import ro.netrom.summercamp.summercamp2017.service.CommentService;

@SpringBootApplication
@ComponentScan(basePackages = { "ro.netrom.summercamp.summercamp2017.config" })
public class SummerCamp2017Application {

	public static void main(String[] args) {
		SpringApplication.run(SummerCamp2017Application.class, args);
	}
	
	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}
	
	
	
	@Bean
	public AnnouncementService announcementServiceImpl() {
		return new AnnouncementService();
	}
	@Bean
	public CommentService commentServiceImpl() {
		return new CommentService();
	}
	
}
