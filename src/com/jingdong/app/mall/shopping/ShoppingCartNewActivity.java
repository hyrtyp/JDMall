package com.jingdong.app.mall.shopping;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.home.slide.SlideUtils;
import com.jingdong.app.mall.login.LoginActivity;
import com.jingdong.app.mall.promotion.PromotionActivity;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.app.mall.utils.ui.PriceTextView;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.controller.ProductDetailController;
import com.jingdong.common.controller.ProductDetailController.ProductDetailListener;
import com.jingdong.common.controller.ShoppingBaseController.ShoppingListener;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.entity.cart.CartPackSummary;
import com.jingdong.common.entity.cart.CartResonseYB;
import com.jingdong.common.entity.cart.CartResonseYBSelected;
import com.jingdong.common.entity.cart.CartResponse;
import com.jingdong.common.entity.cart.CartResponseGift;
import com.jingdong.common.entity.cart.CartResponseInfo;
import com.jingdong.common.entity.cart.CartResponseSku;
import com.jingdong.common.entity.cart.CartResponseSuit;
import com.jingdong.common.entity.cart.CartSkuSummary;
import com.jingdong.common.frame.IResumeListener;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.ui.HandlerRecycleBitmapDrawable;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.ImageLoadListener;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class ShoppingCartNewActivity
  extends MyActivity
{
  public static final int GIFTS = 1;
  public static final int SKUS = 0;
  public static final int SUITS = 2;
  private static final String TAG = "ShoppingCartTestActivity";
  public static boolean isGoFillOrder = false;
  private final int MAX_PRODUCT_NUM = 1000;
  private final int PACK_PRODUCT_CHILD = 4;
  private final int PACK_PRODUCT_DEFAULT = 3;
  private final int PACK_PRODUCT_YB = 5;
  private final int SINGLE_PRODUCT = 1;
  private final int SINGLE_PRODUCT_YB = 2;
  private ShoppingCartAdapter adapter;
  private ImageButton allSelectBut;
  TextView cartCountPriceTv = null;
  TextView cartCountYunFei = null;
  TextView cartOriginalReturnPriceTv = null;
  Button cartSettleAccountsBut = null;
  EditProductCountDialog currEditDialog = null;
  private DecimalFormat decFormat = new DecimalFormat("0.00");
  private Button deleteBut;
  private ArrayList<CartPackSummary> deletePackProducts = new ArrayList();
  private ArrayList<CartSkuSummary> deleteSingleProducts = new ArrayList();
  HashMap<String, CartPackSummary> editPacks = new HashMap();
  HashMap<String, CartSkuSummary> editSkus = new HashMap();
  HashMap<String, CartPackSummary> editYbs = new HashMap();
  View footPriceView = null;
  private Handler hd = new Handler();
  View headLoginView = null;
  private Bitmap imageBg = null;
  private boolean isAllSelect = false;
  private boolean isLoadingData = false;
  private View loadErrorLayout;
  View.OnClickListener noDataLoginClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ShoppingCartNewActivity.this.forwardLogin();
    }
  };
  private TextView noDateStateText;
  private View nodataLayout;
  private Button reloadBtn;
  private Resources res = null;
  private View.OnClickListener settleAccountsButtonListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (!ShoppingCartNewActivity.this.adapter.isExisSelectItem()) {
        ShoppingCartNewActivity.this.toastShow(2131166402);
      }
      do
      {
        return;
        if (!LoginUserBase.hasLogin()) {
          break;
        }
      } while ((ShoppingCartNewActivity.this.adapter == null) || (ShoppingCartNewActivity.this.adapter.getCartResponseInfo() == null));
      Constants.bAddEasyBuy = false;
      Constants.bEasyBuy = false;
      Constants.bModifyEasyBuy = false;
      Intent localIntent = new Intent(ShoppingCartNewActivity.this, NewFillOrderActivity.class);
      localIntent.putExtra("selectedCartResponseInfo", ShoppingCartNewActivity.this.adapter.getCartResponseInfo());
      ShoppingCartNewActivity.this.startTaskActivityInFrame(localIntent);
      return;
      ShoppingCartNewActivity.this.forwardLogin();
    }
  };
  private View shadowView = null;
  private LinearLayout shoppingFunctionLayout = null;
  private ListView shoppingListView;
  private MyActivity thisContext;
  private long token = -1L;
  private boolean ybControlLoading = false;
  
  private double StringtoDouble(String paramString)
  {
    try
    {
      double d = Double.parseDouble(paramString);
      return d;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return 0.0D;
  }
  
  private void addCollect(final long paramLong)
  {
    Runnable local50 = new Runnable()
    {
      public void run()
      {
        new ProductDetailController(ShoppingCartNewActivity.this.getHttpGroupaAsynPool()).addFavorite(paramLong, new ProductDetailController.ProductDetailListener()
        {
          public void onFinish(Product paramAnonymous2Product, int paramAnonymous2Int, boolean paramAnonymous2Boolean)
          {
            final String str = paramAnonymous2Product.getAddFavoriteMsg();
            ShoppingCartNewActivity.this.post(new Runnable()
            {
              public void run()
              {
                ShoppingCartNewActivity.this.toastShow(str);
              }
            });
          }
        });
      }
    };
    LoginUser.getInstance().executeLoginRunnable(this, local50, getString(2131165678), true);
  }
  
  private boolean checkData(ArrayList paramArrayList)
  {
    return (paramArrayList != null) && (paramArrayList.size() > 0);
  }
  
  private void createPackView(final CartResponseSuit paramCartResponseSuit, View paramView)
  {
    final String str1 = paramCartResponseSuit.getsType();
    final View localView1 = paramView.findViewById(2131494557);
    View localView2 = paramView.findViewById(2131494561);
    View localView3 = paramView.findViewById(2131494569);
    TextView localTextView1 = (TextView)localView3.findViewById(2131494574);
    LinearLayout localLinearLayout1 = (LinearLayout)paramView.findViewById(2131494568);
    localLinearLayout1.removeAllViews();
    ImageView localImageView3;
    ImageButton localImageButton5;
    ImageButton localImageButton6;
    label339:
    label356:
    int i14;
    label423:
    LinearLayout localLinearLayout2;
    int i12;
    if ("4".equals(str1))
    {
      int i13 = DPIUtil.dip2px(5.0F);
      paramView.setPadding(i13, i13 >> 2, i13, i13);
      localView1.setVisibility(0);
      View.OnLongClickListener local14 = new View.OnLongClickListener()
      {
        public boolean onLongClick(View paramAnonymousView)
        {
          ShoppingCartNewActivity.this.showDeleteDetailFavoriteDialog(null, paramCartResponseSuit, true);
          return false;
        }
      };
      localView1.setOnLongClickListener(local14);
      localView3.setVisibility(0);
      localView2.setVisibility(8);
      TextView localTextView16 = (TextView)localView1.findViewById(2131494560);
      localImageView3 = (ImageView)localView1.findViewById(2131494559);
      CheckBox localCheckBox2 = (CheckBox)localView1.findViewById(2131494558);
      localCheckBox2.setChecked(paramCartResponseSuit.isChecked());
      View.OnClickListener local15 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (((CheckBox)paramAnonymousView).isChecked())
          {
            ShoppingController.selectOneProductOrPack(ShoppingCartNewActivity.this.thisContext, null, paramCartResponseSuit, ShoppingCartNewActivity.this.getUpdateListener());
            return;
          }
          ShoppingController.unSelectOneProductOrPack(ShoppingCartNewActivity.this.thisContext, null, paramCartResponseSuit, ShoppingCartNewActivity.this.getUpdateListener());
        }
      };
      localCheckBox2.setOnClickListener(local15);
      localTextView16.setText(paramCartResponseSuit.getName());
      if ((paramCartResponseSuit.getGifts() != null) && (paramCartResponseSuit.getGifts().size() > 0))
      {
        localImageView3.setVisibility(0);
        double d4 = StringtoDouble(paramCartResponseSuit.getPrice()) - StringtoDouble(paramCartResponseSuit.getDiscount());
        localTextView1.setText(Constants.REN_MIN_BI + formatPriceString(Double.valueOf(d4)));
        final TextView localTextView17 = (TextView)localView3.findViewById(2131494572);
        localImageButton5 = (ImageButton)localView3.findViewById(2131494573);
        localImageButton6 = (ImageButton)localView3.findViewById(2131494571);
        if (paramCartResponseSuit.getNum().intValue() < 1000) {
          break label565;
        }
        localImageButton5.setEnabled(false);
        if (paramCartResponseSuit.getNum().intValue() > 1) {
          break label574;
        }
        localImageButton6.setEnabled(false);
        View.OnClickListener local16 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            ShoppingCartNewActivity.this.productNumChange(null, null, paramCartResponseSuit, 1 + paramCartResponseSuit.getNum().intValue(), 3);
          }
        };
        localImageButton5.setOnClickListener(local16);
        View.OnClickListener local17 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            ShoppingCartNewActivity.this.productNumChange(null, null, paramCartResponseSuit, -1 + paramCartResponseSuit.getNum().intValue(), 3);
          }
        };
        localImageButton6.setOnClickListener(local17);
        CartPackSummary localCartPackSummary3 = (CartPackSummary)this.editPacks.get(paramCartResponseSuit.getSuitId());
        if (localCartPackSummary3 == null) {
          break label583;
        }
        i14 = localCartPackSummary3.getNum().intValue();
        localTextView17.setText(String.valueOf(i14));
        EditProductCountDialog.EditTextNumChangeListener local18 = new EditProductCountDialog.EditTextNumChangeListener()
        {
          public void onCallBack(int paramAnonymousInt)
          {
            if (paramCartResponseSuit.getNum().intValue() == paramAnonymousInt)
            {
              ShoppingCartNewActivity.this.editPacks.remove(paramCartResponseSuit.getSuitId());
              return;
            }
            if (paramAnonymousInt > 1000)
            {
              int i = paramCartResponseSuit.getNum().intValue();
              localTextView17.setText(String.valueOf(i));
              ShoppingCartNewActivity.this.toastShow(2131166390);
              ShoppingCartNewActivity.this.editPacks.remove(paramCartResponseSuit.getSuitId());
              return;
            }
            ShoppingCartNewActivity.this.productNumChange(null, null, paramCartResponseSuit, paramAnonymousInt, 3);
          }
          
          public void onError()
          {
            ShoppingCartNewActivity.this.editPacks.remove(paramCartResponseSuit.getSuitId());
          }
        };
        EditOnTouchListener localEditOnTouchListener2 = new EditOnTouchListener(d4, local18);
        localTextView17.setOnTouchListener(localEditOnTouchListener2);
        localTextView17.setVisibility(0);
        localLinearLayout2 = (LinearLayout)paramView.findViewById(2131494567);
        localLinearLayout2.removeAllViews();
        if ((paramCartResponseSuit.getGifts() == null) || (paramCartResponseSuit.getGifts().size() <= 0)) {
          break label1052;
        }
        localLinearLayout2.setVisibility(0);
        int i11 = paramCartResponseSuit.getGifts().size();
        i12 = 0;
        label525:
        if (i12 < i11) {
          break label919;
        }
      }
    }
    ArrayList localArrayList1;
    int i;
    int j;
    for (;;)
    {
      localArrayList1 = paramCartResponseSuit.getSkus();
      i = localArrayList1.size();
      j = 0;
      if (j < i) {
        break label1062;
      }
      return;
      localImageView3.setVisibility(4);
      break;
      label565:
      localImageButton5.setEnabled(true);
      break label339;
      label574:
      localImageButton6.setEnabled(true);
      break label356;
      label583:
      i14 = paramCartResponseSuit.getNum().intValue();
      break label423;
      paramView.setPadding(0, 0, 0, 0);
      localView1.setVisibility(8);
      localView3.setVisibility(8);
      localView2.setVisibility(0);
      ImageView localImageView1 = (ImageView)localView2.findViewById(2131494562);
      TextView localTextView2 = (TextView)localView2.findViewById(2131494563);
      TextView localTextView3 = (TextView)localView2.findViewById(2131494564);
      TextView localTextView4 = (TextView)localView2.findViewById(2131494565);
      final TextView localTextView5 = (TextView)localView2.findViewById(2131494566);
      String str2 = paramCartResponseSuit.getSuitTip();
      if (TextUtils.isEmpty(str2)) {
        str2 = this.thisContext.getString(2131166391);
      }
      String str3 = this.thisContext.getString(2131166392);
      localTextView2.setText(str2);
      if ((str2.endsWith(str3)) && (paramCartResponseSuit.getCanSelectGifts() != null) && (paramCartResponseSuit.getCanSelectGifts().size() > 0))
      {
        View.OnClickListener local19 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            localTextView5.setEnabled(false);
            new GiftSelectDialog(ShoppingCartNewActivity.this, paramCartResponseSuit.getCanSelectGifts()).showDialog(new GiftSelectDialog.SelectListener()
            {
              public void onDissmiss()
              {
                this.val$getHandselBut.setEnabled(true);
              }
              
              public void onSelect(CartResponseGift paramAnonymous2CartResponseGift)
              {
                ShoppingController.addOneGiftToPack(ShoppingCartNewActivity.this.thisContext, paramAnonymous2CartResponseGift, new CartPackSummary(this.val$suitItem.getPackId(), this.val$suitItem.getNum(), this.val$suitItem.getsType()), ShoppingCartNewActivity.this.getUpdateListener());
              }
            });
          }
        };
        localTextView5.setOnClickListener(local19);
        localTextView5.setVisibility(0);
        label786:
        localTextView3.setVisibility(8);
        if (!"16".equals(str1)) {
          break label840;
        }
        localImageView1.setImageResource(2130838013);
      }
      for (;;)
      {
        localTextView4.setText(paramCartResponseSuit.getPriceShow());
        break;
        localTextView2.setText(str2);
        localTextView5.setVisibility(8);
        break label786;
        label840:
        if ("11".equals(str1)) {}
        try
        {
          double d3 = Double.valueOf(paramCartResponseSuit.getRePrice()).doubleValue();
          if (d3 > 0.0D)
          {
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = formatPriceString(Double.valueOf(d3));
            localTextView3.setText(getString(2131165778, arrayOfObject));
            localTextView3.setVisibility(0);
          }
        }
        catch (Exception localException)
        {
          label908:
          View localView8;
          final CartResponseGift localCartResponseGift;
          TextView localTextView15;
          View localView9;
          View.OnClickListener local20;
          View localView4;
          final CartResponseSku localCartResponseSku;
          TextView localTextView6;
          PriceTextView localPriceTextView;
          TextView localTextView7;
          TextView localTextView8;
          final CheckBox localCheckBox1;
          final ImageView localImageView2;
          View localView5;
          HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable1;
          GlobalImageCache.BitmapDigest localBitmapDigest;
          Bitmap localBitmap;
          HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable2;
          HttpGroup localHttpGroup;
          ImageUtil.ImageLoadListener local21;
          View.OnClickListener local22;
          View.OnClickListener local23;
          RelativeLayout localRelativeLayout;
          View.OnClickListener local24;
          View.OnClickListener local25;
          double d1;
          int i10;
          TextView localTextView9;
          LinearLayout.LayoutParams localLayoutParams4;
          LinearLayout.LayoutParams localLayoutParams2;
          LinearLayout localLinearLayout3;
          View localView6;
          LinearLayout.LayoutParams localLayoutParams3;
          int m;
          View.OnClickListener local30;
          LinearLayout localLinearLayout4;
          ArrayList localArrayList2;
          int n;
          int i1;
          break label908;
        }
        localImageView1.setImageResource(2130838012);
      }
      label919:
      localView8 = ImageUtil.inflate(2130903319, null);
      localCartResponseGift = (CartResponseGift)paramCartResponseSuit.getGifts().get(i12);
      localTextView15 = (TextView)localView8.findViewById(2131494609);
      localView9 = localView8.findViewById(2131494610);
      local20 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ShoppingController.deleteOneGiftFormPack(ShoppingCartNewActivity.this.thisContext, localCartResponseGift, new CartPackSummary(paramCartResponseSuit.getSuitId(), paramCartResponseSuit.getNum(), paramCartResponseSuit.getsType()), ShoppingCartNewActivity.this.getUpdateListener());
        }
      };
      localView9.setOnClickListener(local20);
      localTextView15.setText(getString(2131166387) + localCartResponseGift.getName() + "\t ×1");
      ((TextView)localView8.findViewById(2131494610)).setVisibility(0);
      localLinearLayout2.addView(localView8);
      i12++;
      break label525;
      label1052:
      localLinearLayout2.setVisibility(8);
    }
    label1062:
    localView4 = ImageUtil.inflate(2130903316, null);
    localCartResponseSku = (CartResponseSku)localArrayList1.get(j);
    localTextView6 = (TextView)localView4.findViewById(2131494588);
    localPriceTextView = (PriceTextView)localView4.findViewById(2131494600);
    localTextView7 = (TextView)localView4.findViewById(2131494593);
    localTextView8 = (TextView)localView4.findViewById(2131494590);
    localCheckBox1 = (CheckBox)localView4.findViewById(2131494586);
    localImageView2 = (ImageView)localView4.findViewById(2131494585);
    localView5 = localView4.findViewById(2131494584);
    localHandlerRecycleBitmapDrawable1 = new HandlerRecycleBitmapDrawable(null, this.thisContext);
    localImageView2.setImageDrawable(localHandlerRecycleBitmapDrawable1);
    localHandlerRecycleBitmapDrawable1.setBackGround(this.imageBg);
    localBitmapDigest = new GlobalImageCache.BitmapDigest(localCartResponseSku.getImgUrl());
    localBitmapDigest.setWidth(100);
    localBitmapDigest.setHeight(100);
    localBitmap = ImageUtil.loadImageWithCache(localBitmapDigest);
    if (localBitmap == null)
    {
      localHandlerRecycleBitmapDrawable2 = (HandlerRecycleBitmapDrawable)localImageView2.getDrawable();
      localHandlerRecycleBitmapDrawable2.setBitmap(null);
      invalidateDrawable(localHandlerRecycleBitmapDrawable2);
      localHttpGroup = getHttpGroupaAsynPool();
      local21 = new ImageUtil.ImageLoadListener()
      {
        public void onError(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest) {}
        
        public void onProgress(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest) {}
        
        public void onSuccess(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, Bitmap paramAnonymousBitmap)
        {
          HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable = (HandlerRecycleBitmapDrawable)localImageView2.getDrawable();
          localHandlerRecycleBitmapDrawable.setBitmap(paramAnonymousBitmap);
          ShoppingCartNewActivity.this.invalidateDrawable(localHandlerRecycleBitmapDrawable);
        }
      };
      ImageUtil.loadImageWithUrl(localHttpGroup, localBitmapDigest, local21);
      label1290:
      localCheckBox1.setChecked(localCartResponseSku.isChecked());
      local22 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          localCheckBox1.performClick();
        }
      };
      localView5.setOnClickListener(local22);
      local23 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          CheckBox localCheckBox = (CheckBox)paramAnonymousView;
          CartPackSummary localCartPackSummary = new CartPackSummary(paramCartResponseSuit.getSuitId(), paramCartResponseSuit.getNum(), paramCartResponseSuit.getsType());
          localCartPackSummary.addSku(localCartResponseSku);
          if (localCheckBox.isChecked())
          {
            ShoppingController.selectOneProductOrPack(ShoppingCartNewActivity.this.thisContext, null, localCartPackSummary, ShoppingCartNewActivity.this.getUpdateListener());
            return;
          }
          ShoppingController.unSelectOneProductOrPack(ShoppingCartNewActivity.this.thisContext, null, localCartPackSummary, ShoppingCartNewActivity.this.getUpdateListener());
        }
      };
      localCheckBox1.setOnClickListener(local23);
      localRelativeLayout = (RelativeLayout)localView4.findViewById(2131494583);
      local24 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if ("4".equals(str1))
          {
            View localView = localView1.findViewById(2131494558);
            if (localView != null) {
              localView.performClick();
            }
            return;
          }
          localCheckBox1.performClick();
        }
      };
      localRelativeLayout.setOnClickListener(local24);
      local25 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ShoppingCartNewActivity.this.forwardToProductDetail(localCartResponseSku, true);
        }
      };
      localImageView2.setOnClickListener(local25);
      d1 = StringtoDouble(localCartResponseSku.getPrice()) - StringtoDouble(localCartResponseSku.getDiscount());
      if (!"4".equals(str1)) {
        break label1998;
      }
      localPriceTextView.setVisibility(8);
      localTextView7.setText(Constants.REN_MIN_BI + formatPriceString(Double.valueOf(d1)));
      localTextView7.setVisibility(0);
      i10 = DPIUtil.dip2px(1.0F);
      localLinearLayout1.setPadding(i10, 0, i10, 0);
      localView4.findViewById(2131494586).setVisibility(8);
      localView4.findViewById(2131494596).setVisibility(8);
      localView4.findViewById(2131494598).setVisibility(8);
      localView4.findViewById(2131494597).setVisibility(8);
      localView4.findViewById(2131494599).setVisibility(8);
      localView4.findViewById(2131494595).setVisibility(8);
      localView4.findViewById(2131494590).setVisibility(8);
      localTextView9 = (TextView)localView4.findViewById(2131494592);
      localView4.findViewById(2131494587).setMinimumHeight(0);
      ((View)paramView.getParent()).setPadding(0, 0, 0, 0);
      localLayoutParams4 = new LinearLayout.LayoutParams(-1, -2);
      localLayoutParams4.leftMargin = 0;
      localLayoutParams4.rightMargin = 0;
      localView4.setLayoutParams(localLayoutParams4);
      label1648:
      localLayoutParams2 = new LinearLayout.LayoutParams(-1, -2);
      localLinearLayout3 = new LinearLayout(localLinearLayout1.getContext());
      localLinearLayout3.setLayoutParams(localLayoutParams2);
      localView6 = getDividerView(0);
      localLayoutParams3 = new LinearLayout.LayoutParams(-1, -2);
      m = DPIUtil.dip2px(5.0F);
      localLayoutParams3.setMargins(DPIUtil.dip2px(40.0F), m, 0, m);
      localView6.setLayoutParams(localLayoutParams3);
      localLinearLayout3.addView(localView6);
      if ((localCartResponseSku.getYbCanSelectedCategorys() != null) && (localCartResponseSku.getYbCanSelectedCategorys().get(0) != null) && (((CartResonseYB)localCartResponseSku.getYbCanSelectedCategorys().get(0)).getCategories() != null) && (((CartResonseYB)localCartResponseSku.getYbCanSelectedCategorys().get(0)).getCategories().size() > 0))
      {
        localTextView9.setVisibility(0);
        local30 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            ShoppingCartNewActivity.this.ybForwardSelectPage(localCartResponseSku);
          }
        };
        localTextView9.setOnClickListener(local30);
      }
      if (!"4".equals(str1)) {
        break label2538;
      }
      localView5.setVisibility(4);
      label1838:
      localLinearLayout4 = (LinearLayout)localView4.findViewById(2131494594);
      localLinearLayout4.removeAllViews();
      localArrayList2 = localCartResponseSku.getYbSkus();
      if (localArrayList2 == null) {
        break label3175;
      }
      n = 0;
      label1871:
      i1 = localArrayList2.size();
      if (n < i1) {
        break label2547;
      }
      if (localCartResponseSku.getYbSkus().size() <= 0) {
        break label3165;
      }
      localLinearLayout4.setVisibility(0);
    }
    for (;;)
    {
      localTextView6.setText(localCartResponseSku.getName());
      localTextView8.setText(this.thisContext.getString(2131166394) + localCartResponseSku.getSkuId());
      localLinearLayout1.addView(localView4);
      if ((localLinearLayout3 != null) && (i - 1 > j)) {
        localLinearLayout1.addView(localLinearLayout3);
      }
      j++;
      break;
      localHandlerRecycleBitmapDrawable1.setBitmap(localBitmap);
      invalidateDrawable(localHandlerRecycleBitmapDrawable1);
      break label1290;
      label1998:
      localTextView7.setVisibility(8);
      localPriceTextView.setText(Constants.REN_MIN_BI + formatPriceString(Double.valueOf(d1)));
      localPriceTextView.setVisibility(0);
      localTextView9 = (TextView)localView4.findViewById(2131494591);
      ImageButton localImageButton1 = (ImageButton)localView4.findViewById(2131494599);
      ImageButton localImageButton2 = (ImageButton)localView4.findViewById(2131494597);
      localImageButton1.setVisibility(0);
      localImageButton2.setVisibility(0);
      label2115:
      label2133:
      final TextView localTextView10;
      CartPackSummary localCartPackSummary1;
      int i8;
      label2240:
      Object localObject;
      if (localCartResponseSku.getNum().intValue() >= 1000)
      {
        localImageButton1.setEnabled(false);
        if (localCartResponseSku.getNum().intValue() > 1) {
          break label2441;
        }
        localImageButton2.setEnabled(false);
        View.OnClickListener local26 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            ShoppingCartNewActivity.this.productNumChange(localCartResponseSku, null, paramCartResponseSuit, 1 + localCartResponseSku.getNum().intValue(), 4);
          }
        };
        localImageButton1.setOnClickListener(local26);
        View.OnClickListener local27 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            ShoppingCartNewActivity.this.productNumChange(localCartResponseSku, null, paramCartResponseSuit, -1 + localCartResponseSku.getNum().intValue(), 4);
          }
        };
        localImageButton2.setOnClickListener(local27);
        View.OnLongClickListener local28 = new View.OnLongClickListener()
        {
          public boolean onLongClick(View paramAnonymousView)
          {
            ShoppingCartNewActivity.this.showDeleteDetailFavoriteDialog(localCartResponseSku, paramCartResponseSuit, true);
            return true;
          }
        };
        localRelativeLayout.setOnLongClickListener(local28);
        localTextView10 = (TextView)localView4.findViewById(2131494598);
        localCartPackSummary1 = (CartPackSummary)this.editPacks.get(paramCartResponseSuit.getSuitId());
        if (localCartPackSummary1 == null) {
          break label2507;
        }
        int i7 = localCartPackSummary1.getSkus().size();
        i8 = 0;
        int i9 = i8;
        localObject = null;
        if (i9 < i7) {
          break label2450;
        }
        label2254:
        if (localObject == null) {
          break label2491;
        }
        localTextView10.setText(localObject.getNum().toString());
      }
      for (;;)
      {
        EditProductCountDialog.EditTextNumChangeListener local29 = new EditProductCountDialog.EditTextNumChangeListener()
        {
          public void onCallBack(int paramAnonymousInt)
          {
            int i = paramAnonymousInt;
            int j = paramCartResponseSuit.getSkus().size();
            int k = 0;
            int m = 0;
            if (k >= j)
            {
              label25:
              if (m != 0) {
                break label137;
              }
              ShoppingCartNewActivity.this.removeEditObject(paramCartResponseSuit.getSuitId(), localCartResponseSku.getSkuId());
              i = localCartResponseSku.getNum().intValue();
            }
            label137:
            CartPackSummary localCartPackSummary1;
            for (;;)
            {
              ShoppingCartNewActivity.this.productNumChange(localCartResponseSku, null, paramCartResponseSuit, i, 4);
              return;
              CartResponseSku localCartResponseSku = (CartResponseSku)paramCartResponseSuit.getSkus().get(k);
              if ((localCartResponseSku.getSkuId() == localCartResponseSku.getSkuId()) && (localCartResponseSku.getNum().intValue() != i))
              {
                m = 1;
                break label25;
              }
              k++;
              break;
              if (i > 1000)
              {
                i = localCartResponseSku.getNum().intValue();
                localTextView10.setText(String.valueOf(i));
                ShoppingCartNewActivity.this.toastShow(2131166390);
                ShoppingCartNewActivity.this.removeEditObject(paramCartResponseSuit.getSuitId(), localCartResponseSku.getSkuId());
              }
              else
              {
                localCartPackSummary1 = (CartPackSummary)ShoppingCartNewActivity.this.editPacks.get(paramCartResponseSuit.getSuitId());
                if (localCartPackSummary1 != null) {
                  break label302;
                }
                CartPackSummary localCartPackSummary2 = new CartPackSummary(paramCartResponseSuit.getSuitId(), paramCartResponseSuit.getNum(), paramCartResponseSuit.getsType());
                localCartPackSummary2.addSku(new CartSkuSummary(localCartResponseSku.getSkuId(), Integer.valueOf(i)));
                ShoppingCartNewActivity.this.editPacks.put(paramCartResponseSuit.getSuitId(), localCartPackSummary2);
              }
            }
            label302:
            int n = localCartPackSummary1.getSkus().size();
            int i1 = 0;
            for (int i2 = 0;; i2++)
            {
              if (i2 >= n)
              {
                if (i1 != 0) {
                  break;
                }
                localCartPackSummary1.addSku(new CartSkuSummary(localCartResponseSku.getSkuId(), Integer.valueOf(i)));
                break;
              }
              CartSkuSummary localCartSkuSummary = (CartSkuSummary)localCartPackSummary1.getSkus().get(i2);
              if (localCartSkuSummary.getSkuId().equals(localCartResponseSku.getSkuId()))
              {
                localCartSkuSummary.setNum(Integer.valueOf(i));
                i1 = 1;
              }
            }
          }
          
          public void onError()
          {
            ShoppingCartNewActivity.this.removeEditObject(paramCartResponseSuit.getSuitId(), localCartResponseSku.getSkuId());
          }
        };
        EditOnTouchListener localEditOnTouchListener1 = new EditOnTouchListener(StringtoDouble(localCartResponseSku.getPrice()) - StringtoDouble(localCartResponseSku.getDiscount()), local29);
        localTextView10.setOnTouchListener(localEditOnTouchListener1);
        localTextView10.setVisibility(0);
        ((View)paramView.getParent()).setPadding(0, 0, 0, DPIUtil.dip2px(5.0F));
        LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, -2);
        int k = DPIUtil.dip2px(5.0F);
        localLayoutParams1.leftMargin = k;
        localLayoutParams1.rightMargin = k;
        localLayoutParams1.bottomMargin = k;
        localView4.setLayoutParams(localLayoutParams1);
        if ((localCartResponseSku.getMustGifts() == null) || (localCartResponseSku.getMustGifts().size() <= 0)) {
          break label2523;
        }
        localView4.findViewById(2131494589).setVisibility(0);
        break;
        localImageButton1.setEnabled(true);
        break label2115;
        label2441:
        localImageButton2.setEnabled(true);
        break label2133;
        label2450:
        CartSkuSummary localCartSkuSummary2 = (CartSkuSummary)localCartPackSummary1.getSkus().get(i8);
        if (localCartSkuSummary2.getSkuId() == localCartResponseSku.getSkuId())
        {
          localObject = localCartSkuSummary2;
          break label2254;
        }
        i8++;
        break label2240;
        label2491:
        localTextView10.setText(localCartResponseSku.getNum().toString());
        continue;
        label2507:
        localTextView10.setText(localCartResponseSku.getNum().toString());
      }
      label2523:
      localView4.findViewById(2131494589).setVisibility(4);
      break label1648;
      label2538:
      localView5.setVisibility(0);
      break label1838;
      label2547:
      final CartResonseYBSelected localCartResonseYBSelected = (CartResonseYBSelected)localArrayList2.get(n);
      if ((localCartResonseYBSelected == null) || (localCartResonseYBSelected.getYbSku() == null))
      {
        n++;
        break label1871;
      }
      View localView7 = ImageUtil.inflate(2130903317, null);
      TextView localTextView11 = (TextView)localView7.findViewById(2131494601);
      ImageButton localImageButton3 = (ImageButton)localView7.findViewById(2131494606);
      ImageButton localImageButton4 = (ImageButton)localView7.findViewById(2131494604);
      View.OnClickListener local31 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView) {}
      };
      localView7.setOnClickListener(local31);
      int i2;
      label2662:
      TextView localTextView13;
      label2688:
      label2709:
      TextView localTextView14;
      CartPackSummary localCartPackSummary2;
      int i5;
      label2968:
      CartSkuSummary localCartSkuSummary1;
      if ("4".equals(str1))
      {
        i2 = paramCartResponseSuit.getNum().intValue();
        int i3 = localCartResonseYBSelected.getYbSku().getNum().intValue();
        if (i2 > i3) {
          break label3053;
        }
        localImageButton3.setEnabled(false);
        if (localCartResonseYBSelected.getYbSku().getNum().intValue() > 1) {
          break label3062;
        }
        localImageButton4.setEnabled(false);
        View.OnClickListener local32 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            ShoppingCartNewActivity.this.productNumChange(localCartResponseSku, localCartResonseYBSelected, paramCartResponseSuit, 1 + localCartResonseYBSelected.getYbSku().getNum().intValue(), 5);
          }
        };
        localImageButton3.setOnClickListener(local32);
        View.OnClickListener local33 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            ShoppingCartNewActivity.this.productNumChange(localCartResponseSku, localCartResonseYBSelected, paramCartResponseSuit, -1 + localCartResonseYBSelected.getYbSku().getNum().intValue(), 5);
          }
        };
        localImageButton4.setOnClickListener(local33);
        localTextView11.setText(getString(2131166386) + localCartResonseYBSelected.getYbSku().getName());
        TextView localTextView12 = (TextView)localView7.findViewById(2131494602);
        double d2 = StringtoDouble(localCartResonseYBSelected.getYbSku().getPrice()) - StringtoDouble(localCartResonseYBSelected.getYbSku().getDiscount());
        localTextView12.setText(Constants.REN_MIN_BI + formatPriceString(Double.valueOf(d2)));
        localTextView13 = (TextView)localView7.findViewById(2131494605);
        localTextView13.setTag(localCartResonseYBSelected);
        localTextView14 = (TextView)localView7.findViewById(2131494607);
        View.OnClickListener local34 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (localCartResonseYBSelected.getYbSku() != null)
            {
              CartPackSummary localCartPackSummary = new CartPackSummary(localCartResonseYBSelected.getrWid(), localCartResonseYBSelected.getrSuitId(), Integer.valueOf(1), "7");
              localCartPackSummary.addSku(new CartSkuSummary(localCartResonseYBSelected.getYbSku().getSkuId(), localCartResonseYBSelected.getYbSku().getNum()));
              ShoppingController.deleteOnePack(ShoppingCartNewActivity.this.thisContext, localCartPackSummary, ShoppingCartNewActivity.this.getUpdateListener());
            }
          }
        };
        localTextView14.setOnClickListener(local34);
        localCartPackSummary2 = (CartPackSummary)this.editYbs.get(localCartResponseSku.getSkuId());
        if (localCartPackSummary2 == null) {
          break label3146;
        }
        if ((localCartPackSummary2.getSkus() == null) || (localCartPackSummary2.getSkus().size() <= 0)) {
          break label3127;
        }
        int i4 = localCartPackSummary2.getSkus().size();
        i5 = 0;
        int i6 = i5;
        localCartSkuSummary1 = null;
        if (i6 < i4) {
          break label3071;
        }
        label2982:
        if (localCartSkuSummary1 == null) {
          break label3108;
        }
        localTextView13.setText(localCartSkuSummary1.getNum().toString());
      }
      for (;;)
      {
        localTextView13.setVisibility(0);
        localTextView14.setVisibility(0);
        if (localLinearLayout4.getChildCount() > 0) {
          localLinearLayout4.addView(getDividerView(5));
        }
        localLinearLayout4.addView(localView7);
        break;
        i2 = localCartResponseSku.getNum().intValue();
        break label2662;
        label3053:
        localImageButton3.setEnabled(true);
        break label2688;
        label3062:
        localImageButton4.setEnabled(true);
        break label2709;
        label3071:
        localCartSkuSummary1 = (CartSkuSummary)localCartPackSummary2.getSkus().get(i5);
        if (localCartSkuSummary1.getSkuId() == localCartResonseYBSelected.getYbSku().getSkuId()) {
          break label2982;
        }
        i5++;
        break label2968;
        label3108:
        localTextView13.setText(localCartResonseYBSelected.getYbSku().getNum().toString());
        continue;
        label3127:
        localTextView13.setText(localCartResonseYBSelected.getYbSku().getNum().toString());
        continue;
        label3146:
        localTextView13.setText(localCartResonseYBSelected.getYbSku().getNum().toString());
      }
      label3165:
      localLinearLayout4.setVisibility(8);
      continue;
      label3175:
      localLinearLayout4.setVisibility(8);
    }
  }
  
  private void createSingleView(final CartResponseSku paramCartResponseSku, View paramView, int paramInt)
  {
    TextView localTextView1 = (TextView)paramView.findViewById(2131494588);
    TextView localTextView2 = (TextView)paramView.findViewById(2131494590);
    PriceTextView localPriceTextView = (PriceTextView)paramView.findViewById(2131494600);
    ImageView localImageView1 = (ImageView)paramView.findViewById(2131494589);
    final TextView localTextView3 = (TextView)paramView.findViewById(2131494598);
    ImageButton localImageButton1 = (ImageButton)paramView.findViewById(2131494599);
    ImageButton localImageButton2 = (ImageButton)paramView.findViewById(2131494597);
    final ImageView localImageView2 = (ImageView)paramView.findViewById(2131494585);
    View localView1 = paramView.findViewById(2131494584);
    localTextView3.setClickable(true);
    View.OnClickListener local35 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView) {}
    };
    localTextView3.setOnClickListener(local35);
    if (localImageView2.getDrawable() == null)
    {
      HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable1 = new HandlerRecycleBitmapDrawable(null, this.thisContext);
      localHandlerRecycleBitmapDrawable1.setBackGround(this.imageBg);
      localImageView2.setImageDrawable(localHandlerRecycleBitmapDrawable1);
    }
    GlobalImageCache.BitmapDigest localBitmapDigest = new GlobalImageCache.BitmapDigest(paramCartResponseSku.getImgUrl());
    localBitmapDigest.setHeight(100);
    localBitmapDigest.setWidth(100);
    localBitmapDigest.setPosition(paramInt);
    localImageView2.setTag(Integer.valueOf(paramInt));
    Bitmap localBitmap = ImageUtil.loadImageWithCache(localBitmapDigest);
    label288:
    label305:
    RelativeLayout localRelativeLayout;
    final CheckBox localCheckBox;
    LinearLayout localLinearLayout;
    ArrayList localArrayList1;
    int j;
    label533:
    label559:
    View localView2;
    int i;
    label593:
    String str;
    if (localBitmap == null)
    {
      HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable3 = (HandlerRecycleBitmapDrawable)localImageView2.getDrawable();
      localHandlerRecycleBitmapDrawable3.setBitmap(null);
      invalidateDrawable(localHandlerRecycleBitmapDrawable3);
      HttpGroup localHttpGroup = getHttpGroupaAsynPool();
      ImageUtil.ImageLoadListener local36 = new ImageUtil.ImageLoadListener()
      {
        public void onError(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest) {}
        
        public void onProgress(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest) {}
        
        public void onSuccess(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, Bitmap paramAnonymousBitmap)
        {
          if (((Integer)localImageView2.getTag()).intValue() == paramAnonymousBitmapDigest.getPosition())
          {
            HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable = (HandlerRecycleBitmapDrawable)localImageView2.getDrawable();
            localHandlerRecycleBitmapDrawable.setBitmap(paramAnonymousBitmap);
            ShoppingCartNewActivity.this.invalidateDrawable(localHandlerRecycleBitmapDrawable);
          }
        }
      };
      ImageUtil.loadImageWithUrl(localHttpGroup, localBitmapDigest, local36);
      if (paramCartResponseSku.getNum().intValue() < 1000) {
        break label877;
      }
      localImageButton1.setEnabled(false);
      if (paramCartResponseSku.getNum().intValue() > 1) {
        break label886;
      }
      localImageButton2.setEnabled(false);
      View.OnClickListener local37 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ShoppingCartNewActivity.this.productNumChange(paramCartResponseSku, null, null, 1 + paramCartResponseSku.getNum().intValue(), 1);
        }
      };
      localImageButton1.setOnClickListener(local37);
      View.OnClickListener local38 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ShoppingCartNewActivity.this.productNumChange(paramCartResponseSku, null, null, -1 + paramCartResponseSku.getNum().intValue(), 1);
        }
      };
      localImageButton2.setOnClickListener(local38);
      localRelativeLayout = (RelativeLayout)paramView.findViewById(2131494583);
      localCheckBox = (CheckBox)paramView.findViewById(2131494586);
      TextView localTextView4 = (TextView)paramView.findViewById(2131494591);
      if ((paramCartResponseSku.getYbCanSelectedCategorys() != null) && (paramCartResponseSku.getYbCanSelectedCategorys().get(0) != null) && (((CartResonseYB)paramCartResponseSku.getYbCanSelectedCategorys().get(0)).getCategories() != null) && (((CartResonseYB)paramCartResponseSku.getYbCanSelectedCategorys().get(0)).getCategories().size() > 0))
      {
        localTextView4.setVisibility(0);
        View.OnClickListener local39 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            ShoppingCartNewActivity.this.ybForwardSelectPage(paramCartResponseSku);
          }
        };
        localTextView4.setOnClickListener(local39);
      }
      localCheckBox.setChecked(paramCartResponseSku.isChecked());
      View.OnClickListener local40 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          localCheckBox.performClick();
        }
      };
      localView1.setOnClickListener(local40);
      View.OnClickListener local41 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (((CheckBox)paramAnonymousView).isChecked())
          {
            ShoppingController.selectOneProductOrPack(ShoppingCartNewActivity.this.thisContext, paramCartResponseSku, null, ShoppingCartNewActivity.this.getUpdateListener());
            return;
          }
          ShoppingController.unSelectOneProductOrPack(ShoppingCartNewActivity.this.thisContext, paramCartResponseSku, null, ShoppingCartNewActivity.this.getUpdateListener());
        }
      };
      localCheckBox.setOnClickListener(local41);
      localLinearLayout = (LinearLayout)paramView.findViewById(2131494594);
      localLinearLayout.removeAllViews();
      localArrayList1 = paramCartResponseSku.getYbSkus();
      if (localArrayList1 == null) {
        break label1442;
      }
      j = 0;
      if (j < localArrayList1.size()) {
        break label895;
      }
      if (paramCartResponseSku.getYbSkus().size() <= 0) {
        break label1432;
      }
      localLinearLayout.setVisibility(0);
      localView2 = (View)paramView.getParent();
      i = DPIUtil.dip2px(5.0F);
      if (paramInt != 0) {
        break label1452;
      }
      localView2.setPadding(i, i, i, i);
      CartSkuSummary localCartSkuSummary1 = (CartSkuSummary)this.editSkus.get(paramCartResponseSku.getSkuId());
      if (localCartSkuSummary1 == null) {
        break label1467;
      }
      str = localCartSkuSummary1.getNum().toString();
      label624:
      localTextView3.setText(str);
      EditProductCountDialog.EditTextNumChangeListener local46 = new EditProductCountDialog.EditTextNumChangeListener()
      {
        public void onCallBack(int paramAnonymousInt)
        {
          if (paramCartResponseSku.getNum().intValue() == paramAnonymousInt)
          {
            ShoppingCartNewActivity.this.editSkus.remove(paramCartResponseSku.getSkuId());
            return;
          }
          if (paramAnonymousInt > 1000)
          {
            ShoppingCartNewActivity.this.editSkus.remove(paramCartResponseSku.getSkuId());
            localTextView3.setText(paramCartResponseSku.getNum().toString());
            paramCartResponseSku.getNum().intValue();
            ShoppingCartNewActivity.this.toastShow(2131166390);
            return;
          }
          ShoppingCartNewActivity.this.productNumChange(paramCartResponseSku, null, null, paramAnonymousInt, 1);
        }
        
        public void onError()
        {
          ShoppingCartNewActivity.this.editSkus.remove(paramCartResponseSku.getSkuId());
        }
      };
      EditOnTouchListener localEditOnTouchListener = new EditOnTouchListener(StringtoDouble(paramCartResponseSku.getPrice()) - StringtoDouble(paramCartResponseSku.getDiscount()), local46);
      localTextView3.setOnTouchListener(localEditOnTouchListener);
      localTextView3.setVisibility(0);
      localTextView1.setText(paramCartResponseSku.getName());
      localTextView2.setText(this.thisContext.getString(2131166394) + paramCartResponseSku.getSkuId());
      double d1 = StringtoDouble(paramCartResponseSku.getPrice()) - StringtoDouble(paramCartResponseSku.getDiscount());
      localPriceTextView.setText(Constants.REN_MIN_BI + formatPriceString(Double.valueOf(d1)));
      if (!(paramCartResponseSku instanceof CartResponseGift)) {
        break label1479;
      }
      localImageView1.setVisibility(0);
    }
    for (;;)
    {
      View.OnClickListener local47 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          localCheckBox.performClick();
        }
      };
      localRelativeLayout.setOnClickListener(local47);
      View.OnClickListener local48 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ShoppingCartNewActivity.this.forwardToProductDetail(paramCartResponseSku, false);
        }
      };
      localImageView2.setOnClickListener(local48);
      View.OnLongClickListener local49 = new View.OnLongClickListener()
      {
        public boolean onLongClick(View paramAnonymousView)
        {
          ShoppingCartNewActivity.this.showDeleteDetailFavoriteDialog(paramCartResponseSku, null, false);
          return false;
        }
      };
      localRelativeLayout.setOnLongClickListener(local49);
      return;
      HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable2 = (HandlerRecycleBitmapDrawable)localImageView2.getDrawable();
      localHandlerRecycleBitmapDrawable2.setBitmap(localBitmap);
      invalidateDrawable(localHandlerRecycleBitmapDrawable2);
      break;
      label877:
      localImageButton1.setEnabled(true);
      break label288;
      label886:
      localImageButton2.setEnabled(true);
      break label305;
      label895:
      final CartResonseYBSelected localCartResonseYBSelected = (CartResonseYBSelected)localArrayList1.get(j);
      if ((localCartResonseYBSelected == null) || (localCartResonseYBSelected.getYbSku() == null))
      {
        j++;
        break label533;
      }
      View localView3 = ImageUtil.inflate(2130903317, null);
      TextView localTextView5 = (TextView)localView3.findViewById(2131494601);
      TextView localTextView6 = (TextView)localView3.findViewById(2131494602);
      ImageButton localImageButton3 = (ImageButton)localView3.findViewById(2131494606);
      ImageButton localImageButton4 = (ImageButton)localView3.findViewById(2131494604);
      TextView localTextView7 = (TextView)localView3.findViewById(2131494605);
      View.OnClickListener local42 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView) {}
      };
      localView3.setOnClickListener(local42);
      label1044:
      label1065:
      TextView localTextView8;
      Object localObject;
      Iterator localIterator;
      if (paramCartResponseSku.getNum().intValue() <= localCartResonseYBSelected.getYbSku().getNum().intValue())
      {
        localImageButton3.setEnabled(false);
        if (localCartResonseYBSelected.getYbSku().getNum().intValue() > 1) {
          break label1366;
        }
        localImageButton4.setEnabled(false);
        View.OnClickListener local43 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            ShoppingCartNewActivity.this.productNumChange(null, localCartResonseYBSelected, null, 1 + localCartResonseYBSelected.getYbSku().getNum().intValue(), 2);
          }
        };
        localImageButton3.setOnClickListener(local43);
        View.OnClickListener local44 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            ShoppingCartNewActivity.this.productNumChange(null, localCartResonseYBSelected, null, -1 + localCartResonseYBSelected.getYbSku().getNum().intValue(), 2);
          }
        };
        localImageButton4.setOnClickListener(local44);
        localTextView5.setText(getString(2131166386) + localCartResonseYBSelected.getYbSku().getName());
        double d2 = StringtoDouble(localCartResonseYBSelected.getYbSku().getPrice()) - StringtoDouble(localCartResonseYBSelected.getYbSku().getDiscount());
        localTextView6.setText(Constants.REN_MIN_BI + formatPriceString(Double.valueOf(d2)));
        localTextView7.setTag(localCartResonseYBSelected);
        localTextView8 = (TextView)localView3.findViewById(2131494607);
        View.OnClickListener local45 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (localCartResonseYBSelected.getYbSku() != null)
            {
              CartPackSummary localCartPackSummary = new CartPackSummary(paramCartResponseSku.getSkuId(), paramCartResponseSku.getNum(), "8");
              localCartPackSummary.addSku(new CartSkuSummary(localCartResonseYBSelected.getYbSku().getSkuId(), localCartResonseYBSelected.getYbSku().getNum()));
              ShoppingController.deleteOnePack(ShoppingCartNewActivity.this.thisContext, localCartPackSummary, ShoppingCartNewActivity.this.getUpdateListener());
            }
          }
        };
        localTextView8.setOnClickListener(local45);
        CartPackSummary localCartPackSummary = (CartPackSummary)this.editYbs.get(paramCartResponseSku.getSkuId());
        localObject = null;
        if (localCartPackSummary != null)
        {
          ArrayList localArrayList2 = localCartPackSummary.getSkus();
          localObject = null;
          if (localArrayList2 != null)
          {
            localIterator = localArrayList2.iterator();
            label1285:
            boolean bool = localIterator.hasNext();
            localObject = null;
            if (bool) {
              break label1375;
            }
          }
        }
        label1302:
        if (localObject == null) {
          break label1413;
        }
        localTextView7.setText(localObject.getNum().toString());
      }
      for (;;)
      {
        localTextView7.setVisibility(0);
        localTextView8.setVisibility(0);
        if (j != 0) {
          localLinearLayout.addView(getDividerView(5));
        }
        localLinearLayout.addView(localView3);
        break;
        localImageButton3.setEnabled(true);
        break label1044;
        label1366:
        localImageButton4.setEnabled(true);
        break label1065;
        label1375:
        CartSkuSummary localCartSkuSummary2 = (CartSkuSummary)localIterator.next();
        if (!localCartSkuSummary2.getSkuId().equals(localCartResonseYBSelected.getYbSku().getSkuId())) {
          break label1285;
        }
        localObject = localCartSkuSummary2;
        break label1302;
        label1413:
        localTextView7.setText(localCartResonseYBSelected.getYbSku().getNum().toString());
      }
      label1432:
      localLinearLayout.setVisibility(8);
      break label559;
      label1442:
      localLinearLayout.setVisibility(8);
      break label559;
      label1452:
      localView2.setPadding(i, 0, i, i);
      break label593;
      label1467:
      str = paramCartResponseSku.getNum().toString();
      break label624;
      label1479:
      localImageView1.setVisibility(4);
    }
  }
  
  private String formatPriceString(Object paramObject)
  {
    try
    {
      String str = this.decFormat.format(paramObject);
      return str;
    }
    catch (Exception localException) {}
    return paramObject.toString();
  }
  
  private void forwardLogin()
  {
    Intent localIntent = new Intent(this.thisContext, LoginActivity.class);
    localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
    localIntent.putExtra("com.360buy:singleInstanceFlag", true);
    startActivityInFrame(localIntent);
    toastShow(2131165989);
  }
  
  private void forwardOrder()
  {
    post(new Runnable()
    {
      public void run()
      {
        Constants.bAddEasyBuy = false;
        Constants.bEasyBuy = false;
        Constants.bModifyEasyBuy = false;
        Intent localIntent = new Intent(ShoppingCartNewActivity.this.thisContext, FillOrderActivity.class);
        if (FillOrderActivity.cartResponseInfo != null) {
          localIntent.putExtra("selectedCartResponseInfo", FillOrderActivity.cartResponseInfo);
        }
        ShoppingCartNewActivity.this.thisContext.startTaskActivityInFrame(localIntent);
      }
    });
  }
  
  private void forwardToProductDetail(CartResponseSku paramCartResponseSku, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (SourceEntity localSourceEntity = new SourceEntity("shoppingCart_pack", null);; localSourceEntity = new SourceEntity("shoppingCart_product", null))
    {
      StartActivityUtils.startProductDetailActivity(this, Long.valueOf(Long.parseLong(paramCartResponseSku.getSkuId())), paramCartResponseSku.getName(), localSourceEntity);
      return;
    }
  }
  
  private View getDividerView(int paramInt)
  {
    if (Build.VERSION.SDK_INT < 8)
    {
      View localView = new View(getBaseContext());
      localView.setLayoutParams(new LinearLayout.LayoutParams(-1, 2));
      localView.setBackgroundResource(2130837770);
      return localView;
    }
    LinearLayout localLinearLayout = new LinearLayout(getBaseContext());
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    if (paramInt > 0) {}
    for (int i = DPIUtil.dip2px(paramInt);; i = 0)
    {
      SlideUtils.addDivider(localLinearLayout, SlideUtils.getLayoutParamsValue(0, i, 0, i), 2130838595);
      localLinearLayout.setTag(Boolean.valueOf(true));
      return localLinearLayout;
    }
  }
  
  private ShoppingCartListener getUpdateListener()
  {
    return new ShoppingCartListener();
  }
  
  private void handleLayoutGone(boolean paramBoolean)
  {
    this.deleteBut.setVisibility(8);
    this.shoppingListView.setVisibility(8);
    this.footPriceView.setVisibility(8);
    if ((LoginUserBase.hasLogin()) || (paramBoolean))
    {
      this.shoppingFunctionLayout.setVisibility(8);
      this.shadowView.setVisibility(8);
      return;
    }
    this.shoppingFunctionLayout.setVisibility(0);
    this.shadowView.setVisibility(0);
  }
  
  private void initAdapter()
  {
    this.adapter = new ShoppingCartAdapter(2130903315)
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        if (paramAnonymousView == null) {
          paramAnonymousView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        }
        View localView1 = paramAnonymousView.findViewById(2131494581);
        View localView2 = paramAnonymousView.findViewById(2131494582);
        switch (getItemType(paramAnonymousInt))
        {
        default: 
          return paramAnonymousView;
        case 2: 
          localView1.setVisibility(8);
          localView2.setVisibility(0);
          CartResponseSuit localCartResponseSuit = (CartResponseSuit)getItem(paramAnonymousInt);
          paramAnonymousView.setTag(localCartResponseSuit);
          ShoppingCartNewActivity.this.createPackView(localCartResponseSuit, localView2);
          return paramAnonymousView;
        case 1: 
          localView1.setVisibility(0);
          localView2.setVisibility(8);
          CartResponseGift localCartResponseGift = (CartResponseGift)getItem(paramAnonymousInt);
          paramAnonymousView.setTag(localCartResponseGift);
          ShoppingCartNewActivity.this.createSingleView(localCartResponseGift, localView1, paramAnonymousInt);
          return paramAnonymousView;
        }
        localView1.setVisibility(0);
        localView2.setVisibility(8);
        CartResponseSku localCartResponseSku = (CartResponseSku)getItem(paramAnonymousInt);
        paramAnonymousView.setTag(localCartResponseSku);
        ShoppingCartNewActivity.this.createSingleView(localCartResponseSku, localView1, paramAnonymousInt);
        return paramAnonymousView;
      }
    };
    this.shoppingListView.setAdapter(this.adapter);
  }
  
  private void invalidateDrawable(final Drawable paramDrawable)
  {
    this.hd.post(new Runnable()
    {
      public void run()
      {
        paramDrawable.invalidateSelf();
      }
    });
  }
  
  private void productNumChange(CartSkuSummary paramCartSkuSummary, CartResonseYBSelected paramCartResonseYBSelected, CartResponseSuit paramCartResponseSuit, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList();
    switch (paramInt2)
    {
    default: 
      return;
    case 1: 
      localArrayList.add(new CartSkuSummary(paramCartSkuSummary.getSkuId(), Integer.valueOf(paramInt1)));
      ShoppingController.editProductOrPackList(this.thisContext, localArrayList, null, getUpdateListener());
      return;
    case 2: 
      CartPackSummary localCartPackSummary3 = new CartPackSummary(paramCartResonseYBSelected.getrWid(), Integer.valueOf(1), "8");
      localCartPackSummary3.addSku(new CartSkuSummary(paramCartResonseYBSelected.getYbSku().getSkuId(), Integer.valueOf(paramInt1)));
      localArrayList.add(localCartPackSummary3);
      ShoppingController.editProductOrPackList(this.thisContext, null, localArrayList, getUpdateListener());
      return;
    case 3: 
      localArrayList.add(new CartPackSummary(paramCartResponseSuit.getSuitId(), Integer.valueOf(paramInt1), paramCartResponseSuit.getsType()));
      ShoppingController.editProductOrPackList(this.thisContext, null, localArrayList, getUpdateListener());
      return;
    case 4: 
      CartPackSummary localCartPackSummary2 = new CartPackSummary(paramCartResponseSuit.getSuitId(), paramCartResponseSuit.getNum(), paramCartResponseSuit.getsType());
      localCartPackSummary2.addSku(new CartSkuSummary(paramCartSkuSummary.getSkuId(), Integer.valueOf(paramInt1)));
      localArrayList.add(localCartPackSummary2);
      ShoppingController.editProductOrPackList(this.thisContext, null, localArrayList, getUpdateListener());
      return;
    }
    CartPackSummary localCartPackSummary1 = new CartPackSummary(paramCartResonseYBSelected.getrWid(), paramCartResonseYBSelected.getrSuitId(), paramCartSkuSummary.getNum(), "7");
    localCartPackSummary1.addSku(new CartSkuSummary(paramCartResonseYBSelected.getYbSku().getSkuId(), Integer.valueOf(paramInt1)));
    localArrayList.add(localCartPackSummary1);
    ShoppingController.editProductOrPackList(this.thisContext, null, localArrayList, getUpdateListener());
  }
  
  private void removeEditObject(String paramString1, String paramString2)
  {
    CartPackSummary localCartPackSummary = (CartPackSummary)this.editPacks.get(paramString1);
    int i;
    if (localCartPackSummary != null) {
      i = localCartPackSummary.getSkus().size();
    }
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      CartSkuSummary localCartSkuSummary = (CartSkuSummary)localCartPackSummary.getSkus().get(j);
      if (localCartSkuSummary.getSkuId().equals(paramString2))
      {
        if (i > 1)
        {
          localCartPackSummary.getSkus().remove(localCartSkuSummary);
          return;
        }
        this.editPacks.remove(paramString1);
        return;
      }
    }
  }
  
  private void setNoDataStateText(int paramInt)
  {
    if ((this.noDateStateText != null) && (this.nodataLayout != null) && (this.nodataLayout.getVisibility() == 0)) {
      this.noDateStateText.setText(paramInt);
    }
  }
  
  private void showDeleteDetailFavoriteDialog(final CartResponseSku paramCartResponseSku, final CartResponseSuit paramCartResponseSuit, final boolean paramBoolean)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.thisContext);
    localBuilder.setTitle(this.thisContext.getResources().getString(2131165991));
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(this.thisContext.getResources().getString(2131166036));
    if ((!paramBoolean) || ((paramBoolean) && (paramCartResponseSku != null)))
    {
      localArrayList.add(this.thisContext.getResources().getString(2131165992));
      localArrayList.add(this.thisContext.getResources().getString(2131165993));
    }
    localBuilder.setItems((String[])localArrayList.toArray(new String[localArrayList.size()]), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (paramAnonymousInt == 0) {}
        for (;;)
        {
          try
          {
            if (!paramBoolean) {
              continue;
            }
            CartPackSummary localCartPackSummary = new CartPackSummary(paramCartResponseSuit.getSuitId(), paramCartResponseSuit.getNum(), paramCartResponseSuit.getsType());
            if (paramCartResponseSku != null) {
              localCartPackSummary.addSku(paramCartResponseSku);
            }
            ShoppingController.deleteOnePack(ShoppingCartNewActivity.this.thisContext, localCartPackSummary, ShoppingCartNewActivity.this.getUpdateListener());
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            continue;
          }
          paramAnonymousDialogInterface.dismiss();
          return;
          ShoppingController.deleteOneProduct(ShoppingCartNewActivity.this.thisContext, paramCartResponseSku, ShoppingCartNewActivity.this.getUpdateListener());
          continue;
          if (paramAnonymousInt == 1) {
            ShoppingCartNewActivity.this.forwardToProductDetail(paramCartResponseSku, paramBoolean);
          } else if (paramAnonymousInt == 2) {
            ShoppingCartNewActivity.this.addCollect(Long.parseLong(paramCartResponseSku.getSkuId()));
          }
        }
      }
    }).show();
  }
  
  private void showDeleteProductDialog(int paramInt)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.thisContext);
    MyActivity localMyActivity = this.thisContext;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    localBuilder.setMessage(localMyActivity.getString(2131166443, arrayOfObject));
    localBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ShoppingController.deleteProductOrPackList(ShoppingCartNewActivity.this.thisContext, ShoppingCartNewActivity.this.deleteSingleProducts, ShoppingCartNewActivity.this.deletePackProducts, ShoppingCartNewActivity.this.getUpdateListener());
      }
    });
    localBuilder.setNegativeButton(2131165601, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    });
    localBuilder.create().show();
  }
  
  private void syncCartData()
  {
    if (this.headLoginView.getLayoutParams() == null) {
      new AbsListView.LayoutParams(0, 0);
    }
    if (LoginUserBase.hasLogin()) {
      this.headLoginView.setVisibility(8);
    }
    while ((!this.isLoadingData) && (!this.ybControlLoading))
    {
      this.isLoadingData = true;
      ShoppingController.syncCart(this, getUpdateListener(), false, false);
      return;
      this.headLoginView.setVisibility(0);
    }
    this.ybControlLoading = false;
  }
  
  private void toastShow(int paramInt)
  {
    toastShow(this.thisContext.getString(paramInt));
  }
  
  private void toastShow(String paramString)
  {
    Toast.makeText(this.thisContext, paramString, 0).show();
  }
  
  private void updateData(final CartResponse paramCartResponse)
  {
    if ((paramCartResponse.getInfo() != null) && ((checkData(paramCartResponse.getInfo().getSkus())) || (checkData(paramCartResponse.getInfo().getSuits())) || (checkData(paramCartResponse.getInfo().getGifts()))))
    {
      this.deleteSingleProducts.clear();
      this.deletePackProducts.clear();
      this.adapter.setData(paramCartResponse.getInfo());
      post(new Runnable()
      {
        public void run()
        {
          if (ShoppingCartNewActivity.this.loadErrorLayout.getVisibility() == 0) {
            ShoppingCartNewActivity.this.loadErrorLayout.setVisibility(8);
          }
          if (ShoppingCartNewActivity.this.nodataLayout.getVisibility() == 0) {
            ShoppingCartNewActivity.this.nodataLayout.setVisibility(8);
          }
          if (ShoppingCartNewActivity.this.shoppingListView.getVisibility() == 8) {
            ShoppingCartNewActivity.this.shoppingListView.setVisibility(0);
          }
          if (!TextUtils.isEmpty(paramCartResponse.getMessage()))
          {
            ShoppingCartNewActivity.this.cartCountYunFei.setVisibility(0);
            ShoppingCartNewActivity.this.cartCountYunFei.setText(paramCartResponse.getMessage());
            double d1 = ShoppingCartNewActivity.this.StringtoDouble(paramCartResponse.getInfo().getPrice()) - ShoppingCartNewActivity.this.StringtoDouble(paramCartResponse.getInfo().getDiscount());
            double d2 = ShoppingCartNewActivity.this.StringtoDouble(paramCartResponse.getInfo().getRePrice());
            double d3 = d1 - d2;
            TextView localTextView1 = ShoppingCartNewActivity.this.cartOriginalReturnPriceTv;
            MyActivity localMyActivity1 = ShoppingCartNewActivity.this.thisContext;
            Object[] arrayOfObject1 = new Object[2];
            arrayOfObject1[0] = ShoppingCartNewActivity.this.formatPriceString(Double.valueOf(d1));
            arrayOfObject1[1] = ShoppingCartNewActivity.this.formatPriceString(Double.valueOf(d2));
            localTextView1.setText(Html.fromHtml(localMyActivity1.getString(2131166388, arrayOfObject1)));
            TextView localTextView2 = ShoppingCartNewActivity.this.cartCountPriceTv;
            MyActivity localMyActivity2 = ShoppingCartNewActivity.this.thisContext;
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = ShoppingCartNewActivity.this.formatPriceString(Double.valueOf(d3));
            localTextView2.setText(Html.fromHtml(localMyActivity2.getString(2131166389, arrayOfObject2)));
            if (!ShoppingCartNewActivity.this.adapter.isExisSelectItem()) {
              break label354;
            }
            ShoppingCartNewActivity.this.cartSettleAccountsBut.setEnabled(true);
          }
          for (;;)
          {
            ShoppingCartNewActivity.this.adapter.notifyDataSetChanged();
            return;
            ShoppingCartNewActivity.this.cartCountYunFei.setVisibility(8);
            break;
            label354:
            ShoppingCartNewActivity.this.cartSettleAccountsBut.setEnabled(false);
          }
        }
      });
      this.isAllSelect = false;
      CartResponseInfo localCartResponseInfo = paramCartResponse.getInfo();
      int i = localCartResponseInfo.getGifts().size();
      int j = localCartResponseInfo.getSkus().size();
      int k = localCartResponseInfo.getSuits().size();
      int m = 0;
      int n;
      int i1;
      if (m >= i)
      {
        n = 0;
        if (n >= j)
        {
          i1 = 0;
          if (i1 < k) {
            break label257;
          }
          post(new Runnable()
          {
            public void run()
            {
              if (ShoppingCartNewActivity.this.isAllSelect)
              {
                ShoppingCartNewActivity.this.allSelectBut.setBackgroundResource(2130837779);
                if ((ShoppingCartNewActivity.this.deleteSingleProducts.size() > 0) || (ShoppingCartNewActivity.this.deletePackProducts.size() > 0)) {
                  break label124;
                }
                ShoppingCartNewActivity.this.deleteBut.setVisibility(8);
              }
              for (;;)
              {
                ShoppingCartNewActivity.this.footPriceView.setVisibility(0);
                if (ShoppingCartNewActivity.this.shoppingFunctionLayout.getVisibility() == 8)
                {
                  ShoppingCartNewActivity.this.shoppingFunctionLayout.setVisibility(0);
                  ShoppingCartNewActivity.this.shadowView.setVisibility(0);
                }
                return;
                ShoppingCartNewActivity.this.allSelectBut.setBackgroundResource(2130837780);
                break;
                label124:
                ShoppingCartNewActivity.this.deleteBut.setVisibility(0);
              }
            }
          });
        }
      }
      else
      {
        CartResponseGift localCartResponseGift = (CartResponseGift)localCartResponseInfo.getGifts().get(m);
        if (!localCartResponseGift.isChecked()) {
          this.isAllSelect = true;
        }
        for (;;)
        {
          m++;
          break;
          this.deleteSingleProducts.add(localCartResponseGift);
        }
      }
      CartResponseSku localCartResponseSku1 = (CartResponseSku)localCartResponseInfo.getSkus().get(n);
      if (!localCartResponseSku1.isChecked()) {
        this.isAllSelect = true;
      }
      for (;;)
      {
        n++;
        break;
        this.deleteSingleProducts.add(localCartResponseSku1);
      }
      label257:
      CartResponseSuit localCartResponseSuit = (CartResponseSuit)localCartResponseInfo.getSuits().get(i1);
      if ("4".equals(localCartResponseSuit.getsType())) {
        if (!localCartResponseSuit.isChecked()) {
          this.isAllSelect = true;
        }
      }
      ArrayList localArrayList;
      int i3;
      for (;;)
      {
        i1++;
        break;
        this.deletePackProducts.add(localCartResponseSuit);
        continue;
        int i2 = localCartResponseSuit.getSkus().size();
        localArrayList = new ArrayList();
        i3 = 0;
        if (i3 < i2) {
          break label398;
        }
        if (localArrayList.size() > 0)
        {
          CartPackSummary localCartPackSummary = new CartPackSummary(localCartResponseSuit.getPackId(), localCartResponseSuit.getNum(), localCartResponseSuit.getsType());
          localCartPackSummary.setSkus(localArrayList);
          this.deletePackProducts.add(localCartPackSummary);
        }
      }
      label398:
      CartResponseSku localCartResponseSku2 = (CartResponseSku)localCartResponseSuit.getSkus().get(i3);
      if (!localCartResponseSku2.isChecked()) {
        this.isAllSelect = true;
      }
      for (;;)
      {
        i3++;
        break;
        localArrayList.add(localCartResponseSku2);
      }
    }
    post(new Runnable()
    {
      public void run()
      {
        ShoppingCartNewActivity.this.loadErrorLayout.setVisibility(8);
        ShoppingCartNewActivity.this.nodataLayout.setVisibility(0);
        ShoppingCartNewActivity.this.setNoDataStateText(2131166398);
        ShoppingCartNewActivity.this.handleLayoutGone(false);
      }
    });
  }
  
  private void ybForwardSelectPage(CartResponseSku paramCartResponseSku)
  {
    this.ybControlLoading = true;
    Intent localIntent = new Intent(this, YanBaoActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("yan_bao", paramCartResponseSku.getYbCanSelectedCategorys());
    localBundle.putSerializable("yan_bao_select", paramCartResponseSku.getYbSkus());
    localIntent.putExtras(localBundle);
    startActivityForResult(localIntent, 0);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (1 == paramInt2)
    {
      Bundle localBundle = paramIntent.getExtras();
      ArrayList localArrayList1 = (ArrayList)localBundle.getSerializable("yan_bao");
      ArrayList localArrayList2 = (ArrayList)localBundle.getSerializable("yan_bao_select");
      ShoppingController.addOrDeleteYb(this.thisContext, localArrayList1, localArrayList2, getUpdateListener());
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903310);
    this.thisContext = this;
    this.res = getResources();
    this.imageBg = BitmapFactory.decodeResource(this.res, 2130838379);
    this.deleteBut = ((Button)findViewById(2131494545));
    this.deleteBut.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        int i = 0 + ShoppingCartNewActivity.this.deleteSingleProducts.size();
        int j = 0;
        if (j >= ShoppingCartNewActivity.this.deletePackProducts.size())
        {
          ShoppingCartNewActivity.this.showDeleteProductDialog(i);
          return;
        }
        CartPackSummary localCartPackSummary = (CartPackSummary)ShoppingCartNewActivity.this.deletePackProducts.get(j);
        if ("4".equals(localCartPackSummary.getsType())) {
          i++;
        }
        for (;;)
        {
          j++;
          break;
          i += localCartPackSummary.getSkus().size();
        }
      }
    });
    this.nodataLayout = findViewById(2131494549);
    this.noDateStateText = ((TextView)this.nodataLayout.findViewById(2131494555));
    this.loadErrorLayout = findViewById(2131494550);
    this.reloadBtn = ((Button)this.loadErrorLayout.findViewById(2131493613));
    this.nodataLayout.findViewById(2131494556).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(ShoppingCartNewActivity.this.thisContext, PromotionActivity.class);
        ShoppingCartNewActivity.this.startActivityInFrame(localIntent);
      }
    });
    this.reloadBtn.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ShoppingCartNewActivity.this.syncCartData();
      }
    });
    this.headLoginView = findViewById(2131494547);
    ((Button)this.headLoginView.findViewById(2131494554)).setOnClickListener(this.noDataLoginClickListener);
    this.footPriceView = findViewById(2131494548);
    this.cartOriginalReturnPriceTv = ((TextView)this.footPriceView.findViewById(2131494577));
    this.cartCountPriceTv = ((TextView)this.footPriceView.findViewById(2131494576));
    this.cartCountYunFei = ((TextView)this.footPriceView.findViewById(2131494580));
    this.shoppingFunctionLayout = ((LinearLayout)findViewById(2131494546));
    this.shadowView = findViewById(2131494552);
    this.cartSettleAccountsBut = ((Button)this.footPriceView.findViewById(2131494579));
    this.cartSettleAccountsBut.setOnClickListener(this.settleAccountsButtonListener);
    this.allSelectBut = ((ImageButton)this.footPriceView.findViewById(2131494575));
    this.allSelectBut.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (ShoppingCartNewActivity.this.isAllSelect)
        {
          ShoppingController.selectAll(ShoppingCartNewActivity.this.thisContext, ShoppingCartNewActivity.this.getUpdateListener());
          return;
        }
        ShoppingController.unSelectAll(ShoppingCartNewActivity.this.thisContext, ShoppingCartNewActivity.this.getUpdateListener());
      }
    });
    this.shoppingListView = ((ListView)findViewById(2131494551));
    this.shoppingListView.setDivider(null);
    initAdapter();
    addResumeListener(new IResumeListener()
    {
      public void onResume()
      {
        if (ShoppingCartNewActivity.isGoFillOrder)
        {
          ShoppingCartNewActivity.isGoFillOrder = false;
          ShoppingCartNewActivity.this.forwardOrder();
        }
      }
    });
  }
  
  protected void onPause()
  {
    super.onPause();
    if ((this.currEditDialog != null) && (this.currEditDialog.isShowing()))
    {
      this.currEditDialog.cancel();
      this.currEditDialog = null;
    }
  }
  
  protected void onResume()
  {
    if (!isGoFillOrder) {
      syncCartData();
    }
    super.onResume();
  }
  
  private class EditOnTouchListener
    implements View.OnTouchListener
  {
    private final int MAX_CLICK_INTERVAL = 2000;
    private long currentTime;
    private TextView editTexts = null;
    private double price;
    EditProductCountDialog.EditTextNumChangeListener textchangeListener;
    
    public EditOnTouchListener(double paramDouble, EditProductCountDialog.EditTextNumChangeListener paramEditTextNumChangeListener)
    {
      this.price = paramDouble;
      this.textchangeListener = paramEditTextNumChangeListener;
    }
    
    public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      if (this.price <= 0.0D) {}
      while (!(paramView instanceof TextView)) {
        return false;
      }
      TextView localTextView = (TextView)paramView;
      switch (paramMotionEvent.getAction())
      {
      }
      for (;;)
      {
        return true;
        this.currentTime = System.currentTimeMillis();
        continue;
        if (System.currentTimeMillis() - this.currentTime >= 2000L) {
          continue;
        }
        try
        {
          int j = Integer.valueOf(localTextView.getText().toString()).intValue();
          i = j;
          localEditProductCountDialog = new EditProductCountDialog(ShoppingCartNewActivity.this, i, this.price, this.textchangeListener);
          if (this.editTexts == null) {}
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          try
          {
            EditProductCountDialog localEditProductCountDialog;
            localEditProductCountDialog.setParentNum(Integer.parseInt(this.editTexts.getText().toString()));
            label146:
            ShoppingCartNewActivity.this.currEditDialog = localEditProductCountDialog;
            localEditProductCountDialog.show();
            continue;
            localNumberFormatException1 = localNumberFormatException1;
            int i = 1;
          }
          catch (NumberFormatException localNumberFormatException2)
          {
            break label146;
          }
        }
      }
    }
  }
  
  private class ShoppingCartListener
    implements ShoppingBaseController.ShoppingListener
  {
    private long refreshViewToken = -2L;
    
    public ShoppingCartListener()
    {
      ShoppingCartNewActivity.this.token = System.currentTimeMillis();
      this.refreshViewToken = ShoppingCartNewActivity.this.token;
    }
    
    public void onEnd(CartResponse paramCartResponse)
    {
      if (this.refreshViewToken - ShoppingCartNewActivity.this.token != 0L) {
        return;
      }
      ShoppingCartNewActivity.this.isLoadingData = false;
      ShoppingCartNewActivity.this.ybControlLoading = false;
      ShoppingCartNewActivity.this.updateData(paramCartResponse);
    }
    
    public void onError(final String paramString)
    {
      ShoppingCartNewActivity.this.isLoadingData = false;
      ShoppingCartNewActivity.this.ybControlLoading = false;
      ShoppingCartNewActivity.this.post(new Runnable()
      {
        public void run()
        {
          ShoppingCartNewActivity.this.nodataLayout.setVisibility(8);
          ShoppingCartNewActivity.this.loadErrorLayout.setVisibility(0);
          ShoppingCartNewActivity.this.handleLayoutGone(true);
          if (!TextUtils.isEmpty(paramString)) {
            ShoppingCartNewActivity.this.toastShow(paramString);
          }
        }
      });
    }
    
    public void onStart()
    {
      ShoppingCartNewActivity.this.post(new Runnable()
      {
        public void run()
        {
          ShoppingCartNewActivity.this.loadErrorLayout.setVisibility(8);
          if ((ShoppingCartNewActivity.this.adapter == null) || (ShoppingCartNewActivity.this.adapter.getCount() < 1)) {
            ShoppingCartNewActivity.this.nodataLayout.setVisibility(0);
          }
          ShoppingCartNewActivity.this.setNoDataStateText(2131166395);
        }
      });
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.ShoppingCartNewActivity
 * JD-Core Version:    0.7.0.1
 */