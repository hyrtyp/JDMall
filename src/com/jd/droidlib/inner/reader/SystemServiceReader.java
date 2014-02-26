package com.jd.droidlib.inner.reader;

import android.content.Context;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.Strings;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class SystemServiceReader
{
  private static final HashMap<Class<?>, String> serviceRegistry = new HashMap();
  
  static
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("power", "android.os.PowerManager");
    localHashMap.put("window", "android.view.WindowManager");
    localHashMap.put("layout_inflater", "android.view.LayoutInflater");
    localHashMap.put("account", "android.accounts.AccountManager");
    localHashMap.put("activity", "android.app.ActivityManager");
    localHashMap.put("alarm", "android.app.AlarmManager");
    localHashMap.put("notification", "android.app.NotificationManager");
    localHashMap.put("accessibility", "android.view.accessibility.AccessibilityManager");
    localHashMap.put("keyguard", "android.app.KeyguardManager");
    localHashMap.put("location", "android.location.LocationManager");
    localHashMap.put("country_detector", "android.location.CountryDetector");
    localHashMap.put("search", "android.app.SearchManager");
    localHashMap.put("sensor", "android.hardware.SensorManager");
    localHashMap.put("storage", "android.os.storage.StorageManager");
    localHashMap.put("wallpaper", "android.app.WallpaperManager");
    localHashMap.put("vibrator", "android.os.Vibrator");
    localHashMap.put("statusbar", "android.app.StatusBarManager");
    localHashMap.put("connectivity", "android.net.ConnectivityManager");
    localHashMap.put("throttle", "android.net.ThrottleManager");
    localHashMap.put("updatelock", "android.os.IUpdateLock");
    localHashMap.put("wifi", "android.net.wifi.WifiManager");
    localHashMap.put("wifip2p", "android.net.wifi.p2p.WifiP2pManager");
    localHashMap.put("servicediscovery", "android.net.nsd.NsdManager");
    localHashMap.put("audio", "android.media.AudioManager");
    localHashMap.put("media_router", "android.media.MediaRouter");
    localHashMap.put("phone", "android.telephony.TelephonyManager");
    localHashMap.put("clipboard", "android.text.ClipboardManager");
    localHashMap.put("input_method", "android.view.inputmethod.InputMethodManager");
    localHashMap.put("textservices", "android.view.textservice.TextServicesManager");
    localHashMap.put("appwidget", "android.appwidget.AppWidgetManager");
    localHashMap.put("backup", "android.app.backup.IBackupManager");
    localHashMap.put("dropbox", "android.os.DropBoxManager");
    localHashMap.put("device_policy", "android.app.admin.DevicePolicyManager");
    localHashMap.put("uimode", "android.app.UiModeManager");
    localHashMap.put("download", "android.app.DownloadManager");
    localHashMap.put("nfc", "android.nfc.NfcManager");
    localHashMap.put("bluetooth", "android.bluetooth.BluetoothAdapter");
    localHashMap.put("sip", "android.net.sip.SipManager");
    localHashMap.put("usb", "android.hardware.usb.UsbManager");
    localHashMap.put("serial", "android.hardware.SerialManager");
    localHashMap.put("input", "android.hardware.input.InputManager");
    localHashMap.put("display", "android.hardware.display.DisplayManager");
    localHashMap.put("scheduling_policy", "android.os.SchedulingPolicyService");
    localHashMap.put("user", "android.os.UserManager");
    Iterator localIterator = localHashMap.keySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      String str1 = (String)localIterator.next();
      String str2 = (String)localHashMap.get(str1);
      try
      {
        Class localClass = Class.forName(str2);
        serviceRegistry.put(localClass, str1);
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        L.i("%s service not available.", new Object[] { str2 });
      }
    }
  }
  
  static Object readVal(Context paramContext, String paramString, Class<?> paramClass)
    throws Exception
  {
    if (Strings.isEmpty(paramString)) {}
    for (String str = (String)serviceRegistry.get(paramClass); str == null; str = paramString) {
      throw new Exception("Unknown service: " + str);
    }
    return paramContext.getSystemService(str);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.reader.SystemServiceReader
 * JD-Core Version:    0.7.0.1
 */