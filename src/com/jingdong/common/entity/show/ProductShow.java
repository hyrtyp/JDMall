package com.jingdong.common.entity.show;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import com.jingdong.common.controller.ProductDetailController;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.ProductDetailBasicInfo;
import com.jingdong.common.entity.ProductDetailPrice;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpTaskListener;
import java.io.Serializable;

public class ProductShow
  implements Serializable
{
  private static final long serialVersionUID = 5458650057466774157L;
  private ForegroundColorSpan colorSpanGray;
  private ForegroundColorSpan colorSpanRed;
  private ForegroundColorSpan colorSpanRedNew;
  private Context context;
  private Product product;
  private int resId;
  
  public ProductShow(Context paramContext, Product paramProduct, int paramInt)
  {
    this.context = paramContext;
    this.colorSpanRed = new ForegroundColorSpan(-65536);
    this.colorSpanGray = new ForegroundColorSpan(-7829368);
    this.colorSpanRedNew = new ForegroundColorSpan(-3537402);
    this.product = paramProduct;
    this.resId = paramInt;
  }
  
  public static void getImageFile(String paramString, HttpGroup paramHttpGroup, HttpGroup.HttpTaskListener paramHttpTaskListener)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setUrl(paramString);
    localHttpSetting.setCacheMode(1);
    localHttpSetting.setType(5000);
    localHttpSetting.setListener(paramHttpTaskListener);
    localHttpSetting.setNeedShareImage(true);
    paramHttpGroup.add(localHttpSetting);
  }
  
  public static void shareProduct(Button paramButton, final Product paramProduct, final HttpGroup paramHttpGroup)
  {
    paramButton.setText("分享");
    paramButton.setVisibility(0);
    paramButton.setOnClickListener(new View.OnClickListener()
    {
      private final String TAG = "shareProduct";
      
      public void onClick(View paramAnonymousView)
      {
        ProductShow.this.setClickable(false);
        Intent localIntent = new Intent("android.intent.action.SEND");
        localIntent.setType("text/plain");
        localIntent.putExtra("android.intent.extra.SUBJECT", "嗨，我在京东发现个好东东，还挺便宜");
        localIntent.putExtra("android.intent.extra.TEXT", "京东卖的“" + paramProduct.getName() + "”不错哦，http://m.jd.com/product/" + paramProduct.getId() + ".html");
        ((Activity)ProductShow.this.getContext()).startActivity(Intent.createChooser(localIntent, "分享到："));
        ProductDetailController.onProductShareClick(paramHttpGroup, paramProduct.getId().longValue());
      }
    });
  }
  
  public static void shareProductNew(Button paramButton, final Product paramProduct, final HttpGroup paramHttpGroup, LinearLayout paramLinearLayout)
  {
    paramLinearLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProductShow.this.performClick();
      }
    });
    paramButton.setVisibility(0);
    paramButton.setOnClickListener(new View.OnClickListener()
    {
      private final String TAG = "shareProduct";
      
      public void onClick(View paramAnonymousView)
      {
        ProductShow.this.setClickable(false);
        Intent localIntent = new Intent("android.intent.action.SEND");
        localIntent.setType("text/plain");
        localIntent.putExtra("android.intent.extra.SUBJECT", "嗨，我在京东发现个好东东，还挺便宜");
        localIntent.putExtra("android.intent.extra.TEXT", "京东卖的“" + paramProduct.getName() + "”不错哦，http://m.jd.com/product/" + paramProduct.getId() + ".html");
        ((Activity)ProductShow.this.getContext()).startActivity(Intent.createChooser(localIntent, "分享到："));
        ProductDetailController.onProductShareClick(paramHttpGroup, paramProduct.getId().longValue());
      }
    });
  }
  
  public String getImgUrl(int paramInt)
  {
    return this.product.popImgUrl(paramInt).toString();
  }
  
  public CharSequence getJdPrice()
  {
    ProductDetailBasicInfo localProductDetailBasicInfo = this.product.getProductDetailBasicInfo();
    if (localProductDetailBasicInfo == null) {
      return "";
    }
    ProductDetailPrice localProductDetailPrice = this.product.getProductDetailJprice();
    String str;
    if (!localProductDetailBasicInfo.isMiaosha()) {
      if (localProductDetailPrice != null) {
        str = localProductDetailPrice.getName() + StringUtil.product_price_label;
      }
    }
    for (;;)
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str + this.product.getJdPrice());
      int i = -1 + str.length();
      int j = localSpannableStringBuilder.length();
      localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.2F), 0, j, 33);
      localSpannableStringBuilder.setSpan(this.colorSpanRed, i, j, 33);
      return localSpannableStringBuilder;
      str = StringUtil.product_jd_price;
      continue;
      if (localProductDetailPrice != null) {
        str = localProductDetailPrice.getName() + StringUtil.product_price_label;
      } else {
        str = StringUtil.product_limitbuy_price;
      }
    }
  }
  
  public CharSequence getMarketPrice()
  {
    if (this.product.getMarketPrice() != null)
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("￥" + this.product.getMarketPrice());
      localSpannableStringBuilder.setSpan(this.colorSpanGray, 0, localSpannableStringBuilder.length(), 17);
      localSpannableStringBuilder.setSpan(new StrikethroughSpan(), 0, localSpannableStringBuilder.length(), 33);
      localSpannableStringBuilder.insert(0, this.product.getMarketPriceDescription() + "：");
      return localSpannableStringBuilder;
    }
    return "";
  }
  
  public CharSequence getMarketPriceNew()
  {
    if (this.product.getMarketPrice() != null)
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("￥" + this.product.getMarketPrice());
      localSpannableStringBuilder.setSpan(this.colorSpanGray, 0, localSpannableStringBuilder.length(), 17);
      localSpannableStringBuilder.setSpan(new StrikethroughSpan(), 0, localSpannableStringBuilder.length(), 33);
      localSpannableStringBuilder.insert(0, StringUtil.product_original_price + "：");
      return localSpannableStringBuilder;
    }
    return "";
  }
  
  public CharSequence getMarketPriceNew(String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)))
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("￥" + paramString1);
      localSpannableStringBuilder.setSpan(this.colorSpanGray, 0, localSpannableStringBuilder.length(), 17);
      localSpannableStringBuilder.setSpan(new StrikethroughSpan(), 0, localSpannableStringBuilder.length(), 33);
      localSpannableStringBuilder.insert(0, paramString2);
      return localSpannableStringBuilder;
    }
    return "";
  }
  
  public CharSequence getNameAndAdWord()
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(this.product.getName() + this.product.getAdWord());
    int i = this.product.getName().length();
    int j = localSpannableStringBuilder.length();
    if (this.product.getAdWord().length() > 0) {
      localSpannableStringBuilder.setSpan(this.colorSpanRedNew, i, j, 33);
    }
    if (this.product.isPromotion().booleanValue())
    {
      localSpannableStringBuilder.append(" ");
      localSpannableStringBuilder.setSpan(new ImageSpan(this.context, this.resId), j, localSpannableStringBuilder.length(), 33);
    }
    return localSpannableStringBuilder;
  }
  
  public CharSequence getNameAndAdWordForPanic()
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(this.product.getName() + this.product.getAdWord());
    int i = this.product.getName().length();
    int j = localSpannableStringBuilder.length();
    if (this.product.getAdWord().length() > 0) {
      localSpannableStringBuilder.setSpan(this.colorSpanRed, i, j, 33);
    }
    if (this.product.isPromotion().booleanValue())
    {
      localSpannableStringBuilder.append(" ");
      localSpannableStringBuilder.setSpan(new ImageSpan(this.context, this.resId), j, localSpannableStringBuilder.length(), 33);
    }
    return localSpannableStringBuilder;
  }
  
  public CharSequence getNameAndZeng()
  {
    String str;
    SpannableStringBuilder localSpannableStringBuilder;
    if (this.product.getName().length() > 40)
    {
      str = this.product.getName().substring(0, 40) + "...";
      localSpannableStringBuilder = new SpannableStringBuilder(str);
    }
    for (int i = str.length();; i = this.product.getName().length())
    {
      int j = localSpannableStringBuilder.length();
      localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.0F), 0, i, 33);
      localSpannableStringBuilder.setSpan(this.colorSpanRed, i, j, 33);
      localSpannableStringBuilder.append(" ");
      localSpannableStringBuilder.setSpan(new ImageSpan(this.context, this.resId), j, localSpannableStringBuilder.length(), 33);
      return localSpannableStringBuilder;
      localSpannableStringBuilder = new SpannableStringBuilder(this.product.getName());
    }
  }
  
  public Product getProduct()
  {
    return this.product;
  }
  
  public CharSequence getPromotionTitleAndInfo()
  {
    if (this.product.getPromotionInfo() != null)
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
      localSpannableStringBuilder.append(this.product.getPromotionTitle());
      localSpannableStringBuilder.append(this.product.getPromotionInfo());
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(-65536), this.product.getPromotionTitle().length(), localSpannableStringBuilder.length(), 33);
      return localSpannableStringBuilder;
    }
    return null;
  }
  
  public CharSequence getPromotionTitleAndInfoNew()
  {
    if (this.product.getPromotionInfo() != null)
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
      localSpannableStringBuilder.append(this.product.getPromotionTitle());
      localSpannableStringBuilder.append(this.product.getPromotionInfo());
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(-3537402), this.product.getPromotionTitle().length(), localSpannableStringBuilder.length(), 33);
      return localSpannableStringBuilder;
    }
    return null;
  }
  
  public String getUserClass()
  {
    return this.product.getUserClass();
  }
  
  public String getUserName()
  {
    return this.product.getUsername();
  }
  
  public CharSequence getUserPrice()
  {
    String str = this.product.getUserPriceLabel() + "：￥";
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str + this.product.getUserPriceContent());
    int i = -1 + str.length();
    int j = localSpannableStringBuilder.length();
    localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.2F), 0, j, 33);
    localSpannableStringBuilder.setSpan(this.colorSpanRed, i, j, 33);
    return localSpannableStringBuilder;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.show.ProductShow
 * JD-Core Version:    0.7.0.1
 */