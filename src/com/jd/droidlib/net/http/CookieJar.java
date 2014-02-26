package com.jd.droidlib.net.http;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.Strings;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.impl.cookie.BrowserCompatSpec;
import org.apache.http.message.BasicHeader;

public class CookieJar
  extends CookieHandler
  implements CookieStore
{
  private static final String SEP = ";";
  private final CookieSpec cookieSpec = new BrowserCompatSpec();
  private final ArrayList<Cookie> cookies = new ArrayList();
  private boolean persistCookies;
  private final SharedPreferences prefs;
  
  public CookieJar(Context paramContext)
  {
    this.prefs = paramContext.getSharedPreferences("droidlib_restclient_cookies", 0);
  }
  
  private static Cookie fromString(String paramString)
  {
    String[] arrayOfString = paramString.split(";");
    BasicClientCookie localBasicClientCookie = new BasicClientCookie(arrayOfString[0], arrayOfString[1]);
    localBasicClientCookie.setDomain(arrayOfString[2]);
    localBasicClientCookie.setPath(arrayOfString[3]);
    if (arrayOfString.length == 5) {
      localBasicClientCookie.setExpiryDate(new Date(Long.valueOf(arrayOfString[4]).longValue()));
    }
    return localBasicClientCookie;
  }
  
  private Collection<Cookie> getCookies(URI paramURI)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = getCookies().iterator();
    if (!localIterator.hasNext()) {
      return localHashMap.values();
    }
    Cookie localCookie1 = (Cookie)localIterator.next();
    int i;
    label80:
    int j;
    if ((paramURI.getHost().equals(localCookie1.getDomain())) && (paramURI.getPath().startsWith(localCookie1.getPath())))
    {
      i = 1;
      if (i == 0) {
        break label174;
      }
      j = 1;
      if (localHashMap.containsKey(localCookie1.getName()))
      {
        Cookie localCookie2 = (Cookie)localHashMap.get(localCookie1.getName());
        if (localCookie1.getPath().length() <= localCookie2.getPath().length()) {
          break label176;
        }
      }
    }
    label174:
    label176:
    for (int k = 1;; k = 0)
    {
      j = k;
      if (j == 0) {
        break;
      }
      localHashMap.put(localCookie1.getName(), localCookie1);
      break;
      i = 0;
      break label80;
      break;
    }
  }
  
  private static boolean isEqual(Cookie paramCookie1, Cookie paramCookie2)
  {
    return (paramCookie1.getName().equals(paramCookie2.getName())) && (paramCookie1.getDomain().equals(paramCookie2.getDomain())) && (paramCookie1.getPath().equals(paramCookie2.getPath()));
  }
  
  private List<Cookie> parseCookies(URI paramURI, List<String> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    int i;
    CookieOrigin localCookieOrigin;
    Iterator localIterator;
    if (paramURI.getPort() < 0)
    {
      i = 80;
      boolean bool = "https".equals(paramURI.getScheme());
      localCookieOrigin = new CookieOrigin(paramURI.getHost(), i, paramURI.getPath(), bool);
      localIterator = paramList.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        return localArrayList;
        i = paramURI.getPort();
        break;
      }
      BasicHeader localBasicHeader = new BasicHeader("Set-Cookie", (String)localIterator.next());
      try
      {
        localArrayList.addAll(this.cookieSpec.parse(localBasicHeader, localCookieOrigin));
      }
      catch (MalformedCookieException localMalformedCookieException)
      {
        L.d(localMalformedCookieException);
      }
    }
  }
  
  private void persistCookies()
  {
    SharedPreferences.Editor localEditor = this.prefs.edit();
    localEditor.clear();
    for (int i = 0;; i++)
    {
      if (i >= this.cookies.size())
      {
        localEditor.commit();
        return;
      }
      localEditor.putString(String.valueOf(i), toString((Cookie)this.cookies.get(i)));
    }
  }
  
  private void restoreCookies()
  {
    for (int i = 0;; i++)
    {
      if (i >= 2147483647) {}
      String str;
      do
      {
        return;
        str = this.prefs.getString(String.valueOf(i), null);
      } while (str == null);
      this.cookies.add(fromString(str));
    }
  }
  
  private static String toString(Cookie paramCookie)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramCookie.getName());
    localStringBuilder.append(";");
    localStringBuilder.append(paramCookie.getValue());
    localStringBuilder.append(";");
    localStringBuilder.append(paramCookie.getDomain());
    localStringBuilder.append(";");
    localStringBuilder.append(paramCookie.getPath());
    Date localDate = paramCookie.getExpiryDate();
    if (localDate != null)
    {
      localStringBuilder.append(";");
      localStringBuilder.append(localDate.getTime());
    }
    return localStringBuilder.toString();
  }
  
  public void addCookie(Cookie paramCookie)
  {
    L.d("Got a cookie: %s.", new Object[] { paramCookie });
    Iterator localIterator = this.cookies.iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        if (!paramCookie.isExpired(new Date())) {
          this.cookies.add(paramCookie);
        }
        if (this.persistCookies) {
          persistCookies();
        }
        return;
      }
      if (isEqual(paramCookie, (Cookie)localIterator.next())) {
        localIterator.remove();
      }
    }
  }
  
  public void clear()
  {
    this.cookies.clear();
    if (this.persistCookies) {
      persistCookies();
    }
  }
  
  public boolean clearExpired(Date paramDate)
  {
    boolean bool = false;
    Iterator localIterator = this.cookies.iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        if ((this.persistCookies) && (bool)) {
          persistCookies();
        }
        return bool;
      }
      if (((Cookie)localIterator.next()).isExpired(paramDate))
      {
        localIterator.remove();
        bool = true;
      }
    }
  }
  
  public Map<String, List<String>> get(URI paramURI, Map<String, List<String>> paramMap)
    throws IOException
  {
    clearExpired(new Date());
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = getCookies(paramURI).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return Collections.singletonMap("Cookie", Collections.singletonList(Strings.join(localArrayList, ";")));
      }
      Cookie localCookie = (Cookie)localIterator.next();
      localArrayList.add(localCookie.getName() + "=" + localCookie.getValue());
    }
  }
  
  public List<Cookie> getCookies()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.cookies.size());
    L.d("Cookie count: %d.", arrayOfObject);
    return Collections.unmodifiableList(this.cookies);
  }
  
  public void put(URI paramURI, Map<String, List<String>> paramMap)
    throws IOException
  {
    Iterator localIterator1 = paramMap.keySet().iterator();
    if (!localIterator1.hasNext()) {}
    for (;;)
    {
      return;
      String str = (String)localIterator1.next();
      if ((!"Set-Cookie".equalsIgnoreCase(str)) && (!"Set-Cookie2".equalsIgnoreCase(str))) {
        break;
      }
      Iterator localIterator2 = parseCookies(paramURI, (List)paramMap.get(str)).iterator();
      while (localIterator2.hasNext()) {
        addCookie((Cookie)localIterator2.next());
      }
    }
  }
  
  public void setPersistent(boolean paramBoolean)
  {
    this.persistCookies = paramBoolean;
    if (this.persistCookies)
    {
      this.cookies.clear();
      restoreCookies();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.http.CookieJar
 * JD-Core Version:    0.7.0.1
 */