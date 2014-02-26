package com.jd.droidlib.inner.reader;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class BundleExtraReader
{
  static Object readVal(Object paramObject, String paramString, boolean paramBoolean)
    throws Exception
  {
    Bundle localBundle;
    if ((paramObject instanceof Activity)) {
      localBundle = ((Activity)paramObject).getIntent().getExtras();
    }
    Object localObject;
    for (;;)
    {
      localObject = localBundle.get(paramString);
      if ((localObject != null) || (paramBoolean)) {
        break;
      }
      throw new Exception("Bundle missing required key: " + paramString);
      if ((ValueReader.isSupportAvaliable()) && (SupportFragmentsReader.isSupportObject(paramObject))) {
        localBundle = SupportFragmentsReader.getFragmentArguments(paramObject);
      } else {
        localBundle = NativeFragmentsReader.getFragmentArguments(paramObject);
      }
    }
    return localObject;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.reader.BundleExtraReader
 * JD-Core Version:    0.7.0.1
 */