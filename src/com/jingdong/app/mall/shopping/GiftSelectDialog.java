package com.jingdong.app.mall.shopping;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.cart.CartResponseGift;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.SimpleSubViewBinder;
import com.jingdong.common.utils.adapter.SimpleImageProcessor;
import com.jingdong.common.utils.adapter.UIRunnable;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class GiftSelectDialog
{
  private static final String TAG = "GiftSelectDialog";
  private AlertDialog.Builder builder;
  private Dialog dialog;
  private TextView emptyView;
  private ArrayList<CartResponseGift> giftsList = null;
  private MyActivity mContext;
  private final int mDefaultColor = -16777216;
  private ListView mListView;
  private LinearLayout mainView;
  private SelectListener selectListener;
  private View view;
  
  public GiftSelectDialog(MyActivity paramMyActivity, ArrayList<CartResponseGift> paramArrayList)
  {
    this.mContext = paramMyActivity;
    this.giftsList = paramArrayList;
    this.builder = new AlertDialog.Builder(this.mContext);
    this.builder.setTitle(this.mContext.getString(2131166381));
    this.view = ImageUtil.inflate(2130903321, null);
    initDialog();
    this.builder.setView(this.view);
  }
  
  private ColorStateList getAlertTitleColor()
  {
    try
    {
      Field localField1 = AlertDialog.class.getDeclaredField("mAlert");
      localField1.setAccessible(true);
      Object localObject = localField1.get(this.dialog);
      Field localField2 = localObject.getClass().getDeclaredField("mTitleView");
      localField2.setAccessible(true);
      ColorStateList localColorStateList = ((TextView)localField2.get(localObject)).getTextColors();
      return localColorStateList;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  private void initDialog()
  {
    this.mListView = ((ListView)this.view.findViewById(2131494615));
    this.emptyView = ((TextView)this.view.findViewById(2131494617));
    this.mainView = ((LinearLayout)this.view.findViewById(2131494614));
  }
  
  private void setAdapter()
  {
    if ((this.giftsList != null) && (this.giftsList.size() > 0))
    {
      final ColorStateList localColorStateList = getAlertTitleColor();
      final MySimpleAdapter local1 = new MySimpleAdapter(this.mContext, this.giftsList, 2130903320, new String[] { "imgUrl", "name" }, new int[] { 2131494611, 2131494613 })
      {
        public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
        {
          View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
          final CartResponseGift localCartResponseGift = (CartResponseGift)getItem(paramAnonymousInt);
          TextView localTextView = (TextView)localView.findViewById(2131494613);
          Button localButton = (Button)localView.findViewById(2131494612);
          if (localColorStateList != null) {}
          for (ColorStateList localColorStateList = localColorStateList;; localColorStateList = ColorStateList.valueOf(-16777216))
          {
            localTextView.setTextColor(localColorStateList);
            localButton.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymous2View)
              {
                GiftSelectDialog.this.selectListener.onSelect(localCartResponseGift);
                if (GiftSelectDialog.this.dialog != null) {
                  GiftSelectDialog.this.dialog.dismiss();
                }
              }
            });
            if (getCount() <= 2)
            {
              ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
              FrameLayout.LayoutParams localLayoutParams1 = (FrameLayout.LayoutParams)GiftSelectDialog.this.mainView.getLayoutParams();
              if ((localLayoutParams != null) && (localLayoutParams1 != null)) {
                localLayoutParams.height = (localLayoutParams1.height / getCount());
              }
            }
            return localView;
          }
        }
      };
      local1.setViewBinder(new SimpleSubViewBinder(new AlertImageProcessor(null)));
      this.mContext.post(new Runnable()
      {
        public void run()
        {
          GiftSelectDialog.this.mListView.setVisibility(0);
          GiftSelectDialog.this.mListView.setAdapter(local1);
        }
      });
      return;
    }
    this.mContext.post(new Runnable()
    {
      public void run()
      {
        GiftSelectDialog.this.mListView.setVisibility(8);
        GiftSelectDialog.this.emptyView.setVisibility(0);
      }
    });
  }
  
  private void setDissmissListener()
  {
    this.dialog.setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        if (GiftSelectDialog.this.selectListener != null) {
          GiftSelectDialog.this.selectListener.onDissmiss();
        }
      }
    });
  }
  
  public void showDialog(SelectListener paramSelectListener)
  {
    this.selectListener = paramSelectListener;
    this.dialog = this.builder.create();
    setDissmissListener();
    this.dialog.show();
    setAdapter();
    if ((this.giftsList != null) && (this.giftsList.size() > 1))
    {
      this.mainView.getLayoutParams().height = DPIUtil.dip2px(260.0F);
      return;
    }
    this.mainView.getLayoutParams().height = DPIUtil.dip2px(120.0F);
  }
  
  private static class AlertImageProcessor
    extends SimpleImageProcessor
  {
    protected UIRunnable provideUIRunnable(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
    {
      return new MyUIRunnable(paramSubViewHolder, paramImageState);
    }
    
    private static class MyUIRunnable
      extends UIRunnable
    {
      public MyUIRunnable(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
      {
        super(paramImageState);
      }
      
      protected View getItemView()
      {
        SimpleBeanAdapter.SubViewHolder localSubViewHolder = getSubViewHolder();
        Object localObject = localSubViewHolder.getAdapter().getItem(localSubViewHolder.getPosition());
        if ((localObject != null) && (localSubViewHolder.getSubData().equals(((CartResponseGift)localObject).getImgUrl()))) {
          return super.getItemView();
        }
        return null;
      }
    }
  }
  
  public static abstract interface SelectListener
  {
    public abstract void onDissmiss();
    
    public abstract void onSelect(CartResponseGift paramCartResponseGift);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.GiftSelectDialog
 * JD-Core Version:    0.7.0.1
 */