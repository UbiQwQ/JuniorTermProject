package com.innovation.util;

/**
 * @Auther: Innovation
 * @Date: 2018/6/5 15:22
 * @Vison: 1.0
 * @Description:
 */
public class ImagePathUtil {

    private static String seperator = System.getProperty("file.seperator");

    /**
     * 功能描述:
     * image upload basePath
     * @param:
     * @return: basePath
     * @auther: Innovation
     * @date: 2018/6/5 15:32
     */
    public static String getImgBasePath(){
        String os = System.getProperty("os.name");
        String basePath = "";
        if(os.toLowerCase().startsWith("win")){
            basePath = "E:/Documents/GitHub/JuniorTermProject/image/";
        }else{
            basePath = "/home/image/";
        }
        basePath = basePath.replace("/",seperator);
        return basePath;
    }

    /**
     * 功能描述:
     *userImage upload Path...
     * @param: userId
     * @return: userImagePath(String)
     * @auther: Innovation
     * @date: 2018/6/5 15:33
     */
    public static String getUserImagePath(int userId){
        String imagePath = "user/" + userId + "/";
        return imagePath.replace("/",seperator);
    }
}