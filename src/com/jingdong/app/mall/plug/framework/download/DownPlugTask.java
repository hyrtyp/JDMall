package com.jingdong.app.mall.plug.framework.download;

import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import java.util.ArrayList;

public class DownPlugTask
  implements Runnable
{
  private static final String TAG = "PlugTaskThread";
  private MyActivity mActivity;
  
  public DownPlugTask(MyActivity paramMyActivity)
  {
    this.mActivity = paramMyActivity;
  }
  
  public void run()
  {
    PlugHelper.loadPlugsFromNetWrok(this.mActivity, new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          ArrayList localArrayList = DownloadTools.getDownloadPlugList(paramAnonymousHttpResponse.getJSONObject());
          if ((localArrayList != null) && (!localArrayList.isEmpty())) {
            DownloadTools.DownloadPlug(DownPlugTask.this.mActivity, localArrayList, 0);
          }
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.download.DownPlugTask
 * JD-Core Version:    0.7.0.1
 */