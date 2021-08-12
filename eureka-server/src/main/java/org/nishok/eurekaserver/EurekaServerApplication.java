package org.nishok.eurekaserver;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

import static org.springframework.boot.SpringApplication.run;

@SpringBootApplication
@EnableEurekaServer
public class EurekaServerApplication {

    public static void main(String[] args) {
        run(EurekaServerApplication.class, args);
    }

}
