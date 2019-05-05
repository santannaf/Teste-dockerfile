package com.example.Docker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DockerApplication {

	public static void main(String[] args) {
		System.out.println("Aqui e uma aplicacao rodando com docker, esse e o teste , e um teste");
		SpringApplication.run(DockerApplication.class, args);
	}

}
