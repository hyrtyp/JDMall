package com.jingdong.app.mall.home;

import com.jingdong.common.utils.HttpGroup;

public abstract interface PullRefreshListener
{
  public abstract void resetNoLoad();
  
  public abstract void setHttpGroup(HttpGroup paramHttpGroup);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.PullRefreshListener
 * JD-Core Version:    0.7.0.1
 */