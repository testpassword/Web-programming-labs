package logic;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan(basePackages = {"models"})
public class RursusApplication {
    public static void main(String[] args) {
        SpringApplication.run(RursusApplication.class, args);
    }
}