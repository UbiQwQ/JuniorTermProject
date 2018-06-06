package com.innovation.util;

import java.io.FileReader;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * @Auther: Innovation
 * @Date: 2018/6/6 19:00
 * @Vison: 1.0
 * @Description:
 */
public class JsonUtilImpl implements JsonUtil {

    /**
     * 功能描述:
     *解析json
     * @param:  String json
     * @return: List<String> lists
     * @auther: Innovation
     * @date: 2018/6/6 19:06
     */
    @Override
    public List<String> getData(String json) {



        ArrayList<String>  lists = new ArrayList<String>();
        JsonParser jsonParser = new JsonParser();//json解析器
        JsonObject object=(JsonObject) jsonParser.parse(json);  //创建JsonObject对象
        JsonArray array=object.get("results").getAsJsonArray();//得到json数组
        JsonObject sJsonObject = array.get(0).getAsJsonObject();//按索引得到其中具体数据
        JsonObject location = sJsonObject.get("location").getAsJsonObject();
        JsonObject now = sJsonObject.get("now").getAsJsonObject();

        lists.add(location.get("name").getAsString());
        lists.add(now.get("text").getAsString());
        lists.add(now.get("temperature").getAsString());
//		lists.add(now.get("humidity").getAsString());
//		lists.add(now.get("wind_speed").getAsString());
        return lists;

    }
}
