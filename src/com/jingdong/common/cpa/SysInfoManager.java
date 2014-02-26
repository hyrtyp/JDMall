package com.jingdong.common.cpa;

import android.annotation.SuppressLint;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.format.Formatter;
import com.jingdong.cloud.msg.util.Log;
import com.jingdong.common.MyApplication;
import com.jingdong.common.secure.Base64;
import com.jingdong.common.secure.RSAHelper;
import com.jingdong.common.utils.BlueUtils;
import com.jingdong.common.utils.CommonUtil;
import com.jingdong.common.utils.SDKUtils;
import com.jingdong.common.utils.StatisticsReportUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.interfaces.RSAPublicKey;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class SysInfoManager
{
  private static final String F_CPU_INFO = "/proc/cpuinfo";
  private static final String F_MEM_INFO = "/proc/meminfo";
  private static final char QUOAR = '"';
  public static final String TAG = SysInfoManager.class.getSimpleName();
  private static final String UNKNOW = "Unknow";
  
  public static byte[] base64Dencode(byte[] paramArrayOfByte)
  {
    if (Log.I) {
      Log.i(TAG, "ckey" + new String(paramArrayOfByte));
    }
    try
    {
      RSAPublicKey localRSAPublicKey = RSAHelper.getPublicKey(new String(paramArrayOfByte));
      if (Log.I)
      {
        Log.i(TAG, localRSAPublicKey.getModulus().toString());
        Log.i(TAG, localRSAPublicKey.getPublicExponent().toString());
      }
      byte[] arrayOfByte2 = localRSAPublicKey.getModulus().toString(10).getBytes();
      arrayOfByte1 = arrayOfByte2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
    if (Log.I) {
      Log.i(TAG, new String(arrayOfByte1));
    }
    return arrayOfByte1;
  }
  
  public static byte[] base64Encode(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer(Base64.encodeBytes(paramArrayOfByte));
    localStringBuffer.append('|').append('\000');
    if (Log.I) {
      Log.i(TAG, localStringBuffer.toString());
    }
    return localStringBuffer.toString().getBytes();
  }
  
  public static boolean externalMemoryAvailable()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  public static long extractMemCount(String paramString)
  {
    String str1;
    long l;
    if (paramString != null)
    {
      int i = paramString.indexOf(':');
      if (i == -1) {
        break label200;
      }
      str1 = paramString.substring(i + 1).trim();
      int j = str1.lastIndexOf(' ');
      if (j == -1) {
        break label169;
      }
      String str2 = str1.substring(j + 1);
      try
      {
        l = Long.parseLong(str1.substring(0, j).trim());
        if ("kb".equalsIgnoreCase(str2)) {
          return l * 1024L;
        }
        if ("mb".equalsIgnoreCase(str2)) {
          return l * 1048576L;
        }
        if ("gb".equalsIgnoreCase(str2)) {
          return l * 1073741824L;
        }
        if (!Log.W) {
          break label231;
        }
        Log.w(TAG, "Unexpected mem unit format: " + str1);
        return l;
      }
      catch (Exception localException)
      {
        if (Log.E) {
          Log.e(TAG, localException.getLocalizedMessage(), localException);
        }
      }
    }
    for (;;)
    {
      return -1L;
      label169:
      if (Log.E)
      {
        Log.e(TAG, "Unexpected mem value format: " + str1);
        continue;
        label200:
        if (Log.E) {
          Log.e(TAG, "Unexpected mem format: " + paramString);
        }
      }
    }
    label231:
    return l;
  }
  
  public static String getBTMacAdrress()
  {
    if (Build.VERSION.SDK_INT > 5)
    {
      Log.i("test", Build.VERSION.SDK_INT);
      return new BTInfo().getBTmac();
    }
    return "\"Unknow\"";
  }
  
  public static String getBuildInfo()
  {
    StringBuffer localStringBuffer = new StringBuffer("\"buildInfo\":");
    localStringBuffer.append('"');
    localStringBuffer.append('{');
    localStringBuffer.append("device:").append(Build.DEVICE).append(',');
    localStringBuffer.append("model:").append(Build.MODEL).append(',');
    localStringBuffer.append("product:").append(Build.PRODUCT).append(',');
    localStringBuffer.append("brand:").append(Build.BRAND).append(',');
    localStringBuffer.append("release:").append(Build.VERSION.RELEASE).append(',');
    localStringBuffer.append("display:").append(Build.DISPLAY).append(',');
    localStringBuffer.append("locale:").append(Locale.getDefault().toString());
    localStringBuffer.append('}');
    localStringBuffer.append('"');
    return localStringBuffer.toString();
  }
  
  public static String getCPUSerial()
  {
    Object localObject = "0000000000000000";
    for (;;)
    {
      try
      {
        localLineNumberReader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat /proc/cpuinfo").getInputStream()));
        i = 1;
        if (i < 100) {
          continue;
        }
      }
      catch (IOException localIOException)
      {
        LineNumberReader localLineNumberReader;
        int i;
        String str1;
        String str2;
        localIOException.printStackTrace();
        continue;
      }
      return '"' + (String)localObject + '"';
      str1 = localLineNumberReader.readLine();
      if (str1 != null) {
        if (str1.indexOf("Serial") > -1)
        {
          str2 = str1.substring(1 + str1.indexOf(":"), str1.length()).trim();
          localObject = str2;
        }
        else
        {
          i++;
        }
      }
    }
  }
  
  public static String getDeviceId()
  {
    return '"' + CommonUtil.getDeviceId() + '"';
  }
  
  public static String getIMSIstr()
  {
    String str = ((TelephonyManager)MyApplication.getInstance().getSystemService("phone")).getSubscriberId();
    return '"' + str + '"';
  }
  
  public static String getMemInfo()
  {
    StringBuffer localStringBuffer = new StringBuffer("\"memSize\":");
    long[] arrayOfLong = getMemState(MyApplication.getInstance());
    localStringBuffer.append('"');
    if (arrayOfLong == null) {
      localStringBuffer.append("Unknow");
    }
    for (;;)
    {
      localStringBuffer.append('"');
      localStringBuffer.append(",");
      return localStringBuffer.toString();
      localStringBuffer.append(Formatter.formatFileSize(MyApplication.getInstance(), arrayOfLong[0]));
    }
  }
  
  /* Error */
  static long[] getMemState(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 347	java/io/BufferedReader
    //   5: dup
    //   6: new 261	java/io/InputStreamReader
    //   9: dup
    //   10: new 349	java/io/FileInputStream
    //   13: dup
    //   14: new 351	java/io/File
    //   17: dup
    //   18: ldc 11
    //   20: invokespecial 352	java/io/File:<init>	(Ljava/lang/String;)V
    //   23: invokespecial 355	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   26: invokespecial 282	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   29: sipush 1024
    //   32: invokespecial 358	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   35: astore_2
    //   36: aconst_null
    //   37: astore_3
    //   38: aconst_null
    //   39: astore 4
    //   41: aload_2
    //   42: invokevirtual 359	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   45: astore 9
    //   47: aload 9
    //   49: ifnonnull +73 -> 122
    //   52: iconst_3
    //   53: newarray long
    //   55: astore 10
    //   57: aload 10
    //   59: iconst_0
    //   60: aload_3
    //   61: invokestatic 361	com/jingdong/common/cpa/SysInfoManager:extractMemCount	(Ljava/lang/String;)J
    //   64: lastore
    //   65: aload 10
    //   67: iconst_1
    //   68: aload 4
    //   70: invokestatic 361	com/jingdong/common/cpa/SysInfoManager:extractMemCount	(Ljava/lang/String;)J
    //   73: lastore
    //   74: aload_0
    //   75: ldc_w 363
    //   78: invokevirtual 366	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   81: checkcast 368	android/app/ActivityManager
    //   84: astore 11
    //   86: new 370	android/app/ActivityManager$MemoryInfo
    //   89: dup
    //   90: invokespecial 371	android/app/ActivityManager$MemoryInfo:<init>	()V
    //   93: astore 12
    //   95: aload 11
    //   97: aload 12
    //   99: invokevirtual 375	android/app/ActivityManager:getMemoryInfo	(Landroid/app/ActivityManager$MemoryInfo;)V
    //   102: aload 10
    //   104: iconst_2
    //   105: aload 12
    //   107: getfield 379	android/app/ActivityManager$MemoryInfo:availMem	J
    //   110: lastore
    //   111: aload_2
    //   112: ifnull +7 -> 119
    //   115: aload_2
    //   116: invokevirtual 382	java/io/BufferedReader:close	()V
    //   119: aload 10
    //   121: areturn
    //   122: aload 9
    //   124: ldc_w 384
    //   127: invokevirtual 387	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   130: ifeq +9 -> 139
    //   133: aload 9
    //   135: astore_3
    //   136: goto +155 -> 291
    //   139: aload 9
    //   141: ldc_w 389
    //   144: invokevirtual 387	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   147: istore 14
    //   149: iload 14
    //   151: ifeq +140 -> 291
    //   154: aload 9
    //   156: astore 4
    //   158: goto +133 -> 291
    //   161: astore 13
    //   163: getstatic 169	com/jingdong/cloud/msg/util/Log:E	Z
    //   166: ifeq -47 -> 119
    //   169: getstatic 28	com/jingdong/common/cpa/SysInfoManager:TAG	Ljava/lang/String;
    //   172: aload 13
    //   174: invokevirtual 390	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   177: aload 13
    //   179: invokestatic 176	com/jingdong/cloud/msg/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   182: goto -63 -> 119
    //   185: astore 5
    //   187: getstatic 169	com/jingdong/cloud/msg/util/Log:E	Z
    //   190: ifeq +16 -> 206
    //   193: getstatic 28	com/jingdong/common/cpa/SysInfoManager:TAG	Ljava/lang/String;
    //   196: aload 5
    //   198: invokevirtual 172	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
    //   201: aload 5
    //   203: invokestatic 176	com/jingdong/cloud/msg/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   206: aload_1
    //   207: ifnull +7 -> 214
    //   210: aload_1
    //   211: invokevirtual 382	java/io/BufferedReader:close	()V
    //   214: aconst_null
    //   215: areturn
    //   216: astore 8
    //   218: getstatic 169	com/jingdong/cloud/msg/util/Log:E	Z
    //   221: ifeq -7 -> 214
    //   224: getstatic 28	com/jingdong/common/cpa/SysInfoManager:TAG	Ljava/lang/String;
    //   227: aload 8
    //   229: invokevirtual 390	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   232: aload 8
    //   234: invokestatic 176	com/jingdong/cloud/msg/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   237: goto -23 -> 214
    //   240: astore 6
    //   242: aload_1
    //   243: ifnull +7 -> 250
    //   246: aload_1
    //   247: invokevirtual 382	java/io/BufferedReader:close	()V
    //   250: aload 6
    //   252: athrow
    //   253: astore 7
    //   255: getstatic 169	com/jingdong/cloud/msg/util/Log:E	Z
    //   258: ifeq -8 -> 250
    //   261: getstatic 28	com/jingdong/common/cpa/SysInfoManager:TAG	Ljava/lang/String;
    //   264: aload 7
    //   266: invokevirtual 390	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   269: aload 7
    //   271: invokestatic 176	com/jingdong/cloud/msg/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   274: goto -24 -> 250
    //   277: astore 6
    //   279: aload_2
    //   280: astore_1
    //   281: goto -39 -> 242
    //   284: astore 5
    //   286: aload_2
    //   287: astore_1
    //   288: goto -101 -> 187
    //   291: aload_3
    //   292: ifnull -251 -> 41
    //   295: aload 4
    //   297: ifnull -256 -> 41
    //   300: goto -248 -> 52
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	303	0	paramContext	Context
    //   1	287	1	localObject1	Object
    //   35	252	2	localBufferedReader	BufferedReader
    //   37	255	3	localObject2	Object
    //   39	257	4	localObject3	Object
    //   185	17	5	localException1	Exception
    //   284	1	5	localException2	Exception
    //   240	11	6	localObject4	Object
    //   277	1	6	localObject5	Object
    //   253	17	7	localIOException1	IOException
    //   216	17	8	localIOException2	IOException
    //   45	110	9	str	String
    //   55	65	10	arrayOfLong	long[]
    //   84	12	11	localActivityManager	android.app.ActivityManager
    //   93	13	12	localMemoryInfo	android.app.ActivityManager.MemoryInfo
    //   161	17	13	localIOException3	IOException
    //   147	3	14	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   115	119	161	java/io/IOException
    //   2	36	185	java/lang/Exception
    //   210	214	216	java/io/IOException
    //   2	36	240	finally
    //   187	206	240	finally
    //   246	250	253	java/io/IOException
    //   41	47	277	finally
    //   52	111	277	finally
    //   122	133	277	finally
    //   139	149	277	finally
    //   41	47	284	java/lang/Exception
    //   52	111	284	java/lang/Exception
    //   122	133	284	java/lang/Exception
    //   139	149	284	java/lang/Exception
  }
  
  public static String getNetAddressInfo()
  {
    for (;;)
    {
      StringBuffer localStringBuffer;
      String str1;
      try
      {
        localStringBuffer = new StringBuffer();
        Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
        if (!localEnumeration1.hasMoreElements())
        {
          String str2 = localStringBuffer.toString();
          if (!TextUtils.isEmpty(str2)) {
            return str2;
          }
        }
        else
        {
          Enumeration localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
          if (localEnumeration2.hasMoreElements())
          {
            InetAddress localInetAddress = (InetAddress)localEnumeration2.nextElement();
            if (localInetAddress.isLoopbackAddress()) {
              continue;
            }
            str1 = localInetAddress.getHostAddress();
            if (TextUtils.isEmpty(str1)) {
              continue;
            }
            if (localStringBuffer.length() != 0) {
              break label131;
            }
            localStringBuffer.append(str1);
            continue;
          }
          continue;
        }
        return null;
      }
      catch (SocketException localSocketException)
      {
        if (Log.E) {
          Log.e(TAG, localSocketException.getLocalizedMessage(), localSocketException);
        }
      }
      label131:
      localStringBuffer.append(", ").append(str1);
    }
  }
  
  public static String getNetworkInfoStr()
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)MyApplication.getInstance().getSystemService("connectivity");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("\"netwrokInfo\":");
    localStringBuilder.append('"');
    localStringBuilder.append("{");
    NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
    String str2;
    String str3;
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()) && (localNetworkInfo.getType() == 1))
    {
      WifiManager localWifiManager = (WifiManager)MyApplication.getInstance().getSystemService("wifi");
      WifiInfo localWifiInfo = localWifiManager.getConnectionInfo();
      if (localWifiInfo != null)
      {
        str2 = localWifiInfo.getSSID();
        if (Log.D) {
          Log.d(TAG, "wi.getSSID()" + localWifiInfo.getSSID());
        }
        if ((!TextUtils.isEmpty(str2)) && (str2.contains("\"")))
        {
          str3 = str2.replace("\"", "");
          if (Log.D) {
            Log.d(TAG, "finalSSid" + str3);
          }
          localStringBuilder.append("SSID: ").append(str3).append(',');
          localStringBuilder.append("BSSID: ").append(localWifiInfo.getBSSID()).append(',');
          localStringBuilder.append("MAC: ").append(localWifiInfo.getMacAddress()).append(',');
        }
      }
      else
      {
        DhcpInfo localDhcpInfo = localWifiManager.getDhcpInfo();
        if (localDhcpInfo != null)
        {
          localStringBuilder.append("gateway:");
          putAddress(localStringBuilder, localDhcpInfo.gateway);
          localStringBuilder.append(",");
          localStringBuilder.append("ip:");
          putAddress(localStringBuilder, localDhcpInfo.ipAddress);
        }
      }
    }
    for (;;)
    {
      localStringBuilder.append("}");
      localStringBuilder.append('"');
      localStringBuilder.append(",");
      return localStringBuilder.toString();
      str3 = str2;
      break;
      String str1 = getNetAddressInfo();
      localStringBuilder.append("ip:").append(str1);
    }
  }
  
  public static String getSdCardId()
  {
    int i;
    if (externalMemoryAvailable()) {
      try
      {
        File localFile = new File("/sys/class/mmc_host/mmc1");
        if (localFile.exists())
        {
          File[] arrayOfFile = localFile.listFiles();
          i = 0;
          int j = arrayOfFile.length;
          Object localObject = null;
          if (i >= j) {}
          for (;;)
          {
            String str2 = new BufferedReader(new FileReader(localObject + "/cid")).readLine();
            if (Log.D) {
              Log.d(TAG, "CID of the MMC = " + str2);
            }
            return '"' + str2 + '"';
            if (!arrayOfFile[i].toString().contains("mmc1:")) {
              break;
            }
            localObject = arrayOfFile[i].toString();
            String str1 = (String)arrayOfFile[i].toString().subSequence(-4 + ((String)localObject).length(), ((String)localObject).length());
            if (Log.D) {
              Log.d(TAG, " SID of MMC = " + str1);
            }
          }
        }
        return "\"Unknow\"";
      }
      catch (Exception localException)
      {
        Log.e("CID_APP", "Can not read SD-card cid");
      }
    }
    for (;;)
    {
      i++;
      break;
      Log.e("CID_APP", " SD-card unavailble");
    }
  }
  
  public static String getSensorInfoString()
  {
    SensorManager localSensorManager = (SensorManager)MyApplication.getInstance().getSystemService("sensor");
    StringBuffer localStringBuffer1 = new StringBuffer("\"sensors\":");
    localStringBuffer1.append('"');
    Iterator localIterator;
    if (localSensorManager != null)
    {
      List localList = localSensorManager.getSensorList(-1);
      if (localList != null)
      {
        localStringBuffer1.append("[");
        localIterator = localList.iterator();
        if (localIterator.hasNext()) {
          break label115;
        }
        if (localList.size() > 0) {
          localStringBuffer1.deleteCharAt(-1 + localStringBuffer1.length());
        }
        localStringBuffer1.append("]");
      }
    }
    for (;;)
    {
      localStringBuffer1.append('"');
      return localStringBuffer1.toString();
      label115:
      Sensor localSensor = (Sensor)localIterator.next();
      localStringBuffer1.append("{");
      StringBuffer localStringBuffer2 = localStringBuffer1.append("sensorName:");
      String str1;
      label159:
      StringBuffer localStringBuffer3;
      if (TextUtils.isEmpty(localSensor.getName()))
      {
        str1 = "Unknow";
        localStringBuffer2.append(str1);
        localStringBuffer3 = localStringBuffer1.append(",vendor:");
        if (!TextUtils.isEmpty(localSensor.getVendor())) {
          break label236;
        }
      }
      label236:
      for (String str2 = "Unknow";; str2 = localSensor.getVendor())
      {
        localStringBuffer3.append(str2);
        localStringBuffer1.append(",resolution:").append(localSensor.getResolution());
        localStringBuffer1.append("},");
        break;
        str1 = localSensor.getName();
        break label159;
      }
      localStringBuffer1.append("Unknow");
    }
  }
  
  public static String getWifiMac()
  {
    String str1 = StatisticsReportUtil.readDeviceUUID();
    String str2;
    if (str1 == null)
    {
      str2 = ((WifiManager)MyApplication.getInstance().getSystemService("wifi")).getConnectionInfo().getMacAddress();
      if (str2 == null) {
        str2 = "Unknow";
      }
    }
    for (;;)
    {
      return '"' + str2 + '"';
      String[] arrayOfString = str1.split("-");
      str2 = null;
      if (arrayOfString != null) {
        str2 = arrayOfString[(-1 + arrayOfString.length)];
      }
    }
  }
  
  private static void putAddress(StringBuilder paramStringBuilder, int paramInt)
  {
    StringBuilder localStringBuilder1 = paramStringBuilder.append(paramInt & 0xFF).append('.');
    int i = paramInt >>> 8;
    StringBuilder localStringBuilder2 = localStringBuilder1.append(i & 0xFF).append('.');
    int j = i >>> 8;
    localStringBuilder2.append(j & 0xFF).append('.').append(0xFF & j >>> 8);
  }
  
  static class BTInfo
  {
    @SuppressLint({"NewApi"})
    private String getBTmac()
    {
      if (SDKUtils.isSDKVersionMoreThan16())
      {
        String str = BlueUtils.getWiFiAddress();
        if (!TextUtils.isEmpty(str)) {
          return '"' + str + '"';
        }
      }
      return "\"Unknow\"";
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.cpa.SysInfoManager
 * JD-Core Version:    0.7.0.1
 */