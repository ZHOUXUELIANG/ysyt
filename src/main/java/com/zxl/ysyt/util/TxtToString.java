package com.zxl.ysyt.util;

import com.alibaba.fastjson.JSON;
import org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;


/**
 * @author 汉卿
 * @date 2021/4/17 13:01
 */
public class TxtToString {
    //private static final String URL = "http://119.23.237.129:9000/txt/三体.txt";

    public static String openFile(String filePath) {
        int HttpResult; // 服务器返回的状态
        String ee = new String();
        try {
            URL url = new URL(filePath); // 创建URL
            URLConnection urlconn = url.openConnection(); // 试图连接并取得返回状态码
            urlconn.connect();
            HttpURLConnection httpconn = (HttpURLConnection) urlconn;
            HttpResult = httpconn.getResponseCode();
            if (HttpResult != HttpURLConnection.HTTP_OK) {
                System.out.print("无法连接到");
            } else {
                int filesize = urlconn.getContentLength(); // 取数据长度
                InputStreamReader isReader = new InputStreamReader(urlconn.getInputStream(), "GB2312");
                BufferedReader reader = new BufferedReader(isReader);
                StringBuffer buffer = new StringBuffer();
                String line; // 用来保存每行读取的内容
                line = reader.readLine(); // 读取第一行
                while (line != null) { // 如果 line 为空说明读完了
                    buffer.append(line); // 将读到的内容添加到 buffer 中
                    buffer.append(" "); // 添加换行符
                    line = reader.readLine(); // 读取下一行
                }
                System.out.print(buffer.toString());
                ee = buffer.toString();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return ee;
    }

//    public static void main(String[] args) {
//        openFile("http://119.23.237.129:9000/txt/三体.txt");
//    }


}
