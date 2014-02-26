package com.jingdong.app.mall.utils.frame;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.widget.RadioButton;

public class TabBarButton
  extends RadioButton
{
  Context context;
  private StateController stateController = new StateController();
  
  public TabBarButton(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
  }
  
  public TabBarButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
  }
  
  private void setStateImageDrawables(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    StateListDrawable localStateListDrawable = new StateListDrawable();
    Drawable localDrawable = getResources().getDrawable(2130837751);
    int[] arrayOfInt1 = new int[2];
    arrayOfInt1[0] = 16842912;
    arrayOfInt1[1] = (-16842909);
    localStateListDrawable.addState(arrayOfInt1, paramDrawable2);
    int[] arrayOfInt2 = new int[2];
    arrayOfInt2[0] = (-16842912);
    arrayOfInt2[1] = (-16842909);
    localStateListDrawable.addState(arrayOfInt2, paramDrawable2);
    localStateListDrawable.addState(new int[] { 16842912, 16842919 }, paramDrawable1);
    int[] arrayOfInt3 = new int[2];
    arrayOfInt3[0] = (-16842912);
    arrayOfInt3[1] = 16842919;
    localStateListDrawable.addState(arrayOfInt3, paramDrawable1);
    localStateListDrawable.addState(new int[] { 16842912, 16842908 }, paramDrawable1);
    int[] arrayOfInt4 = new int[2];
    arrayOfInt4[0] = (-16842912);
    arrayOfInt4[1] = 16842908;
    localStateListDrawable.addState(arrayOfInt4, paramDrawable2);
    localStateListDrawable.addState(new int[] { 16842912 }, paramDrawable1);
    int[] arrayOfInt5 = new int[1];
    arrayOfInt5[0] = (-16842912);
    localStateListDrawable.addState(arrayOfInt5, paramDrawable2);
    localStateListDrawable.addState(new int[0], localDrawable);
    setButtonDrawable(localStateListDrawable);
  }
  
  public StateController getStateController()
  {
    return this.stateController;
  }
  
  public void setState(String paramString, int paramInt)
  {
    RadioStateDrawable localRadioStateDrawable1 = new RadioStateDrawable(this.context, paramInt, paramString, false, 0);
    RadioStateDrawable localRadioStateDrawable2 = new RadioStateDrawable(this.context, paramInt, paramString, true, 3);
    localRadioStateDrawable1.setStateController(this.stateController);
    localRadioStateDrawable2.setStateController(this.stateController);
    setStateImageDrawables(localRadioStateDrawable2, localRadioStateDrawable1);
  }
  
  public void setState(String paramString, int paramInt1, int paramInt2)
  {
    RadioStateDrawable localRadioStateDrawable1 = new RadioStateDrawable(this.context, paramInt2, paramString, false, 0);
    RadioStateDrawable localRadioStateDrawable2 = new RadioStateDrawable(this.context, paramInt1, paramString, true, 3);
    localRadioStateDrawable1.setStateController(this.stateController);
    localRadioStateDrawable2.setStateController(this.stateController);
    setStateImageDrawables(localRadioStateDrawable2, localRadioStateDrawable1);
  }
  
  public void setState(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    RadioStateDrawable localRadioStateDrawable1 = new RadioStateDrawable(this.context, paramInt1, paramString, false, paramInt2);
    RadioStateDrawable localRadioStateDrawable2 = new RadioStateDrawable(this.context, paramInt1, paramString, true, paramInt3);
    localRadioStateDrawable1.setStateController(this.stateController);
    localRadioStateDrawable2.setStateController(this.stateController);
    setStateImageDrawables(localRadioStateDrawable2, localRadioStateDrawable1);
  }
  
  public class StateController
  {
    private static final int MAX_NUMBER = 100;
    private static final String MAX_STR = "99+";
    private Integer num;
    
    public StateController() {}
    
    public void addNum()
    {
      if (this.num == null) {}
      for (int i = 1;; i = 1 + this.num.intValue())
      {
        setNum(Integer.valueOf(i));
        return;
      }
    }
    
    public String getNum()
    {
      if (this.num == null) {
        return null;
      }
      if (this.num.intValue() >= 100) {
        return "99+";
      }
      return this.num.toString();
    }
    
    public void setNum(Integer paramInteger)
    {
      this.num = paramInteger;
      TabBarButton.this.invalidate();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.frame.TabBarButton
 * JD-Core Version:    0.7.0.1
 */