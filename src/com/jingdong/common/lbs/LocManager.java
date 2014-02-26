package com.jingdong.common.lbs;

import android.content.Context;
import android.text.TextUtils;
import com.jingdong.common.MyApplication;
import com.jingdong.common.entity.CityMode1;
import com.jingdong.common.entity.ProvinceMode1;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.utils.CommonUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

public class LocManager
{
  private static final int DISTANCE = 5;
  public static final int GPS_TIMEOUT_TIME = 60000;
  private static final double RADIUS = 6378.1369999999997D;
  public static final int RELOCATION_INTERVAL_TIME = 1800000;
  private static final String SYMBOL_BOUND = "_";
  private static final String TAG = "LocManager";
  public static int cityId;
  public static String cityName;
  public static int districtId;
  public static String districtName;
  public static boolean isLocateSuccess = false;
  public static double lati;
  public static double longi;
  private static LocManager mLocManager;
  private static MyLocationListener mLocationListener;
  private static ILocationManager mLocationManager;
  public static int provinceId = 1;
  public static String provinceName = StringUtil.product_province_beijing;
  private boolean canRunService = true;
  private boolean isCurrLocationSucceed;
  private Context mContext;
  private ProductInfoUtil productInfoUtil;
  
  private LocManager(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  public static double calculateDistance(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    double d1 = rad(paramDouble1);
    double d2 = rad(paramDouble3);
    double d3 = d1 - d2;
    double d4 = rad(paramDouble2) - rad(paramDouble4);
    return Math.round(10000.0D * (6378.1369999999997D * (2.0D * Math.asin(Math.sqrt(Math.pow(Math.sin(d3 / 2.0D), 2.0D) + Math.cos(d1) * Math.cos(d2) * Math.pow(Math.sin(d4 / 2.0D), 2.0D)))))) / 10000.0D;
  }
  
  public static String getCommonLbsParameter()
  {
    String str = CommonUtil.getProvinceIDFromSharedPreferences();
    if (!TextUtils.isEmpty(str))
    {
      Object localObject1 = CommonUtil.getCityIDFromSharedPreferences();
      Object localObject2 = CommonUtil.getDistrictIdFromSharedPreferences();
      Object localObject3 = CommonUtil.getTownIdFromSharedPreferences();
      StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(str)).append("_");
      if (localObject1 == null) {
        localObject1 = Integer.valueOf(0);
      }
      StringBuilder localStringBuilder2 = localStringBuilder1.append(localObject1).append("_");
      if (localObject2 == null) {
        localObject2 = Integer.valueOf(0);
      }
      StringBuilder localStringBuilder3 = localStringBuilder2.append(localObject2).append("_");
      if (localObject3 == null) {
        localObject3 = Integer.valueOf(0);
      }
      return localObject3;
    }
    if (isLocateSuccess) {
      return provinceId + "_" + cityId + "_" + districtId + "_" + "0";
    }
    return null;
  }
  
  public static LocManager getInstance()
  {
    if (mLocManager == null) {
      mLocManager = new LocManager(MyApplication.getInstance().getApplicationContext());
    }
    mLocationManager = JdLocationManager.getInstance();
    return mLocManager;
  }
  
  private static double rad(double paramDouble)
  {
    return 3.141592653589793D * paramDouble / 180.0D;
  }
  
  public static void updateLocation(Map<String, Double> paramMap)
  {
    if (calculateDistance(((Double)paramMap.get("lati")).doubleValue(), ((Double)paramMap.get("longi")).doubleValue(), lati, longi) > 5.0D)
    {
      lati = ((Double)paramMap.get("lati")).doubleValue();
      longi = ((Double)paramMap.get("longi")).doubleValue();
    }
  }
  
  public long getProductId(ArrayList<ProvinceMode1> paramArrayList)
  {
    int i = 0;
    if (i >= paramArrayList.size()) {
      return -1L;
    }
    ProvinceMode1 localProvinceMode1 = (ProvinceMode1)paramArrayList.get(i);
    ArrayList localArrayList;
    if (localProvinceMode1.getId() == provinceId)
    {
      new ArrayList();
      localArrayList = localProvinceMode1.getChildren();
    }
    for (int j = 0;; j++)
    {
      if (j >= localArrayList.size())
      {
        i++;
        break;
      }
      CityMode1 localCityMode1 = (CityMode1)localArrayList.get(j);
      if (localCityMode1.getId() == cityId) {
        return localCityMode1.getProductId();
      }
    }
  }
  
  public boolean isOpenGps()
  {
    if (mLocationManager != null) {
      return mLocationManager.isOpenGps();
    }
    return false;
  }
  
  public void onResume()
  {
    this.canRunService = true;
  }
  
  public void onStop()
  {
    getInstance().removeUpdateLocation();
    this.canRunService = false;
  }
  
  public void queryInfoByLocation(MyLocationListener paramMyLocationListener)
  {
    this.isCurrLocationSucceed = false;
    mLocationListener = paramMyLocationListener;
    this.productInfoUtil = new ProductInfoUtil();
    this.productInfoUtil.setInfoListener(new ProductInfoUtil.UpdateDataListener()
    {
      public void onFinish(ProductInfoUtil paramAnonymousProductInfoUtil, String paramAnonymousString)
      {
        LocManager.mLocationListener.onFinish(paramAnonymousProductInfoUtil, paramAnonymousString);
      }
    });
    mLocationManager.setUpdateLocationListener(new ILocationManager.UpdateLocationListener()
    {
      public void onFinish(Map<String, Double> paramAnonymousMap)
      {
        if (!paramAnonymousMap.isEmpty())
        {
          LocManager.this.isCurrLocationSucceed = true;
          LocManager.updateLocation(paramAnonymousMap);
          LocManager.this.productInfoUtil.queryProductInfo(LocManager.this.mContext, LocManager.lati, LocManager.longi);
          return;
        }
        LocManager.mLocationListener.onFinish(null, StringUtil.gps_location_fail);
      }
    });
    mLocationManager.requestLocation();
    new Timer().schedule(new TimerTask()
    {
      public void run()
      {
        LocManager.getInstance().removeUpdateLocation();
        if (!LocManager.this.isCurrLocationSucceed) {
          LocManager.this.productInfoUtil.queryProductInfo(LocManager.this.mContext, -1.0D, -1.0D);
        }
      }
    }, 60000L);
  }
  
  public void removeUpdateLocation()
  {
    if (mLocationManager != null) {
      mLocationManager.stopLocation();
    }
  }
  
  public void startLocationService()
  {
    new Thread()
    {
      public void run()
      {
        setName("LocManager");
        for (;;)
        {
          if (LocManager.this.canRunService) {
            LocManager.this.queryInfoByLocation(new LocManager.MyLocationListener()
            {
              public void onFinish(ProductInfoUtil paramAnonymous2ProductInfoUtil, String paramAnonymous2String)
              {
                if (paramAnonymous2ProductInfoUtil != null)
                {
                  LocManager.isLocateSuccess = true;
                  LocManager.provinceId = Integer.valueOf(paramAnonymous2ProductInfoUtil.getProviceId()).intValue();
                  LocManager.provinceName = paramAnonymous2ProductInfoUtil.getProviceName();
                  LocManager.cityId = Integer.valueOf(paramAnonymous2ProductInfoUtil.getCityId()).intValue();
                  LocManager.cityName = paramAnonymous2ProductInfoUtil.getCityName();
                  LocManager.districtId = Integer.valueOf(paramAnonymous2ProductInfoUtil.getDistrictId()).intValue();
                  LocManager.districtName = paramAnonymous2ProductInfoUtil.getDistrictName();
                }
              }
            });
          }
          try
          {
            Thread.sleep(1800000L);
          }
          catch (InterruptedException localInterruptedException)
          {
            localInterruptedException.printStackTrace();
          }
        }
      }
    }.start();
  }
  
  public static abstract interface MyLocationListener
  {
    public abstract void onFinish(ProductInfoUtil paramProductInfoUtil, String paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.lbs.LocManager
 * JD-Core Version:    0.7.0.1
 */