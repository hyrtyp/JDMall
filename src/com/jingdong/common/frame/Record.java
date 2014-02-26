package com.jingdong.common.frame;

import android.content.ComponentName;
import android.content.Intent;

public class Record
{
  private String component;
  private String id;
  private Intent intent;
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    Record localRecord;
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        localRecord = (Record)paramObject;
        if (this.component != null) {
          break;
        }
      } while (localRecord.component == null);
      return false;
    } while (this.component.equals(localRecord.component));
    return false;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public Intent getIntent()
  {
    return this.intent;
  }
  
  public int hashCode()
  {
    if (this.component == null) {}
    for (int i = 0;; i = this.component.hashCode()) {
      return i + 31;
    }
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setIntent(Intent paramIntent)
  {
    this.intent = paramIntent;
    if (paramIntent != null)
    {
      ComponentName localComponentName = paramIntent.getComponent();
      if (localComponentName != null) {
        this.component = localComponentName.getClassName();
      }
    }
  }
  
  public String toString()
  {
    return "Record [id=" + this.id + ", intent=" + this.intent + ", compentName=" + this.component + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.frame.Record
 * JD-Core Version:    0.7.0.1
 */