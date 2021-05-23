package com.zxl.ysyt.controller;

import com.sun.org.apache.bcel.internal.generic.RET;
import com.zxl.ysyt.util.MinioConstant;
import com.zxl.ysyt.util.MinioUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import sun.misc.IOUtils;

import java.io.*;
import java.util.UUID;

/**
 * @author 汉卿
 * @date 2021/4/18 15:47
 */
@RestController
public class WriteTxtController {

    @Autowired
    private MinioUtil minioUtil;

    @PostMapping("/transToTxt")
    public String transToTxt(String str) {
        if (StringUtils.isNotBlank(str)) {
            try{
                InputStream inputStream = new ByteArrayInputStream(str.getBytes("GB2312"));
                String txtName = UUID.randomUUID().toString().replace("-", "") + ".txt";
                minioUtil.putObject(MinioConstant.BUCKET_NAME_Txt, txtName, inputStream, "text/*");
                inputStream.close();
                return minioUtil.getObjectUrl(MinioConstant.BUCKET_NAME_Txt, txtName);
            }catch(Exception e){
                e.printStackTrace();
            }
        }

        return null;
    }


}
