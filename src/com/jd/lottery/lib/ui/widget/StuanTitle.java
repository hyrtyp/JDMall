package com.jd.lottery.lib.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.styleable;

public class StuanTitle
  extends RelativeLayout
{
  int leftDrawableId;
  private ImageView leftImageView;
  private ImageView leftSplitLine;
  int rightBtnTextResId;
  private TextView rightButton;
  int rightDrawableId;
  private ImageView rightImageView;
  private TitleClickListener titleClickListener;
  int titleDrawableId;
  private ImageView titleImageView;
  int titleTextResId;
  private TextView titleTextView;
  
  public StuanTitle(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public StuanTitle(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.stuan_title, this, true);
    this.leftImageView = ((ImageView)findViewById(R.id.stuan_title_left_img));
    this.rightImageView = ((ImageView)findViewById(R.id.stuan_title_right_img));
    this.rightButton = ((TextView)findViewById(R.id.stuan_title_right_btn));
    this.titleTextView = ((TextView)findViewById(R.id.stuan_title_title_text));
    this.titleImageView = ((ImageView)findViewById(R.id.stuan_title_title_icon));
    this.leftSplitLine = ((ImageView)findViewById(R.id.stuan_title_left_split_line));
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.stuan_title);
    this.leftDrawableId = localTypedArray.getResourceId(0, -1);
    this.rightDrawableId = localTypedArray.getResourceId(1, -1);
    this.rightBtnTextResId = localTypedArray.getResourceId(4, -1);
    this.titleTextResId = localTypedArray.getResourceId(2, -1);
    this.titleDrawableId = localTypedArray.getResourceId(3, -1);
    if (this.leftDrawableId != -1)
    {
      this.leftImageView.setImageResource(this.leftDrawableId);
      this.leftImageView.setVisibility(0);
      this.leftSplitLine.setVisibility(0);
      this.leftImageView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (StuanTitle.this.titleClickListener != null) {
            StuanTitle.this.titleClickListener.onLeftClicked();
          }
        }
      });
    }
    if (this.rightDrawableId != -1)
    {
      this.rightImageView.setImageResource(this.rightDrawableId);
      this.rightImageView.setVisibility(0);
      this.rightImageView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (StuanTitle.this.titleClickListener != null) {
            StuanTitle.this.titleClickListener.onRightClicked();
          }
        }
      });
    }
    if (this.rightBtnTextResId != -1)
    {
      this.rightButton.setText(this.rightBtnTextResId);
      this.rightButton.setVisibility(0);
      this.rightButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (StuanTitle.this.titleClickListener != null) {
            StuanTitle.this.titleClickListener.onRightClicked();
          }
        }
      });
    }
    if (this.titleTextResId != -1)
    {
      this.titleTextView.setText(this.titleTextResId);
      this.titleTextView.setVisibility(0);
    }
    if (this.titleDrawableId != -1)
    {
      this.titleImageView.setImageResource(this.titleDrawableId);
      this.titleImageView.setVisibility(0);
    }
    localTypedArray.recycle();
  }
  
  public void setOnTitleClickListener(TitleClickListener paramTitleClickListener)
  {
    this.titleClickListener = paramTitleClickListener;
  }
  
  public void setRightImageViewBackgroundResource(int paramInt)
  {
    this.rightImageView.setBackgroundResource(paramInt);
  }
  
  public void setRightVisibility(int paramInt)
  {
    if (this.rightDrawableId != -1) {
      this.rightImageView.setVisibility(paramInt);
    }
    while (this.rightBtnTextResId == -1) {
      return;
    }
    this.rightButton.setVisibility(paramInt);
  }
  
  public void setTitleImageResource(int paramInt)
  {
    this.titleTextView.setVisibility(8);
    this.titleImageView.setVisibility(0);
    this.titleImageView.setImageResource(paramInt);
  }
  
  public void setTitleText(int paramInt)
  {
    this.titleImageView.setVisibility(8);
    this.titleTextView.setVisibility(0);
    this.titleTextView.setText(paramInt);
  }
  
  public void setTitleText(String paramString)
  {
    this.titleImageView.setVisibility(8);
    this.titleTextView.setVisibility(0);
    this.titleTextView.setText(paramString);
  }
  
  public void setnRightClickable(boolean paramBoolean)
  {
    if (this.rightDrawableId != -1) {
      this.rightImageView.setClickable(paramBoolean);
    }
    while (this.rightBtnTextResId == -1) {
      return;
    }
    this.rightButton.setClickable(paramBoolean);
  }
  
  public static abstract interface TitleClickListener
  {
    public abstract void onLeftClicked();
    
    public abstract void onRightClicked();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.StuanTitle
 * JD-Core Version:    0.7.0.1
 */