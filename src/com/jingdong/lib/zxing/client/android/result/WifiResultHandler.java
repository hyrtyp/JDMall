package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import android.net.wifi.WifiManager;
import android.widget.Toast;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.WifiParsedResult;
import com.jingdong.lib.zxing.client.android.CaptureActivity;
import com.jingdong.lib.zxing.client.android.executor.AsyncTaskExecInterface;
import com.jingdong.lib.zxing.client.android.executor.AsyncTaskExecManager;

public final class WifiResultHandler
  extends ResultHandler
{
  private final CaptureActivity parent;
  private final AsyncTaskExecInterface taskExec;
  
  public WifiResultHandler(CaptureActivity paramCaptureActivity, ParsedResult paramParsedResult)
  {
    super(paramCaptureActivity, paramParsedResult);
    this.parent = paramCaptureActivity;
    this.taskExec = ((AsyncTaskExecInterface)new AsyncTaskExecManager().build());
  }
  
  public int getButtonCount()
  {
    return 1;
  }
  
  public int getButtonText(int paramInt)
  {
    return 2131166606;
  }
  
  public CharSequence getDisplayContents()
  {
    WifiParsedResult localWifiParsedResult = (WifiParsedResult)getResult();
    StringBuilder localStringBuilder = new StringBuilder(50);
    ParsedResult.maybeAppend(this.parent.getString(2131166695) + '\n' + localWifiParsedResult.getSsid(), localStringBuilder);
    ParsedResult.maybeAppend(this.parent.getString(2131166696) + '\n' + localWifiParsedResult.getNetworkEncryption(), localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public int getDisplayTitle()
  {
    return 2131166691;
  }
  
  public void handleButtonPress(int paramInt)
  {
    if (paramInt == 0)
    {
      ((WifiParsedResult)getResult());
      ((WifiManager)getActivity().getSystemService("wifi"));
      Toast.makeText(getActivity(), 2131166694, 1).show();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.WifiResultHandler
 * JD-Core Version:    0.7.0.1
 */