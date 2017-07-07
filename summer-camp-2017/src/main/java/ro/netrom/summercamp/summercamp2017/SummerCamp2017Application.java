package ro.netrom.summercamp.summercamp2017;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.client.RestTemplate;

import ro.netrom.summercamp.summercamp2017.service.AnnoucneServiceImpl;
import ro.netrom.summercamp.summercamp2017.service.AnnouncementServiceImpl;
import ro.netrom.summercamp.summercamp2017.service.CommentServiceImpl;

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
	public AnnouncementServiceImpl announcementServiceImpl() {
		return new AnnouncementServiceImpl();
	}
	@Bean
	public CommentServiceImpl commentServiceImpl() {
		return new CommentServiceImpl();
	}
	@Bean
	public AnnoucneServiceImpl annoucneServiceImpl() {
		return new AnnoucneServiceImpl();
	}
}
