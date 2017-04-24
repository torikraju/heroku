
package com.noticeBoard;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.noticeBoard.config.PicturesUploadProperties;

@SpringBootApplication
@EnableConfigurationProperties({ PicturesUploadProperties.class })
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

}
