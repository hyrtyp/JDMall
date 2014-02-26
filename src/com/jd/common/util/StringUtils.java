package com.jd.common.util;

import java.io.PrintStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils
  extends org.apache.commons.lang.StringUtils
{
  public static String change(String paramString)
  {
    if (isBlank(paramString)) {
      return paramString;
    }
    String str1 = Pattern.compile("(<[\\s]*?(script|SCRIPT)[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?(script|SCRIPT)[\\s]*?>)", 2).matcher(paramString).replaceAll(" ");
    String str2 = Pattern.compile("(<[\\s]*?(object|OBJECT)[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?(object|OBJECT)[\\s]*?>)", 2).matcher(str1).replaceAll(" ");
    String str3 = Pattern.compile("(<[\\s]*?(frame|FRAME)[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?(frame|FRAME)[\\s]*?>)", 2).matcher(str2).replaceAll(" ");
    String str4 = Pattern.compile("(<[\\s]*?(iframe|IFRAME)[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?(iframe|IFRAME)[\\s]*?>)", 2).matcher(str3).replaceAll(" ");
    Matcher localMatcher1 = Pattern.compile("(<\\s*?(a|A)\\s*?>?[\\s\\S]*?<?[\\s]*?\\/[\\s]*?(a|A)[\\s]*?>)", 2).matcher(str4);
    String str5 = Pattern.compile("(<[\\s]*?\\/?[\\s]*?form[^>]*?>)", 2).matcher(str4).replaceAll(" ");
    String str6 = Pattern.compile("(<[\\s]*?\\/?[\\s]*?input[^>]*?>)", 2).matcher(str5).replaceAll(" ");
    String str7 = Pattern.compile("(<[\\s]*?\\/?[\\s]*?textarea[^>]*?>)", 2).matcher(str6).replaceAll(" ");
    String str8 = Pattern.compile("(<[\\s]*?\\/?[\\s]*?select[^>]*?>)", 2).matcher(str7).replaceAll(" ");
    String str9 = Pattern.compile("(<[\\s]*?\\/?[\\s]*?option[^>]*?>)", 2).matcher(str8).replaceAll(" ");
    String str10 = Pattern.compile("(<[\\s]*?\\/?[\\s]*?button[^>]*?>)", 2).matcher(str9).replaceAll(" ");
    Pattern localPattern = Pattern.compile("((href|HREF)\\s*=\\s*(\"|'|)(http://)?\\w+\\.360buy\\.com[\\s\\S]*?)", 2);
    for (;;)
    {
      if (!localMatcher1.find()) {
        return str10;
      }
      String str11 = localMatcher1.group(0);
      if (!localPattern.matcher(str11).find())
      {
        Matcher localMatcher2 = Pattern.compile("(href=(\"(http:\\/\\/|\\.\\/|\\/)?[\\s\\S]*?\")|href=('(http:\\/\\/|\\.\\/|\\/)?[\\s\\S]*?'))", 2).matcher(str11);
        while (localMatcher2.find())
        {
          String str12 = localMatcher2.group(0);
          str10 = stringReplace(str10, str12, "href=\"#\"");
        }
      }
    }
  }
  
  public static void main(String[] paramArrayOfString)
  {
    System.out.println(change("<div class=\"mc\">\n\t\t\t\t\t<div id=\"miaozhen7899\" class=\"da da180x348\"></div><a href=\"http://g.miaozhen.com/r.gif?^k=389^p=0sI2^o=http://search.360buy.com/Search?keyword=三星3518\" target=\"_blank\"><img height=\"348\" width=\"180\" border=\"0\" src=\"http://misc.360buyimg.com/da/digi/di_m_49.jpg\"></a></div>\n\t\t\t\t\t<ul class=\"list-h\">\n                        <li class=\"fore\">\n<div class=\"p-img\"><a href=\"http://www.sdfgasdf.com/product/#177130\" target=\"_blank\"><img height=\"100\" width=\"100\" alt=\"飞利浦（PHILIPS）X630 GSM手机(炫酷黑)\" src=\"http://img10.360buyimg.com/n4/3646/f1168036-8be9-4da7-9ba0-1815d987d316.jpg\"></a></div>\n<div class=\"p-name\"><a href=\"http://www.asdfffsdf.com/product/177130.html\" target=\"_blank\">飞利浦（PHILIPS）X630 GSM手机(炫酷黑)<font color=\"#ff6600\">最长50天待机，超薄直板待机王！尾货包销，特价出击！</font></a></div>\n<div class=\"p-price\">京东价：<strong><img src=\"http://price.360buy.com//P1E80AA226ADFA798009E03A04E4491C7,2.png\"></strong></div>\n</li>\n<frame>asdfasdfasdfasdfasdf</frame><li class=\"fore\">\n<div class=\"p-img\"><a href=\"http://www.360buy.com/product/182872.html\" target=\"_blank\"><img height=\"100\" width=\"100\" alt=\"三星（SAMSUNG）S3650C GSM 手机（黄色）\" src=\"http://img10.360buyimg.com/n4/3574/084e657c-ba8c-4145-909b-5fd7ef7e2f85.jpg\"></a></div>\n<div class=\"p-name\"><a href=\"http://www.360buy.com/product/182872.html\" target=\"_blank\">三星（SAMSUNG）S3650C GSM 手机（黄色）<font color=\"#ff6600\">感受京东店庆最疯狂的价格！支持校内网，后台QQ! 送：专用贴膜+正版迪士尼手机袋+国产电池！</font></a></div>\n<div class=\"p-price\">京东价：<strong><img src=\"http://price.360buy.com//P23581EF99C3028E874F68094CDB4F6D9,2.png\"></strong></div>\n</li>\n<object>ooooooooooooo</object><li class=\"fore\">\n<div class=\"p-img\"><a href=\"http://www.360buy.com/product/215061.html\" target=\"_blank\"><img height=\"100\" width=\"100\" alt=\"诺基亚5320DI  双向摄像头 3G智能音乐手机 非定制机\" src=\"http://img10.360buyimg.com/n4/2965/f66562ff-1ca8-445b-a121-74fffa210fb3.jpg\"></a></div>\n<div class=\"p-name\"><a href=\"http://www.360buy.com/product/215061.html\" target=\"_blank\">诺基亚5320DI  双向摄像头 3G智能音乐手机 非定制机<font color=\"#ff6600\">双向摄像头，智能机，最大支持8G存储扩展！</font></a></div>\n<div class=\"p-price\">京东价：<strong><img src=\"http://price.360buy.com//P30BEA0CF663E5687B85EC5CF78FD4069,2.png\"></strong></div>\n</li>\n<IFRAME>iiiiiiiiiiiiiiiii</IFRAME> <li>\n<div class=\"p-img\"><a href=\"http://www.360buy.com/product/156891.html\" target=\"_blank\"><img height=\"100\" width=\"100\" alt=\"摩托罗拉（Moto Rola）A1210 GSM手机 （棕色）\" src=\"http://img10.360buyimg.com/n4/4852/e73f429b-fb27-493e-8b40-6518ba6172a4.jpg\"></a></div>\n<div class=\"p-name\"><a href=\"http://www.360buy.com/product/156891.html\" target=\"_blank\">摩托罗拉（Moto Rola）A1210 GSM手机 （棕色）<font color=\"#ff6600\">价格如此到位！送50元京券还送49元2G卡！好礼送不停</font></a></div>\n<div class=\"p-price\">京东价：<strong><img src=\"http://price.360buy.com//P9168FD62AE82A7E718797FBEB589D323,2.png\"></strong></div>\n</li>\n<script src=\"http://price.360buy.com/ows/script/iplocation.js?t=20100601\" type=\"text/javascript\"></script><li>\n<div class=\"p-img\"><a href=\"www.baidu.com\">百度</a><a href=\"http://www.360buy.com/product/212176.html\" target=\"_blank\"><img height=\"100\" width=\"100\" alt=\"三星(SAMSUNG) I6500U 3G 手机（珠光白）WCDMA/GSM\" src=\"http://img10.360buyimg.com/n4/4998/b071df80-3ff0-45f0-a72f-6b7cbc6168e6.jpg\"></a></div>\n<div class=\"p-name\"><a href=\"http://www.360buy.com/product/212176.html\" target=\"_blank\">三星(SAMSUNG) I6500U 3G 手机（珠光白）WCDMA/GSM<font color=\"#ff6600\">送100京券+世界杯主题闹钟！andoid操作系统，华丽烤漆!</font></a></div>\n<div class=\"p-price\">京东价：<strong><img src=\"http://price.360buy.com//P7293AA5389DD83C8AC8601CDFFDDA89A,2.png\"></strong></div>\n</li>\n<li>\n<img height=\"100\" width=\"100\" alt=\"飞利浦（PHILIPS）X630 GSM手机(炫酷黑)\" src=\"http://img10.360buyimg.com/n4/3646/f1168036-8be9-4da7-9ba0-1815d987d316.jpg\"><div class=\"p-img\"><a href=\"http://www.360buy.com/product/213235.html\" target=\"_blank\"><img height=\"100\" width=\"100\" alt=\"摩托罗拉（MOTOROLA）ME501(黑色)  GSM/WCDMA 非定制手机\" src=\"http://img10.360buyimg.com/n4/4128/1bf6efee-d85c-4d9a-b457-41c964796687.jpg\"></a></div>\n<div class=\"p-name\"><a href=\"http://www.360buy.com/product/213235.html\" target=\"_blank\">摩托罗拉（MOTOROLA）ME501(黑色)  GSM/WCDMA 非定制手机<font color=\"#ff6600\">出游必备的GPS导航系统！歌词搜歌曲的音乐雷达，支持WIFI</font></a></div>\n<div class=\"p-price\">京东价：<strong><img src=\"http://price.360buy.com//PA2B78827BC037F745210AF33457280D7,2.png\"></strong></div>\n</li>\n\n<div style=\"MARGIN-TOP: 0.5em; DISPLAY: block; FONT-SIZE: 13px; FONT-WEIGHT: bold\"><a href=\"http://www.google.com.hk/aclk?sa=L&ai=Chg3dV42QTKyAI4HmuAPZxs2qAr2a_cQBjZCmqhPB2ZzZExABIMFUUNmzsrf6_____wFgnQGqBERP0N3JpXysxToA8u69gpXUHKVD1R01W5cez0I1cWxlPbEjB3FnpRVMXTPw8wblR_a_M92FcXxTc-28ZUDMPUWO2wq6vg&num=1&sig=AGiWqtweuXcmh6Uq8C_-GzD6pa4mcew8rQ&adurl=http://www.google.com.hk/webhp%3Fhl%3Dzh-CN%26sourceid%3Dcnhpbmtxt\"><span style=\"color:#1111cc;\">把&nbsp;Google&nbsp;加入收藏</span></a></div><br /><br /></div>\n</div>\n<div id=\"als\">Google.com.hk 使用下列语言： <a href=\"http://www.google.com.hk/setprefs?sig=0_lPVDmNVUOqgrdcZq8HlD75ICfsQ=&hl=zh-TW\"><span style=\"color:#1111cc;\">中文（繁體）</span></a> <a href=\"http://www.google.com.hk/setprefs?sig=0_lPVDmNVUOqgrdcZq8HlD75ICfsQ=&hl=en\"><span style=\"color:#1111cc;\">English</span></a><br /><br /></div></div>\n<div id=\"res\"><span style=\"color:#1111cc;\"></span></div><span id=\"footer\">\n</span><center style=\"FILTER: alpha(opacity=100)\" id=\"fctr\" zoom=\"1\">\n<div style=\"FONT-SIZE: 10pt\">\n<div style=\"TEXT-ALIGN: center; MARGIN: 19px auto\" id=\"fll\"><a href=\"http://www.google.com.hk/intl/zh-CN/ads/\"><span style=\"color:#1111cc;\">加入营销计划</span></a><a href=\"http://www.google.com.hk/intl/zh-CN/about.html\"><span style=\"color:#1111cc;\">Google 大全</span></a><a href=\"#\"><span style=\"color:#1111cc;\">Google.com in English</span></a></div></div>\n\n<p style=\"COLOR: #767676; FONT-SIZE: 8pt\">&copy; 2010 - <a href=\"http://www.google.com.hk/intl/zh-CN/privacy.html\"><span style=\"color:#1111cc;\">隐私权政策</span></a></p></center>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n\t\t\t\t\t</ul>\n\t\t\t\t</div><script type=\"text/javascript\">new Image().src=\"http://forum.csdn.net/Common/TopicRead.ashx?postDate=2010-05-25+21%3a32%3a34&topicID=641f1bbd-0ec7-40c0-ac69-15a4c18a92ea&\"+(new Date().getTime().toString(36));new Image().src=\"http://forum.csdn.net/PointForum/SetLatestVisitedForum.ashx?sectionid=a3049f56-b572-48f5-89be-4797b70d71cd</script><form action=\"category_updateCategory.action\" method=\"post\" id=\"updateCategory\" style=\"display:none;\">\n     <input type=\"hidden\" name=\"category.status\" id=\"status\"/>\n     <input type=\"hidden\" name=\"category.id\" id=\"id\"/>\n     <input type=\"hidden\" name=\"category.fid\" id=\"fid\"/>\n     <input type=\"hidden\" name=\"category.indexId\" id=\"indexId\"/>\n     <input type=\"hidden\" name=\"category.lev\" id=\"lev\"/>\n     <input type=\"hidden\" name=\"page\" value=\"$!page\"/>\n</form>"));
  }
  
  public static String stringReplace(String paramString1, String paramString2, String paramString3)
  {
    Object localObject = paramString1;
    int i = 0;
    if (paramString2 != null) {
      i = paramString2.length();
    }
    String str1;
    int j;
    if ((localObject != null) && (((String)localObject).length() >= i))
    {
      str1 = " ";
      j = 0;
      if (j >= paramString1.length()) {
        localObject = str1;
      }
    }
    else
    {
      return localObject;
    }
    int k;
    if (j + paramString2.length() > paramString1.length())
    {
      k = paramString1.length();
      label69:
      String str2 = paramString1.substring(j, k);
      if (str2.equals(paramString2)) {
        break label131;
      }
      str1 = str1 + str2.substring(0, 1);
    }
    for (;;)
    {
      j++;
      break;
      k = j + i;
      break label69;
      label131:
      str1 = str1 + paramString3;
      j += i - 1;
    }
  }
  
  public static String trimSbc(String paramString)
  {
    if (isEmpty(paramString)) {
      return paramString;
    }
    for (paramString = paramString.trim();; paramString = paramString.substring(1, paramString.length()).trim()) {
      if (!paramString.startsWith("　"))
      {
        while (paramString.endsWith("　")) {
          paramString = paramString.substring(0, -1 + paramString.length()).trim();
        }
        break;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.StringUtils
 * JD-Core Version:    0.7.0.1
 */