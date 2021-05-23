package com.zxl.ysyt.config;

import io.minio.MinioClient;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Data
@Configuration
@ConfigurationProperties(prefix = "minio")
public class MinioConfig {

    /**
     * endpoint
     * accessKey
     * secretKey
     */
    private String endpoint;
    private String accessKey;
    private String secretKey;

    @Bean
    public MinioClient getMinioClient(){
        MinioClient minioClient = MinioClient.builder()
                .endpoint(endpoint)
                .credentials(accessKey,secretKey)
                .build();
        return minioClient;
    }
}