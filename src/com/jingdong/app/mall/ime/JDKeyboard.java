package com.jingdong.app.mall.ime;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.inputmethodservice.Keyboard;
import android.inputmethodservice.Keyboard.Key;
import android.inputmethodservice.Keyboard.Row;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.novoda.imageloader.core.cache.LruBitmapCache;

public class JDKeyboard
  extends Keyboard
{
  private Context mContext;
  private Keyboard.Key mOKKey;
  private Keyboard.Key mQwertyShiftKey;
  private Resources mRes;
  private Keyboard.Key mSymbolShiftKey;
  private Keyboard.Key mSymbolSwitchQwertyKey;
  private int mTextSize;
  
  public JDKeyboard(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    Resources localResources = paramContext.getResources();
    this.mContext = paramContext;
    this.mRes = localResources;
  }
  
  public JDKeyboard(Context paramContext, int paramInt1, CharSequence paramCharSequence, int paramInt2, int paramInt3)
  {
    super(paramContext, paramInt1, paramCharSequence, paramInt2, paramInt3);
  }
  
  private Bitmap drawTextAtBitmap(Bitmap paramBitmap, String paramString)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    localCanvas.drawBitmap(paramBitmap, 0.0F, 0.0F, localPaint);
    localPaint.setColor(this.mRes.getColor(2131296286));
    localPaint.setTextSize(this.mTextSize);
    Rect localRect = new Rect();
    localPaint.getTextBounds(paramString, 0, paramString.length(), localRect);
    localPaint.setAntiAlias(true);
    localCanvas.drawText(paramString, (float)((i - localRect.width()) / 2.0D), (float)((j + localRect.height()) / 2.0D), localPaint);
    localCanvas.save(31);
    localCanvas.restore();
    return localBitmap;
  }
  
  private void recycleBitmap(Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      paramBitmap.recycle();
    }
  }
  
  protected Keyboard.Key createKeyFromXml(Resources paramResources, Keyboard.Row paramRow, int paramInt1, int paramInt2, XmlResourceParser paramXmlResourceParser)
  {
    JDKey localJDKey = new JDKey(paramResources, paramRow, paramInt1, paramInt2, paramXmlResourceParser);
    if (localJDKey.codes[0] == -102) {
      this.mSymbolShiftKey = localJDKey;
    }
    do
    {
      return localJDKey;
      if (localJDKey.codes[0] == -2)
      {
        this.mSymbolSwitchQwertyKey = localJDKey;
        return localJDKey;
      }
      if (localJDKey.codes[0] == -3)
      {
        this.mOKKey = localJDKey;
        return localJDKey;
      }
    } while (localJDKey.codes[0] != -1);
    this.mQwertyShiftKey = localJDKey;
    return localJDKey;
  }
  
  public BitmapDrawable drawTextToDrawable(String paramString)
  {
    try
    {
      Bitmap localBitmap1 = makeTheImageTransparent(BitmapFactory.decodeResource(this.mContext.getResources(), 2130837545));
      Bitmap localBitmap2 = drawTextAtBitmap(localBitmap1, paramString);
      recycleBitmap(localBitmap1);
      BitmapDrawable localBitmapDrawable = new BitmapDrawable(this.mContext.getResources(), localBitmap2);
      return localBitmapDrawable;
    }
    catch (Throwable localThrowable)
    {
      GlobalImageCache.getLruBitmapCache().cleanMost();
      drawTextToDrawable(paramString);
    }
    return null;
  }
  
  public Bitmap makeTheImageTransparent(Bitmap paramBitmap)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_4444);
    localBitmap.eraseColor(0);
    return localBitmap;
  }
  
  public void setJDKeyIcon(String paramString)
  {
    BitmapDrawable localBitmapDrawable;
    try
    {
      localBitmapDrawable = drawTextToDrawable(paramString);
      if (this.mContext.getApplicationContext().getString(2131166233).equals(paramString))
      {
        this.mOKKey.icon = localBitmapDrawable;
        return;
      }
      if ((this.mContext.getApplicationContext().getString(2131166241).equals(paramString)) || (this.mContext.getApplicationContext().getString(2131166240).equals(paramString)))
      {
        this.mSymbolSwitchQwertyKey.icon = localBitmapDrawable;
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    this.mSymbolShiftKey.icon = localBitmapDrawable;
  }
  
  public void setKeyBackground(Drawable paramDrawable)
  {
    this.mQwertyShiftKey.icon = paramDrawable;
  }
  
  public void setKeyTextSize(int paramInt)
  {
    this.mTextSize = paramInt;
  }
  
  static class JDKey
    extends Keyboard.Key
  {
    public JDKey(Resources paramResources, Keyboard.Row paramRow, int paramInt1, int paramInt2, XmlResourceParser paramXmlResourceParser)
    {
      super(paramRow, paramInt1, paramInt2, paramXmlResourceParser);
    }
    
    public boolean isInside(int paramInt1, int paramInt2)
    {
      if (this.codes[0] == -3) {
        paramInt2 -= 10;
      }
      return super.isInside(paramInt1, paramInt2);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.ime.JDKeyboard
 * JD-Core Version:    0.7.0.1
 */