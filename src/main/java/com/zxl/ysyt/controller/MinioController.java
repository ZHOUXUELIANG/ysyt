package com.zxl.ysyt.controller;

import com.zxl.ysyt.config.MinioConfig;
import com.zxl.ysyt.util.MinioConstant;
import com.zxl.ysyt.util.MinioUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.InputStream;
import java.util.UUID;

/**
 * @author 汉卿
 * @date 2021/4/15 13:31
 */
@RestController
public class MinioController {

    @Autowired
    private MinioUtil minioUtil;

    /**
     * 上传图片
     *
     * @param file
     * @return
     */

    @PostMapping("/uploadImage")      //http://localhost:8285/uploadImage
    public String uploadImage(@RequestParam(name = "file") MultipartFile file) {
        if (file.isEmpty() || file.getSize() == 0) {
            return "error";
        }
        try {
            String fileName = null;
            if ((fileName = file.getOriginalFilename()) != null) {
                String newName = UUID.randomUUID().toString().replaceAll("-", "")
                        + fileName.substring(fileName.lastIndexOf("."));
                File saveFile = new File(newName);
                InputStream inputStream = file.getInputStream();
                minioUtil.putObject(MinioConstant.BUCKET_NAME_IMAGE, newName, inputStream, file.getContentType());
                inputStream.close();
                return minioUtil.getObjectUrl(MinioConstant.BUCKET_NAME_IMAGE, newName);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "error";
    }


}
