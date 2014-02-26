package com.jingdong.common.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.novoda.imageloader.core.cache.LruBitmapCache;

public class DialogController
  implements DialogInterface.OnClickListener, DialogInterface.OnKeyListener
{
  protected AlertDialog alertDialog;
  protected AlertDialog.Builder builder;
  private boolean canBack = false;
  private boolean canceledOnTouchOutside = true;
  private CharSequence initMessage;
  private CharSequence initNegativeButton;
  private CharSequence initNeutralButton;
  private CharSequence initPositiveButton;
  private CharSequence initTitle;
  private View view;
  
  public static DialogController getSimpleDialogController(Context paramContext, String[] paramArrayOfString, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    DialogController localDialogController = new DialogController();
    localDialogController.setCanBack(true);
    localDialogController.init(paramContext);
    localDialogController.builder.setSingleChoiceItems(paramArrayOfString, paramInt, paramOnClickListener).create();
    return localDialogController;
  }
  
  public Button getButton(int paramInt)
  {
    AlertDialog localAlertDialog = this.alertDialog;
    Button localButton = null;
    if (localAlertDialog != null) {
      localButton = this.alertDialog.getButton(paramInt);
    }
    return localButton;
  }
  
  public void init(Context paramContext)
  {
    this.builder = new AlertDialog.Builder(paramContext);
    initContent();
    initButton();
  }
  
  protected void initButton()
  {
    if (!TextUtils.isEmpty(this.initPositiveButton)) {
      this.builder.setPositiveButton(this.initPositiveButton, this);
    }
    if (!TextUtils.isEmpty(this.initNeutralButton)) {
      this.builder.setNeutralButton(this.initNeutralButton, this);
    }
    if (!TextUtils.isEmpty(this.initNegativeButton)) {
      this.builder.setNegativeButton(this.initNegativeButton, this);
    }
  }
  
  protected void initContent()
  {
    if (!TextUtils.isEmpty(this.initTitle)) {
      this.builder.setTitle(this.initTitle);
    }
    if (!TextUtils.isEmpty(this.initMessage)) {
      this.builder.setMessage(this.initMessage);
    }
    if (this.view != null) {
      this.builder.setView(this.view);
    }
    this.builder.setOnKeyListener(this);
  }
  
  public boolean isCanBack()
  {
    return this.canBack;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    return (!isCanBack()) && (4 == paramInt);
  }
  
  public void setCanBack(boolean paramBoolean)
  {
    this.canBack = paramBoolean;
  }
  
  public void setCanceledOnTouchOutside(boolean paramBoolean)
  {
    this.canceledOnTouchOutside = paramBoolean;
  }
  
  public void setMessage(CharSequence paramCharSequence)
  {
    if (this.alertDialog != null)
    {
      this.alertDialog.setMessage(paramCharSequence);
      return;
    }
    if (this.builder != null)
    {
      this.builder.setMessage(paramCharSequence);
      return;
    }
    this.initMessage = paramCharSequence;
  }
  
  public void setNegativeButton(CharSequence paramCharSequence)
  {
    if (this.alertDialog != null)
    {
      if (TextUtils.isEmpty(paramCharSequence))
      {
        this.alertDialog.getButton(-2).setVisibility(8);
        return;
      }
      this.alertDialog.setButton(-2, paramCharSequence, this);
      return;
    }
    if (this.builder != null)
    {
      this.builder.setNegativeButton(this.initNegativeButton, this);
      return;
    }
    this.initNegativeButton = paramCharSequence;
  }
  
  public void setNeutralButton(CharSequence paramCharSequence)
  {
    if (this.alertDialog != null)
    {
      if (TextUtils.isEmpty(paramCharSequence))
      {
        this.alertDialog.getButton(-3).setVisibility(8);
        return;
      }
      this.alertDialog.setButton(-3, paramCharSequence, this);
      return;
    }
    if (this.builder != null)
    {
      this.builder.setNeutralButton(this.initNeutralButton, this);
      return;
    }
    this.initNeutralButton = paramCharSequence;
  }
  
  public void setPositiveButton(CharSequence paramCharSequence)
  {
    if (this.alertDialog != null)
    {
      if (TextUtils.isEmpty(paramCharSequence))
      {
        this.alertDialog.getButton(-1).setVisibility(8);
        return;
      }
      this.alertDialog.setButton(-1, paramCharSequence, this);
      return;
    }
    if (this.builder != null)
    {
      this.builder.setPositiveButton(paramCharSequence, this);
      return;
    }
    this.initPositiveButton = paramCharSequence;
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (this.alertDialog != null)
    {
      this.alertDialog.setTitle(paramCharSequence);
      return;
    }
    if (this.builder != null)
    {
      this.builder.setTitle(paramCharSequence);
      return;
    }
    this.initTitle = paramCharSequence;
  }
  
  public void setView(View paramView)
  {
    if (this.alertDialog != null)
    {
      this.alertDialog.setView(paramView);
      return;
    }
    if (this.builder != null)
    {
      this.builder.setView(paramView);
      return;
    }
    this.view = paramView;
  }
  
  public void show()
  {
    if (this.alertDialog != null)
    {
      this.alertDialog.show();
      return;
    }
    if (this.builder != null) {
      try
      {
        this.alertDialog = this.builder.show();
        this.alertDialog.setCanceledOnTouchOutside(this.canceledOnTouchOutside);
        return;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          GlobalImageCache.getLruBitmapCache().clean();
          this.alertDialog = this.builder.show();
        }
      }
    }
    throw new RuntimeException("builder is null, need init this controller");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.ui.DialogController
 * JD-Core Version:    0.7.0.1
 */