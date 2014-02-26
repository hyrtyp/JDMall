package com.jingdong.common.constant;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.widget.RadioButton;
import com.jingdong.common.entity.InvoiceInfo;
import com.jingdong.common.entity.JdCartInfo;
import com.jingdong.common.entity.PaymentInfo;
import com.jingdong.common.entity.UserInfo;
import com.jingdong.common.entity.YouHuiQuan;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

public class Constants
{
  public static final String ADD_SHORT_CUT_FLAG = "add_short_cut_flag_new";
  public static final String ASSETS_CACHE_DIRECT_NAME = "jdcache";
  public static final String COLOR_BUY_SELECTED_CATEGORIES = "color_buy_selected_categories";
  public static final String ENCRYPT_KEY = "jd_key4";
  public static final String EXIT_TYPE_BACKGROUND = "1";
  public static final String EXIT_TYPE_DIALOG = "3";
  public static final String EXIT_TYPE_TOAST = "2";
  public static final String FEEDBACK_CONTACTS = "FEEDBACKER_CONTACT";
  public static final int FLAG_INCLUDE_STOPPED_PACKAGES = 32;
  public static final String HTTP_PREFIX = "http://";
  public static final String JD_SHARE_PREFERENCE = "jdAndroidClient";
  public static final String JD_SHARE_PREFERENCE_CITY_ID_MODE_1 = "CITY_ID_MODE_1";
  public static final String JD_SHARE_PREFERENCE_PROVINCE_ID_MODE_1 = "PROVINCE_ID_MODE_1";
  public static final String JD_WIDGET_DELETED_FLAG = "jd_widget_deleted";
  public static final String JLOG_ACTIVITYNAME_PARAM_KEY = "activityName";
  public static final String JLOG_CATEGORYID_PARAM_KEY = "categoryId";
  public static final String JLOG_EVENT_ACHIVE = "shake_achieve";
  public static final String JLOG_EVENT_SHAKE = "shake_shake";
  public static final String JLOG_EVENT_SINGER = "shake_singer";
  public static final String JLOG_EVENT_SKU = "shake_click_sku";
  public static final String JLOG_EVENT_SNS = "share_sns";
  public static final String JLOG_ORDERID_PARAM_KEY = "orderId";
  public static final String JLOG_PAGEID_ANDROID_PHONE = "android_jd_";
  public static final String JLOG_PRODUCT_PARAM_KEY = "productId";
  public static final String JLOG_SEARCH_PARAM_KEY = "searchKeyWord";
  public static final String JLOG_SHAKE_AHARE_ACHIEVE = "shake_achieve";
  public static final String JLOG_SHAKE_AHARE_SHAKE = "shake_shake";
  public static final String JLOG_SHAKE_ERR = "err";
  public static final String JLOG_SHAKE_PARSE_ERR = "-1";
  public static final String JLOG_SHAKE_TYPE = "type";
  public static final String LASTE_MESSAGE_READ_TIME = "lasteMessageReadeTime";
  public static final String LOGIN_FLAG = "login";
  public static int LOG_IN = 0;
  public static int LOG_OFF = 0;
  public static int MAX_CART_PROD_COUNT = 0;
  public static int MAX_DISCUSS_TEXT_LENGTH = 0;
  public static int MAX_IMG_URL_CACHE_LIST = 0;
  public static int MAX_LATEST_VISITED_PRODUCT = 0;
  public static int MAX_SINGLE_PROD_COUNT = 0;
  public static final int MESSAGE_TYPE_REACTIVATION = 4;
  public static final int NOT_NOTIFICATION_HOUR_MAX = 21;
  public static final int NOT_NOTIFICATION_HOUR_MIN = 9;
  public static final int PLATFORM = 100;
  public static final String POST_TO_CONFIRM_SUCCESS_FLAG = "post_order_confrim_flag";
  public static String REN_MIN_BI;
  public static final String SCREEN_SLEEP_SETTING_TIME = "sleep_setting_time";
  public static final String SERVICE_TO_ACTIVIATE_MESSAGE = "message";
  public static final String SHARED_PREFERENCES_CAMERA_DIR = "cameraFilePath";
  public static final String SHARED_PREFERENCES_CAMERA_PHOTO_INDEX = "photoTypeIndex";
  public static final String SHARED_PREFERENCES_CAMERA_PHOTO_TYPE = "photoType";
  public static final String SHARED_PREFERENCES_EXIT_TYPE = "exitType";
  public static final String SHARED_PREFERENCES_LOG_MSG_NOTIFY_ID_AND_TIME = "log_push_msg_notify_id_and_time";
  public static final String SHARED_PREFERENCES_LOG_MSG_UNREAD_IDS = "log_push_msg_unread_msg_ids";
  public static final String SHARED_PREFERENCES_MSG_AUTO_UN_PUSH_TIME_KEY = "msg_auto_update_switch";
  public static final String SHARED_PREFERENCES_MSG_DEVICE_TOKEN = "msg_auto_device_token";
  public static final String SHARED_PREFERENCES_MSG_HAS_BIND = "msg_auto_has_bind";
  public static final String SHARED_PREFERENCES_NEXT_PUSH_MSG_TASK_DELAY_TIME = "nextPushMsgTaskDelayTime";
  public static final String SHARED_PREFERENCES_NEXT_PUSH_MSG_TASK_TIME = "nextPushMsgTaskTime";
  public static final String SHARED_PREFERENCES_REACTIVATION_ALARM_TRIGGER_AT_TIME = "reActivationTriggerAtTime";
  public static final String SHARED_PREFERENCES_REACTIVATION_INTERVAL_DAYS = "remindertime";
  public static final String SHOW_COST = "showCost";
  public static boolean addNewTemplate;
  static AlertDialog alertDialog = null;
  public static boolean bAddEasyBuy;
  @Deprecated
  public static boolean bEasyBuy;
  public static boolean bModifyEasyBuy;
  public static boolean bNoYouHui;
  public static boolean bPhone;
  public static int bQuan;
  public static boolean dSelected;
  public static String dTotalPrice;
  public static String dYTotalPrice;
  public static JSONObject dongSel;
  public static long easyBuyProdId;
  private static Intent gIntent = new Intent();
  public static HashMap<String, SoftReference<Drawable>> gStrImgUrlCache;
  public static boolean hasLogIn;
  public static boolean hasNewTocart;
  public static boolean hasNewway;
  public static ArrayList<Map<String, String>> item;
  public static boolean jSelected;
  public static JSONObject jbAreas;
  public static JSONObject jbCitys;
  public static JSONObject jbOrderNum;
  public static JSONObject jbProvinces;
  public static boolean jdSwitch;
  public static JSONArray jinSelArray;
  public static JSONArray liSelArray;
  public static boolean liSelected;
  public static JdCartInfo mCartInfoHuiZong;
  public static int mMaxCount;
  public static InvoiceInfo mModifiedInvoiceInfo;
  public static PaymentInfo mModifiedPaymentInfo;
  public static UserInfo mModifiedUserInfo;
  public static YouHuiQuan mModifiedYouhuiQuan;
  public static String nPayway;
  public static String nSelectDongQuanId;
  public static ArrayList<String> nSelectLipinIDs;
  public static boolean noDong;
  public static boolean noJing;
  public static boolean noLi;
  public static ArrayList<String> nselectJingQuanIDs;
  public static RadioButton oldBtn;
  public static long packMainProdId;
  static boolean ret;
  public static JSONArrayPoxy skusOfSuites;
  
  static
  {
    LOG_IN = 1;
    LOG_OFF = 0;
    MAX_LATEST_VISITED_PRODUCT = 20;
    MAX_IMG_URL_CACHE_LIST = 20;
    MAX_DISCUSS_TEXT_LENGTH = 200;
    MAX_CART_PROD_COUNT = 50;
    MAX_SINGLE_PROD_COUNT = 1000;
    REN_MIN_BI = "¥";
    hasNewTocart = false;
    hasLogIn = false;
    dTotalPrice = "0";
    dYTotalPrice = "0";
    hasNewway = false;
    jdSwitch = false;
    jSelected = false;
    dSelected = false;
    liSelected = false;
    noDong = false;
    noJing = false;
    noLi = false;
    bNoYouHui = false;
    bPhone = false;
    addNewTemplate = false;
    oldBtn = null;
    liSelArray = null;
    jinSelArray = null;
    dongSel = null;
    nselectJingQuanIDs = null;
    nSelectLipinIDs = null;
    nSelectDongQuanId = null;
    mMaxCount = 0;
    bEasyBuy = false;
    bAddEasyBuy = false;
    bModifyEasyBuy = false;
    ret = false;
    jbOrderNum = null;
    jbProvinces = new JSONObject();
    jbCitys = new JSONObject();
    jbAreas = new JSONObject();
    gStrImgUrlCache = new HashMap();
  }
  
  public static void ShowMsg(final String paramString, IMyActivity paramIMyActivity)
  {
    paramIMyActivity.post(new Runnable()
    {
      public void run()
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(Constants.this.getThisActivity());
        localBuilder.setTitle(StringUtil.prompt);
        localBuilder.setMessage(paramString);
        localBuilder.setNeutralButton(StringUtil.ok, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymous2DialogInterface.dismiss();
          }
        });
        localBuilder.show();
      }
    });
  }
  
  public static String StringFilter(String paramString)
  {
    return Pattern.compile("[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……& amp;*（）——+|{}【】‘；：”“’。，、？]").matcher(paramString).replaceAll("").trim();
  }
  
  public static boolean canSeeEasyBuyBtn(IMyActivity paramIMyActivity)
  {
    return (paramIMyActivity != null) && (paramIMyActivity.getStringFromPreference("easyBuySwitch") != null) && (paramIMyActivity.getStringFromPreference("easyBuySwitch").compareTo("1") == 0);
  }
  
  public static void clearOrderInfo()
  {
    liSelArray = new JSONArray();
    jinSelArray = new JSONArray();
    dongSel = new JSONObject();
    nselectJingQuanIDs = new ArrayList();
    nSelectLipinIDs = new ArrayList();
    nSelectDongQuanId = null;
    bNoYouHui = false;
    dSelected = false;
    liSelected = false;
    jSelected = false;
    skusOfSuites = null;
    skusOfSuites = new JSONArrayPoxy();
  }
  
  public static Intent getGlobalIntent()
  {
    if (gIntent == null) {
      return null;
    }
    return gIntent;
  }
  
  public static boolean shouldConfirmEasyBuy(IMyActivity paramIMyActivity)
  {
    return paramIMyActivity.getStringFromPreference("easyBuyConfirm").compareTo("1") == 0;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.constant.Constants
 * JD-Core Version:    0.7.0.1
 */