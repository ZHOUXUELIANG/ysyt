package com.zxl.ysyt.util;

import org.springframework.beans.factory.annotation.Value;

/**
 * @author 汉卿
 * @date 2021/4/15 14:13
 */
public interface MinioConstant {
    @Value("${minio.bucketNameImage}")
    String BUCKET_NAME_IMAGE = "image";

    @Value("${minio.bucketNameTxt}")
    String BUCKET_NAME_Txt = "txt";
}
