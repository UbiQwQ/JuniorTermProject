package com.innovation.util;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/**
 * @Auther: Innovation
 * @Date: 2018/6/6 18:56
 * @Vison: 1.0
 * @Description:
 */
public class NetUtilImpl implements NetUtil {

    /**
     * 功能描述:
     *获取json
     * @param: String url
     * @return: String json
     * @auther: Innovation
     * @date: 2018/6/6 18:59
     */
    @Override
    public String getJson(String url) throws IOException{
        HttpURLConnection connection = null;
        URL url2 = new URL(url);
        connection=(HttpURLConnection) url2.openConnection();
        /*对和风天气提供的链接进行连接*/
        connection.connect();
        /*获取状态码*/
        int recode = connection.getResponseCode();
        BufferedReader bufferedReader = null;
        String json = new String();
        /*如果连接成功*/
        if(recode==200) {
            /*对数据进行读，并且封装到json这个字符串，并且返回json*/
            InputStream inputStream = connection.getInputStream();
            bufferedReader=new BufferedReader(new InputStreamReader(inputStream,"UTF-8"));
            String string = null;

            while ((string=bufferedReader.readLine())!=null) {

                json=json+string;
                ByteBuffer buffer = ByteBuffer.wrap(new String(string).getBytes("UTF-8"));
            }
        }

        return json;
    }

}
