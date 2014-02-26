package com.jd.common.util;

import java.io.ByteArrayInputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.beanutils.BeanUtils;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class OperateLogUtil
{
  private static String testXml = "<?xml version=\"1.0\" encoding=\"GBK\"?><history><class name=\"DeliveryFeeContract\"><record id=\"46\"><field name=\"chargeType\"><changed>N</changed><oldvalue>2</oldvalue><newvalue>2</newvalue></field><field name=\"signoffFee\"><changed>N</changed><oldvalue>666.00</oldvalue><newvalue>666.00</newvalue></field><field name=\"signoffWeight\"><changed>Y</changed><oldvalue>777.0</oldvalue><newvalue>665.0</newvalue></field><field name=\"signoffFeeHigh\"><changed>N</changed><oldvalue>888.00</oldvalue><newvalue>888.00</newvalue></field><field name=\"rejectFee\"><changed>N</changed><oldvalue>1.00</oldvalue><newvalue>1.00</newvalue></field><field name=\"rejectWeight\"><changed>N</changed><oldvalue>1.0</oldvalue><newvalue>1.0</newvalue></field><field name=\"rejectFeeHigh\"><changed>N</changed><oldvalue>1.00</oldvalue><newvalue>1.00</newvalue></field><field name=\"returnFee\"><changed>N</changed><oldvalue>1.00</oldvalue><newvalue>1.00</newvalue></field><field name=\"returnWeight\"><changed>N</changed><oldvalue>1.0</oldvalue><newvalue>1.0</newvalue></field><field name=\"returnFeeHigh\"><changed>N</changed><oldvalue>1.00</oldvalue><newvalue>1.00</newvalue></field></record><record id=\"47\"><field name=\"chargeType\"><changed>N</changed><oldvalue>1</oldvalue><newvalue>1</newvalue></field><field name=\"signoffFee\"><changed>N</changed><oldvalue>888.00</oldvalue><newvalue>888.00</newvalue></field><field name=\"signoffWeight\"><changed>Y</changed><oldvalue>777.0</oldvalue><newvalue>776.0</newvalue></field><field name=\"signoffFeeHigh\"><changed>N</changed><oldvalue>88.00</oldvalue><newvalue>88.00</newvalue></field><field name=\"rejectFee\"><changed>N</changed><oldvalue>3.00</oldvalue><newvalue>3.00</newvalue></field><field name=\"rejectWeight\"><changed>N</changed><oldvalue>3.0</oldvalue><newvalue>3.0</newvalue></field><field name=\"rejectFeeHigh\"><changed>N</changed><oldvalue>4.00</oldvalue><newvalue>4.00</newvalue></field><field name=\"returnFee\"><changed>N</changed><oldvalue>55.00</oldvalue><newvalue>55.00</newvalue></field><field name=\"returnWeight\"><changed>N</changed><oldvalue>5.0</oldvalue><newvalue>5.0</newvalue></field><field name=\"returnFeeHigh\"><changed>N</changed><oldvalue>5.00</oldvalue><newvalue>5.00</newvalue></field></record></class></history>";
  
  public static boolean compareObjects(Object paramObject1, Object paramObject2, String paramString)
    throws Exception
  {
    String[] arrayOfString = paramString.split(",");
    int i = arrayOfString.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return false;
      }
      String str1 = arrayOfString[j];
      String str2 = BeanUtils.getProperty(paramObject1, str1);
      String str3 = BeanUtils.getProperty(paramObject2, str1);
      if (str2 == null) {
        str2 = "";
      }
      if (str3 == null) {
        str3 = "";
      }
      if (!str2.equals(str3)) {
        return true;
      }
    }
  }
  
  private static String generateFieldXml(String paramString, Object paramObject1, Object paramObject2, boolean paramBoolean)
    throws Exception
  {
    String str1 = BeanUtils.getProperty(paramObject1, paramString);
    String str2 = BeanUtils.getProperty(paramObject2, paramString);
    if (str1 == null) {
      str1 = "";
    }
    if (str2 == null) {
      str2 = "";
    }
    boolean bool = str1.equals(str2);
    StringBuffer localStringBuffer1 = new StringBuffer();
    StringBuffer localStringBuffer2;
    if (((bool) && (paramBoolean)) || (!bool))
    {
      localStringBuffer1.append("<field name=\"").append(paramString).append("\">");
      localStringBuffer2 = localStringBuffer1.append("<changed>");
      if (!bool) {
        break label162;
      }
    }
    label162:
    for (String str3 = "N";; str3 = "Y")
    {
      localStringBuffer2.append(str3).append("</changed>");
      localStringBuffer1.append("<oldvalue>").append(str1).append("</oldvalue>");
      localStringBuffer1.append("<newvalue>").append(str2).append("</newvalue>");
      localStringBuffer1.append("</field>");
      return localStringBuffer1.toString();
    }
  }
  
  public static String generateHistoryClassXml(Map<String, List<Object[]>> paramMap, boolean paramBoolean, String paramString)
    throws Exception
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator1 = paramMap.keySet().iterator();
    if (!localIterator1.hasNext()) {
      return getXmlHead() + localStringBuffer.toString() + getXmlBottom();
    }
    String str = (String)localIterator1.next();
    localStringBuffer.append("<class name=\"").append(str).append("\">");
    Iterator localIterator2 = ((List)paramMap.get(str)).iterator();
    for (;;)
    {
      if (!localIterator2.hasNext())
      {
        localStringBuffer.append("</class>");
        break;
      }
      Object[] arrayOfObject = (Object[])localIterator2.next();
      localStringBuffer.append(generateRecordXml(arrayOfObject[0], arrayOfObject[1], paramBoolean, paramString));
    }
  }
  
  private static String generateRecordXml(Object paramObject1, Object paramObject2, boolean paramBoolean, String paramString)
    throws Exception
  {
    StringBuffer localStringBuffer = new StringBuffer("<record id=\"").append(BeanUtils.getProperty(paramObject1, "id")).append("\">");
    String[] arrayOfString = paramString.split(",");
    for (int i = 0;; i++)
    {
      if (i >= arrayOfString.length)
      {
        localStringBuffer.append("</record>");
        return localStringBuffer.toString();
      }
      localStringBuffer.append(generateFieldXml(arrayOfString[i], paramObject1, paramObject2, paramBoolean));
    }
  }
  
  public static List<LogFieldInfo> getFieldInfoFromXml(String paramString1, String paramString2, String paramString3)
    throws Exception
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = new SAXReader().read(new ByteArrayInputStream(paramString1.getBytes())).getRootElement().elements().iterator();
    if (!localIterator1.hasNext()) {}
    Element localElement2;
    String str1;
    do
    {
      Iterator localIterator2;
      while (!localIterator2.hasNext())
      {
        return localArrayList;
        Element localElement1 = (Element)localIterator1.next();
        if (!paramString2.equals(localElement1.attributeValue("name"))) {
          break;
        }
        localIterator2 = localElement1.elements().iterator();
      }
      localElement2 = (Element)localIterator2.next();
      str1 = localElement2.attributeValue("id");
    } while ((paramString3 != null) && (!paramString3.equals(str1)));
    Iterator localIterator3 = localElement2.elements().iterator();
    label160:
    LogFieldInfo localLogFieldInfo;
    Iterator localIterator4;
    if (localIterator3.hasNext())
    {
      Element localElement3 = (Element)localIterator3.next();
      localLogFieldInfo = new LogFieldInfo();
      localLogFieldInfo.setRecordId(Long.valueOf(str1));
      localLogFieldInfo.setFieldName(localElement3.attributeValue("name"));
      localIterator4 = localElement3.elements().iterator();
    }
    for (;;)
    {
      if (!localIterator4.hasNext())
      {
        localArrayList.add(localLogFieldInfo);
        break label160;
        break;
      }
      Element localElement4 = (Element)localIterator4.next();
      String str2 = localElement4.getName();
      String str3 = localElement4.getText();
      if (str2.equals("changed")) {
        localLogFieldInfo.setChanged(str3);
      } else if (str2.equals("oldvalue")) {
        localLogFieldInfo.setOldvalue(str3);
      } else if (str2.equals("newvalue")) {
        localLogFieldInfo.setNewvalue(str3);
      }
    }
  }
  
  private static String getXmlBottom()
  {
    return "</history>";
  }
  
  private static String getXmlHead()
  {
    return "<?xml version=\"1.0\" encoding=\"GBK\"?><history>";
  }
  
  public static void main(String[] paramArrayOfString)
  {
    try
    {
      List localList = getFieldInfoFromXml(testXml, "DeliveryFeeContract", "47");
      System.out.println(localList.size());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.OperateLogUtil
 * JD-Core Version:    0.7.0.1
 */