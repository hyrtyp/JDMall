package com.jingdong.app.mall.signin;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.PopupWindow;

public class JDPopupWindow
{
  private Context mContext;
  private PopupWindow mPopupWindow = null;
  
  public JDPopupWindow(Context paramContext, PopupWindow paramPopupWindow)
  {
    this.mContext = paramContext;
    this.mPopupWindow = paramPopupWindow;
    this.mPopupWindow.setFocusable(true);
    this.mPopupWindow.setOutsideTouchable(true);
    this.mPopupWindow.setBackgroundDrawable(paramContext.getResources().getDrawable(2130838619));
  }
  
  public void closePopupMenu()
  {
    if ((this.mPopupWindow != null) && (this.mPopupWindow.isShowing())) {
      this.mPopupWindow.dismiss();
    }
  }
  
  public PopupWindow getPopupWindow()
  {
    return this.mPopupWindow;
  }
  
  public boolean isShowing()
  {
    return (this.mPopupWindow != null) && (this.mPopupWindow.isShowing());
  }
  
  public void setBackground(Drawable paramDrawable)
  {
    this.mPopupWindow.setBackgroundDrawable(paramDrawable);
  }
  
  public void showAsDropDown(View paramView, int paramInt1, int paramInt2)
  {
    if (this.mContext == null) {}
    while (((this.mContext instanceof Activity)) && (((Activity)this.mContext).isFinishing())) {
      return;
    }
    this.mPopupWindow.showAsDropDown(paramView, paramInt1, paramInt2);
  }
  
  public void showAtLocation(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.mContext == null) {}
    while (((this.mContext instanceof Activity)) && (((Activity)this.mContext).isFinishing())) {
      return;
    }
    this.mPopupWindow.showAtLocation(paramView, paramInt1, paramInt2, paramInt3);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.signin.JDPopupWindow
 * JD-Core Version:    0.7.0.1
 */