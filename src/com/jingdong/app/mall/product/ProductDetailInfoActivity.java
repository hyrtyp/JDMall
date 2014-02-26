package com.jingdong.app.mall.product;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ProductShow;
import com.jingdong.app.mall.utils.ui.ProductInfoRelativeLayout;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.entity.Coupon;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.ProductDetailPrice;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.HttpHost;
import org.apache.http.client.utils.URIUtils;

public class ProductDetailInfoActivity
  extends MyActivity
{
  private static final int RADIO_BUTTON_ID_OFFSET = 2000;
  private static final int RADIO_BUTTON_LAYOUT_ID = 1001;
  private static final int TAB_CONTENT_ID_OFFSET = 3000;
  private static final RelativeLayout.LayoutParams layoutParamsFF = new RelativeLayout.LayoutParams(-1, -1);
  private static final RelativeLayout.LayoutParams layoutParamsFW = new RelativeLayout.LayoutParams(-1, -2);
  private final String TAG = "ProductDetailInfoActivity";
  private ProductInfoRelativeLayout containerView;
  private HttpGroup httpGroupaAsynPool;
  private View nowBranchView;
  private Product product;
  private TextView productCouponView;
  private TextView productIdView;
  private TextView productJdPriceView;
  private TextView productMPriceView;
  private TextView productNameAndAdWordView;
  private TextView productPromotionLabelView;
  private TextView productPromotionView;
  private HorizontalScrollView scrollView;
  private Button shareButton;
  
  private RelativeLayout createTabBody()
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(this);
    localRelativeLayout.setPadding(0, DPIUtil.dip2px(5.0F), 0, DPIUtil.dip2px(5.0F));
    localRelativeLayout.addView(new ProgressBar(this, null, 2131230767));
    return localRelativeLayout;
  }
  
  private void cutBranch(View paramView)
  {
    this.nowBranchView.setVisibility(8);
    this.nowBranchView = paramView;
    this.nowBranchView.setVisibility(0);
  }
  
  private void initData()
  {
    this.product = ((Product)getIntent().getExtras().get("product"));
  }
  
  private void initTabComponents()
  {
    final RadioGroup localRadioGroup = new RadioGroup(this);
    localRadioGroup.setOrientation(0);
    this.scrollView = new HorizontalScrollView(this);
    this.scrollView.setId(1001);
    this.scrollView.setHorizontalScrollBarEnabled(false);
    this.scrollView.addView(localRadioGroup, layoutParamsFW);
    final RelativeLayout localRelativeLayout = new RelativeLayout(this);
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("emTab");
    localHttpSetting.putJsonParam("wareId", this.product.getShowId());
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        for (;;)
        {
          int i;
          int j;
          try
          {
            localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("tabInfo");
            i = localJSONArrayPoxy.length();
            j = 0;
            if (j < i) {
              break label396;
            }
            ProductDetailInfoActivity localProductDetailInfoActivity = ProductDetailInfoActivity.this;
            Runnable local2 = new Runnable()
            {
              public void run()
              {
                RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(ProductDetailInfoActivity.layoutParamsFW);
                localLayoutParams1.addRule(3, 2131492885);
                ProductDetailInfoActivity.this.containerView.addView(ProductDetailInfoActivity.this.scrollView, localLayoutParams1);
                RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(ProductDetailInfoActivity.layoutParamsFF);
                localLayoutParams2.addRule(3, 1001);
                ProductDetailInfoActivity.this.containerView.addView(this.val$contentLayout, localLayoutParams2);
              }
            };
            localProductDetailInfoActivity.post(local2);
            return;
          }
          catch (Exception localException)
          {
            JSONArrayPoxy localJSONArrayPoxy;
            label54:
            JSONObjectProxy localJSONObjectProxy;
            String str1;
            String str2;
            String str3;
            RadioButton localRadioButton;
            int n;
            RadioGroup.LayoutParams localLayoutParams1;
            View localView;
            RadioGroup.LayoutParams localLayoutParams2;
            RelativeLayout.LayoutParams localLayoutParams;
            View.OnClickListener local1;
            localException.printStackTrace();
            return;
          }
          localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(j);
          if (localJSONObjectProxy != null)
          {
            str1 = localJSONObjectProxy.getStringOrNull("englishName");
            str2 = localJSONObjectProxy.getStringOrNull("tabName");
            str3 = localJSONObjectProxy.getStringOrNull("mUrl");
            if ((str1 != null) && (!"".equals(str1)) && (str3 != null) && (!"".equals(str3)))
            {
              if ((str2 == null) || ("".equals(str1))) {
                str2 = ProductDetailInfoActivity.this.getString(2131165667);
              }
              localRadioButton = (RadioButton)ImageUtil.inflate(2130903257, null);
              localRadioButton.setText(str2);
              n = ProductDetailInfoActivity.this.getWindowManager().getDefaultDisplay().getWidth() - 3 * DPIUtil.dip2px(1.0F);
              int i1;
              final RelativeLayout localRelativeLayout;
              if (i > 4)
              {
                i1 = 4;
                localLayoutParams1 = new RadioGroup.LayoutParams(n / i1, -2);
                localRadioGroup.addView(localRadioButton, localLayoutParams1);
                if (m == 0)
                {
                  localView = ImageUtil.inflate(2130903258, null);
                  localLayoutParams2 = new RadioGroup.LayoutParams(DPIUtil.dip2px(1.0F), -1);
                  localRadioGroup.addView(localView, localLayoutParams2);
                }
                localRadioButton.setId(j + 2000);
                localRelativeLayout = ProductDetailInfoActivity.this.initTabContent(str3);
                localRelativeLayout.setId(j + 3000);
                localLayoutParams = new RelativeLayout.LayoutParams(ProductDetailInfoActivity.layoutParamsFF);
                localRelativeLayout.addView(localRelativeLayout, localLayoutParams);
                local1 = new View.OnClickListener()
                {
                  public void onClick(View paramAnonymous2View)
                  {
                    ProductDetailInfoActivity.this.cutBranch(localRelativeLayout);
                  }
                };
                localRadioButton.setOnClickListener(local1);
                if (k != 0)
                {
                  localRadioGroup.check(localRadioButton.getId());
                  ProductDetailInfoActivity.this.nowBranchView = localRelativeLayout;
                  break label419;
                }
              }
              else
              {
                i1 = i;
                continue;
              }
              localRelativeLayout.setVisibility(8);
              break label419;
              label396:
              if (j != 0) {
                break label425;
              }
            }
          }
          label419:
          label425:
          for (int k = 1;; k = 0)
          {
            if (j + 1 >= i) {
              break label431;
            }
            m = 0;
            break label54;
            j++;
            break;
          }
          label431:
          int m = 1;
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    this.httpGroupaAsynPool.add(localHttpSetting);
  }
  
  private RelativeLayout initTabContent(final String paramString)
  {
    final RelativeLayout localRelativeLayout = createTabBody();
    post(new Runnable()
    {
      public void run()
      {
        WebView localWebView = new WebView(ProductDetailInfoActivity.this);
        localWebView.setWebChromeClient(new WebChromeClient());
        localWebView.setWebViewClient(new WebViewClient()
        {
          public boolean shouldOverrideUrlLoading(WebView paramAnonymous2WebView, String paramAnonymous2String)
          {
            return true;
          }
        });
        WebSettings localWebSettings = localWebView.getSettings();
        localWebSettings.setJavaScriptEnabled(true);
        localWebSettings.setSupportZoom(true);
        localWebSettings.setBuiltInZoomControls(true);
        localWebSettings.setUseWideViewPort(true);
        if ((!ProductDetailInfoActivity.this.product.isBook().booleanValue()) && (Build.VERSION.SDK_INT >= 7)) {
          localWebSettings.setLoadWithOverviewMode(true);
        }
        Object localObject = paramString;
        String str1 = Configuration.getProperty("mHost");
        int i;
        String[] arrayOfString;
        if ((str1 != null) && (!TextUtils.isEmpty(str1.trim())))
        {
          i = 80;
          arrayOfString = str1.split(":");
          if (arrayOfString.length > 1) {
            str1 = arrayOfString[0];
          }
        }
        for (;;)
        {
          try
          {
            int j = Integer.parseInt(arrayOfString[1]);
            i = j;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            String str2;
            continue;
          }
          try
          {
            str2 = URIUtils.rewriteURI(new URI((String)localObject), new HttpHost(str1, i)).toString();
            localObject = str2;
          }
          catch (URISyntaxException localURISyntaxException)
          {
            localURISyntaxException.printStackTrace();
          }
        }
        localWebView.loadUrl((String)localObject);
        localRelativeLayout.addView(localWebView, ProductDetailInfoActivity.layoutParamsFF);
      }
    });
    return localRelativeLayout;
  }
  
  private void initView()
  {
    this.productIdView = ((TextView)findViewById(2131494287));
    this.productNameAndAdWordView = ((TextView)findViewById(2131494286));
    this.productJdPriceView = ((TextView)findViewById(2131494288));
    this.productPromotionLabelView = ((TextView)findViewById(2131494290));
    this.productPromotionView = ((TextView)findViewById(2131494291));
    this.productCouponView = ((TextView)findViewById(2131494292));
    this.productMPriceView = ((TextView)findViewById(2131494289));
    this.containerView = ((ProductInfoRelativeLayout)findViewById(2131494285));
    this.containerView.init(this);
  }
  
  private void showNameAndPrice()
  {
    this.productIdView.setText(getString(2131165668) + this.product.getShowId());
    ProductShow localProductShow = new ProductShow(this, this.product);
    this.productNameAndAdWordView.setText(localProductShow.getNameAndAdWord());
    this.productJdPriceView.setText(localProductShow.getJdPrice());
    ProductDetailPrice localProductDetailPrice = this.product.getProductDetailMprice();
    if (localProductDetailPrice != null)
    {
      CharSequence localCharSequence = localProductShow.getMarketPriceNew(localProductDetailPrice.getValue(), localProductDetailPrice.getName());
      if ((localProductDetailPrice.getDisplay().booleanValue()) && (!TextUtils.isEmpty(localCharSequence)))
      {
        this.productMPriceView.setVisibility(0);
        this.productMPriceView.setText(localCharSequence);
      }
    }
    else
    {
      return;
    }
    this.productMPriceView.setVisibility(8);
  }
  
  private void showPromotion()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("promotion");
    localHttpSetting.putJsonParam("wareId", this.product.getShowId());
    localHttpSetting.putJsonParam("level", "-1");
    localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        final ArrayList localArrayList1 = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("promotionInfos"), 10);
        ProductDetailInfoActivity.this.product.setGiftList(localArrayList1);
        if ((localArrayList1 != null) && (localArrayList1.size() > 0)) {
          ProductDetailInfoActivity.this.post(new Runnable()
          {
            public void run()
            {
              ProductDetailInfoActivity.this.productPromotionLabelView.setVisibility(0);
              ProductDetailInfoActivity.this.productPromotionView.setVisibility(0);
              SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
              Iterator localIterator = localArrayList1.iterator();
              if (!localIterator.hasNext())
              {
                ProductDetailInfoActivity.this.productPromotionView.setText(localSpannableStringBuilder);
                return;
              }
              Product localProduct = (Product)localIterator.next();
              localSpannableStringBuilder.append(localProduct.getName() + " ");
              String str1 = "X" + String.valueOf(localProduct.getNum());
              int i = localSpannableStringBuilder.length();
              StringBuilder localStringBuilder = new StringBuilder(String.valueOf(str1));
              if (localIterator.hasNext()) {}
              for (String str2 = "\n";; str2 = "")
              {
                localSpannableStringBuilder.append(str2);
                int j = i + str1.length();
                localSpannableStringBuilder.setSpan(new ForegroundColorSpan(ProductDetailInfoActivity.this.getResources().getColor(2131296296)), i, j, 33);
                break;
              }
            }
          });
        }
        final ArrayList localArrayList2 = Coupon.toList(localJSONObjectProxy.getJSONArrayOrNull("tokenInfos"), 0);
        if ((localArrayList2 != null) && (localArrayList2.size() > 0)) {
          ProductDetailInfoActivity.this.post(new Runnable()
          {
            public void run()
            {
              ProductDetailInfoActivity.this.productCouponView.setVisibility(0);
              SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
              Iterator localIterator = localArrayList2.iterator();
              if (!localIterator.hasNext())
              {
                ProductDetailInfoActivity.this.productCouponView.setText(localSpannableStringBuilder);
                return;
              }
              Coupon localCoupon = (Coupon)localIterator.next();
              localSpannableStringBuilder.append(localCoupon.getMessage() + "：");
              String str1 = String.valueOf(localCoupon.getBalance());
              int i = localSpannableStringBuilder.length();
              StringBuilder localStringBuilder = new StringBuilder(String.valueOf(str1)).append("元");
              if (localIterator.hasNext()) {}
              for (String str2 = "\n";; str2 = "")
              {
                localSpannableStringBuilder.append(str2);
                int j = i + str1.length();
                localSpannableStringBuilder.setSpan(new ForegroundColorSpan(ProductDetailInfoActivity.this.getResources().getColor(2131296296)), i, j, 33);
                break;
              }
            }
          });
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    localHttpSetting.setNotifyUser(true);
    this.httpGroupaAsynPool.add(localHttpSetting);
  }
  
  public View getNowBranchView()
  {
    return this.nowBranchView;
  }
  
  public HorizontalScrollView getScrollView()
  {
    return this.scrollView;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903256);
    this.httpGroupaAsynPool = getHttpGroupaAsynPool();
    initView();
    initData();
    ((TextView)findViewById(2131492990)).setText(this.product.getName());
    this.shareButton = ((Button)findViewById(2131494684));
    ProductShow.shareProduct(this.shareButton, this.product, getHttpGroupaAsynPool());
    showNameAndPrice();
    showPromotion();
    initTabComponents();
  }
  
  protected void onResume()
  {
    this.shareButton.setClickable(true);
    super.onResume();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.ProductDetailInfoActivity
 * JD-Core Version:    0.7.0.1
 */