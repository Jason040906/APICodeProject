package com.js.jsapiinterface;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class JsapiInterfaceApplication {

    public static void main(String[] args) {
        SpringApplication.run(JsapiInterfaceApplication.class, args);
    }

}
