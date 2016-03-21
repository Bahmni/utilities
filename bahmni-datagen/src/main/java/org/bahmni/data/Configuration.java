package org.bahmni.data;

import freemarker.template.TemplateExceptionHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.client.RestTemplate;

import java.io.File;
import java.io.IOException;

@org.springframework.context.annotation.Configuration
public class Configuration {

	public static final String AUTH_STRING = "Basic c3VwZXJtYW46QWRtaW4xMjM=";

	@Bean
	public freemarker.template.Configuration getFreemarkerConfig() throws IOException {
		freemarker.template.Configuration freemarkerTemplateConfig = new freemarker.template.Configuration(
				freemarker.template.Configuration.VERSION_2_3_22);
		freemarkerTemplateConfig.setDirectoryForTemplateLoading(new File("./src/main/resources"));
		freemarkerTemplateConfig.setDefaultEncoding("UTF-8");
		freemarkerTemplateConfig.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);

		return freemarkerTemplateConfig;
	}

	@Bean
	public RestTemplate restTemplate(){
		return new RestTemplate();
	}

	@Bean
	public HttpHeaders httpHeaders(){
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set(HttpHeaders.AUTHORIZATION,AUTH_STRING);
		return headers;

	}

}
