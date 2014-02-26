package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.util.Log;
import com.google.zxing.client.result.CalendarParsedResult;
import com.google.zxing.client.result.ParsedResult;
import java.text.DateFormat;
import java.util.Date;

public final class CalendarResultHandler
  extends ResultHandler
{
  private static final String TAG = CalendarResultHandler.class.getSimpleName();
  private static final int[] buttons = { 2131166581 };
  
  public CalendarResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    super(paramActivity, paramParsedResult);
  }
  
  private void addCalendarEvent(String paramString1, Date paramDate1, boolean paramBoolean, Date paramDate2, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    Intent localIntent = new Intent("android.intent.action.INSERT");
    localIntent.setType("vnd.android.cursor.item/event");
    long l1 = paramDate1.getTime();
    localIntent.putExtra("beginTime", l1);
    if (paramBoolean) {
      localIntent.putExtra("allDay", true);
    }
    long l2;
    if (paramDate2 == null) {
      if (paramBoolean) {
        l2 = l1 + 86400000L;
      }
    }
    for (;;)
    {
      localIntent.putExtra("endTime", l2);
      localIntent.putExtra("title", paramString1);
      localIntent.putExtra("eventLocation", paramString2);
      localIntent.putExtra("description", paramString3);
      if (paramArrayOfString != null) {
        localIntent.putExtra("android.intent.extra.EMAIL", paramArrayOfString);
      }
      try
      {
        rawLaunchIntent(localIntent);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.w(TAG, "No calendar app available that responds to android.intent.action.INSERT");
        localIntent.setAction("android.intent.action.EDIT");
        launchIntent(localIntent);
      }
      l2 = l1;
      continue;
      l2 = paramDate2.getTime();
    }
  }
  
  private static String format(boolean paramBoolean, Date paramDate)
  {
    if (paramDate == null) {
      return null;
    }
    if (paramBoolean) {}
    for (DateFormat localDateFormat = DateFormat.getDateInstance(2);; localDateFormat = DateFormat.getDateTimeInstance(2, 2)) {
      return localDateFormat.format(paramDate);
    }
  }
  
  public int getButtonCount()
  {
    return buttons.length;
  }
  
  public int getButtonText(int paramInt)
  {
    return buttons[paramInt];
  }
  
  public CharSequence getDisplayContents()
  {
    CalendarParsedResult localCalendarParsedResult = (CalendarParsedResult)getResult();
    StringBuilder localStringBuilder = new StringBuilder(100);
    ParsedResult.maybeAppend(localCalendarParsedResult.getSummary(), localStringBuilder);
    Date localDate1 = localCalendarParsedResult.getStart();
    ParsedResult.maybeAppend(format(localCalendarParsedResult.isStartAllDay(), localDate1), localStringBuilder);
    Date localDate2 = localCalendarParsedResult.getEnd();
    if (localDate2 != null)
    {
      if ((localCalendarParsedResult.isEndAllDay()) && (!localDate1.equals(localDate2))) {
        localDate2 = new Date(localDate2.getTime() - 86400000L);
      }
      ParsedResult.maybeAppend(format(localCalendarParsedResult.isEndAllDay(), localDate2), localStringBuilder);
    }
    ParsedResult.maybeAppend(localCalendarParsedResult.getLocation(), localStringBuilder);
    ParsedResult.maybeAppend(localCalendarParsedResult.getOrganizer(), localStringBuilder);
    ParsedResult.maybeAppend(localCalendarParsedResult.getAttendees(), localStringBuilder);
    ParsedResult.maybeAppend(localCalendarParsedResult.getDescription(), localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public int getDisplayTitle()
  {
    return 2131166682;
  }
  
  public void handleButtonPress(int paramInt)
  {
    CalendarParsedResult localCalendarParsedResult;
    String str;
    if (paramInt == 0)
    {
      localCalendarParsedResult = (CalendarParsedResult)getResult();
      localObject = localCalendarParsedResult.getDescription();
      str = localCalendarParsedResult.getOrganizer();
      if (str != null) {
        if (localObject != null) {
          break label65;
        }
      }
    }
    label65:
    for (Object localObject = str;; localObject = localObject + '\n' + str)
    {
      addCalendarEvent(localCalendarParsedResult.getSummary(), localCalendarParsedResult.getStart(), localCalendarParsedResult.isStartAllDay(), localCalendarParsedResult.getEnd(), localCalendarParsedResult.getLocation(), (String)localObject, localCalendarParsedResult.getAttendees());
      return;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.CalendarResultHandler
 * JD-Core Version:    0.7.0.1
 */