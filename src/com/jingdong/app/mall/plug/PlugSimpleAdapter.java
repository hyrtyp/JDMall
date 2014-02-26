package com.jingdong.app.mall.plug;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugResources;
import com.jingdong.app.mall.plug.utils.PlugInflateUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.MySimpleAdapter;
import java.util.List;

public class PlugSimpleAdapter
  extends MySimpleAdapter
{
  private IMyActivity myActivity;
  private PlugResources plugResources;
  
  public PlugSimpleAdapter(IMyActivity paramIMyActivity, List<?> paramList, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt, boolean paramBoolean)
  {
    super(paramIMyActivity, paramList, paramInt, paramArrayOfString, paramArrayOfInt, paramBoolean);
    this.myActivity = paramIMyActivity;
  }
  
  protected View inflateView(ViewGroup paramViewGroup, int paramInt)
  {
    Activity localActivity = this.myActivity.getThisActivity();
    if ((this.plugResources != null) && ((localActivity instanceof MyActivity))) {
      return PlugInflateUtil.inflate(this.plugResources, (MyActivity)this.myActivity.getThisActivity(), paramInt, paramViewGroup);
    }
    return super.inflateView(paramViewGroup, paramInt);
  }
  
  public void setPlugResources(PlugResources paramPlugResources)
  {
    this.plugResources = paramPlugResources;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.PlugSimpleAdapter
 * JD-Core Version:    0.7.0.1
 */