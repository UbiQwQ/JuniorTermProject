package com.innovation.util;

import javax.mail.*;
import java.util.Date;
import java.util.Properties;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * @ClassName: EmailUtil
 * @Description:
 * @Author: li
 * @Date: 2018/6/7 8:50
 * @Version: 1.0
 */
public class EmailUtil {
    public static String MAIL_HOST = "pop.126.com";//服务器ip
    public static int MAIL_PORT = 110;//端口
    public static String MAIL_TYPE = "pop3";//服务类型
    public static String MAIL_AUTH = "true";
    public static String MAIL_ATTACH_PATH = "D:";//附件存放目录

    public Session getSessionMail() throws Exception {
        Properties properties = System.getProperties();
        properties.put("mail.smtp.host", MAIL_HOST);
        properties.put("mail.smtp.auth", MAIL_AUTH);
        Session sessionMail = Session.getInstance(properties, null);
        return sessionMail;
    }
    public Message[] getEmail() throws Exception{
            Store store = null;
            Folder folder = null;
            int messageCount = 0;
            URLName urln = null;
            // TODO Auto-generated method stub
            urln = new URLName(MAIL_TYPE,MAIL_HOST,MAIL_PORT, null,"lyh19970824@126.com","15266883469li");
            store = getSessionMail().getStore(urln);
            store.connect();
            //获得邮箱内的邮件夹Folder对象，以"只读"打开
            folder = store.getFolder("INBOX");//打开收件箱
            folder.open(Folder.READ_ONLY);//设置只读
            //获得邮件夹Folder内的所有邮件个数
            messageCount = folder.getMessageCount();// 获取所有邮件个数
            Message[] message = folder.getMessages();
//            for (int i=1;i<message.length;i++) {
//                System.out.println(message[i].getSubject());
//            }

            System.out.println(messageCount);
            folder.close(false);
            store.close();
            return message;
    }

    public void sendEmail(String myEmailAcount,String myEmailPassWord) throws Exception {
        Properties props = new Properties();                    // 参数配置
        props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
        props.setProperty("mail.smtp.host", "smtp.126.com");   // 发件人的邮箱的 SMTP 服务器地址
        props.setProperty("mail.smtp.auth", "true");            // 需要请求认证
        // 2. 根据配置创建会话对象, 用于和邮件服务器交互
        Session session = Session.getInstance(props);
        session.setDebug(true);                                 // 设置为debug模式, 可以查看详细的发送 log
        // 3. 创建一封邮件
        MimeMessage message = createMimeMessage(session, myEmailAcount, "1920727772@qq.com");

        // 4. 根据 Session 获取邮件传输对象
        Transport transport = session.getTransport();
        transport.connect(myEmailAcount, myEmailPassWord);
        // 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
        transport.sendMessage(message, message.getAllRecipients());
        // 7. 关闭连接
        transport.close();
    }

    public static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail) throws Exception {
        // 1. 创建一封邮件
        MimeMessage message = new MimeMessage(session);

        // 2. From: 发件人（昵称有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改昵称）
        message.setFrom(new InternetAddress(sendMail, "li", "UTF-8"));

        // 3. To: 收件人（可以增加多个收件人、抄送、密送）
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, "XX用户", "UTF-8"));

        // 4. Subject: 邮件主题（标题有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改标题）
        message.setSubject("请求解冻", "UTF-8");

        // 5. Content: 邮件正文（可以使用html标签）（内容有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改发送内容）
        message.setContent("请求解冻", "text/html;charset=UTF-8");

        // 6. 设置发件时间
        message.setSentDate(new Date());

        // 7. 保存设置
        message.saveChanges();
        return message;
    }

}
