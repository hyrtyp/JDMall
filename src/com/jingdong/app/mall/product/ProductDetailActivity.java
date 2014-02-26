package com.jingdong.app.mall.product;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.shopping.FillOrderActivity;
import com.jingdong.app.mall.shopping.PacksListActivity;
import com.jingdong.app.mall.shopping.ShoppingController;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ProductShow;
import com.jingdong.common.controller.ProductDetailController;
import com.jingdong.common.controller.ProductDetailController.ProductDetailListener;
import com.jingdong.common.entity.CommentCount;
import com.jingdong.common.entity.Image;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SkuColor;
import com.jingdong.common.entity.SkuSize;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.ui.HandlerRecycleBitmapDrawable;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.ImageLoadListener;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDetailActivity
  extends MyActivity
{
  private static final String TAG = "ProductDetailActivity";
  private Drawable background;
  private Button cartButton;
  private ImageButton collectButton;
  Bundle commentBundle = new Bundle();
  private LinearLayout commentCountLinear;
  private int currentIndex;
  private String defaultProvinceId;
  private Button easyButton;
  private Button freeReadButton;
  private LinearLayout freeReadLayout;
  private View freeReadLine;
  private HttpGroup httpGroup;
  private long id;
  private int imageCount;
  private TextView imageCountTextView;
  private TextView imageCurrentTextView;
  private boolean isAlreadyStatClick;
  private LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1, 1.0F);
  private ProductDetailController mProductDetailController;
  private ProductThridAddress mProductThridAddress;
  private SourceEntity mSource;
  private LinearLayout packsLinear;
  private View packsLinearNderline;
  private TextView priceReportButton;
  private TextView prodcutPromiseTextView;
  private TextView producNameAndAdWordView;
  private Product product = new Product();
  private LinearLayout productConsultationCount;
  private View productConsultationCountNderline;
  private TextView productConsultationCountTextView;
  private TextView productDeliverView;
  private RelativeLayout productDetailImageLayoutOld;
  private ViewPager productImageViewPager;
  private LinearLayout productInfoView;
  private TextView productJdPriceView;
  private TextView productMarketPriceView;
  private LinearLayout productOptionsColorView;
  private LinearLayout productOptionsPromiseView;
  private LinearLayout productOptionsSizeView;
  private RelativeLayout productOptionsView;
  private View productOptionsline;
  private LinearLayout productOrderCommentCount;
  private View productOrderCommentCountNderline;
  private TextView productOrderCommentCountTextView;
  private View productPromiseLineView;
  private TextView productPromotionView;
  private TextView productStockProvinceChoosed;
  private TextView productUserPriceView;
  private Button shareButton;
  private View stockLine;
  private ImageButton stockProvinceButton;
  private String stockProvinceName;
  private TextView stockResultText;
  private TextView titleView;
  
  public ProductDetailActivity()
  {
    this.layoutParams.setMargins(0, 2, 4, 2);
    this.mSource = new SourceEntity("unknown", null);
    this.defaultProvinceId = null;
    this.background = new Drawable()
    {
      public void draw(Canvas paramAnonymousCanvas)
      {
        Paint localPaint = new Paint();
        localPaint.setStyle(Paint.Style.STROKE);
        localPaint.setColor(855638016);
        localPaint.setStrokeWidth(2.0F);
        Rect localRect = paramAnonymousCanvas.getClipBounds();
        paramAnonymousCanvas.drawLine(localRect.left, localRect.bottom, localRect.right, localRect.bottom, localPaint);
      }
      
      public int getOpacity()
      {
        return 0;
      }
      
      public void setAlpha(int paramAnonymousInt) {}
      
      public void setColorFilter(ColorFilter paramAnonymousColorFilter) {}
    };
  }
  
  private String addString(String paramString)
  {
    String str = "";
    if (!TextUtils.isEmpty(paramString)) {
      str = ">" + paramString;
    }
    return str;
  }
  
  private void findViews()
  {
    this.packsLinearNderline = findViewById(2131494207);
    this.commentCountLinear = ((LinearLayout)findViewById(2131494208));
    this.productInfoView = ((LinearLayout)findViewById(2131494176));
    this.productUserPriceView = ((TextView)findViewById(2131494181));
    this.titleView = ((TextView)findViewById(2131492990));
    this.priceReportButton = ((TextView)findViewById(2131494182));
    this.stockLine = findViewById(2131494200);
    this.productImageViewPager = ((ViewPager)findViewById(2131494170));
    this.imageCountTextView = ((TextView)findViewById(2131494173));
    this.imageCurrentTextView = ((TextView)findViewById(2131494172));
    this.cartButton = ((Button)findViewById(2131494202));
    this.easyButton = ((Button)findViewById(2131494203));
    this.collectButton = ((ImageButton)findViewById(2131494204));
    this.shareButton = ((Button)findViewById(2131494278));
    this.productOrderCommentCount = ((LinearLayout)findViewById(2131494210));
    this.productOrderCommentCountNderline = findViewById(2131494212);
    this.productConsultationCount = ((LinearLayout)findViewById(2131494213));
    this.productConsultationCountNderline = findViewById(2131494215);
    this.packsLinear = ((LinearLayout)findViewById(2131494206));
    this.productOptionsView = ((RelativeLayout)findViewById(2131494185));
    this.productOptionsline = findViewById(2131494188);
    this.productOptionsColorView = ((LinearLayout)findViewById(2131494186));
    this.productOptionsSizeView = ((LinearLayout)findViewById(2131494187));
    this.productStockProvinceChoosed = ((TextView)findViewById(2131494191));
    this.stockProvinceButton = ((ImageButton)findViewById(2131494192));
    this.stockResultText = ((TextView)findViewById(2131494193));
    this.productDeliverView = ((TextView)findViewById(2131494178));
    this.producNameAndAdWordView = ((TextView)findViewById(2131494177));
    this.productJdPriceView = ((TextView)findViewById(2131494179));
    this.shareButton = ((Button)findViewById(2131494684));
    this.freeReadButton = ((Button)findViewById(2131494199));
    this.freeReadLayout = ((LinearLayout)findViewById(2131494198));
    this.freeReadLine = findViewById(2131494197);
    this.productPromotionView = ((TextView)findViewById(2131494183));
    this.productConsultationCountTextView = ((TextView)findViewById(2131494214));
    this.productOrderCommentCountTextView = ((TextView)findViewById(2131494211));
    this.productMarketPriceView = ((TextView)findViewById(2131494180));
    this.productDetailImageLayoutOld = ((RelativeLayout)findViewById(2131494171));
    this.productPromiseLineView = findViewById(2131494194);
    this.productOptionsPromiseView = ((LinearLayout)findViewById(2131494195));
    this.prodcutPromiseTextView = ((TextView)findViewById(2131494196));
  }
  
  private void initCartButton()
  {
    this.cartButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        com.jingdong.common.constant.Constants.bEasyBuy = false;
        com.jingdong.common.constant.Constants.bAddEasyBuy = false;
        com.jingdong.common.constant.Constants.bModifyEasyBuy = false;
        if ((ProductDetailActivity.this.mSource != null) && (ProductDetailActivity.this.product != null)) {
          ProductDetailActivity.this.product.setSourceEntity(ProductDetailActivity.this.mSource);
        }
        ShoppingController.addOneProduct(ProductDetailActivity.this, ProductDetailActivity.this.product, null);
      }
    });
    post(new Runnable()
    {
      public void run()
      {
        if (ProductDetailActivity.this.isCanBuy())
        {
          ProductDetailActivity.this.cartButton.setEnabled(true);
          return;
        }
        ProductDetailActivity.this.cartButton.setEnabled(false);
      }
    });
  }
  
  private void initCollectButton()
  {
    if ((LoginUserBase.hasLogin()) && (this.product.isFavorited())) {
      post(new Runnable()
      {
        public void run()
        {
          ProductDetailActivity.this.collectButton.setSelected(true);
        }
      });
    }
    for (;;)
    {
      this.collectButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          Runnable local1 = new Runnable()
          {
            public void run()
            {
              if ((!ProductDetailActivity.this.product.isFavorited()) && (ProductDetailActivity.this.product.getId() != null)) {
                ProductDetailActivity.this.mProductDetailController.addFavorite(ProductDetailActivity.this.product.getId().longValue(), new ProductDetailController.ProductDetailListener()
                {
                  public void onFinish(Product paramAnonymous3Product, int paramAnonymous3Int, boolean paramAnonymous3Boolean)
                  {
                    final String str = paramAnonymous3Product.getAddFavoriteMsg();
                    final boolean bool = paramAnonymous3Product.isFavorited();
                    if (!TextUtils.isEmpty(str)) {
                      ProductDetailActivity.this.post(new Runnable()
                      {
                        public void run()
                        {
                          Toast.makeText(ProductDetailActivity.this, str, 0).show();
                          if (bool) {
                            ProductDetailActivity.this.collectButton.setSelected(true);
                          }
                        }
                      });
                    }
                  }
                });
              }
            }
          };
          LoginUser.getInstance().executeLoginRunnable(ProductDetailActivity.this, local1, ProductDetailActivity.this.getString(2131165678), false);
        }
      });
      return;
      post(new Runnable()
      {
        public void run()
        {
          ProductDetailActivity.this.collectButton.setSelected(false);
        }
      });
    }
  }
  
  private void initFreeReadButton()
  {
    if ((this.product.getCanFreeRead().booleanValue()) && (!TextUtils.isEmpty(this.product.getFreeReadUrl())))
    {
      post(new Runnable()
      {
        public void run()
        {
          ProductDetailActivity.this.freeReadLayout.setVisibility(0);
          ProductDetailActivity.this.freeReadLine.setVisibility(0);
          ProductDetailActivity.this.freeReadButton.setVisibility(0);
        }
      });
      this.freeReadButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          Intent localIntent = new Intent(ProductDetailActivity.this, WebActivity.class);
          localIntent.putExtra("url", ProductDetailActivity.this.product.getFreeReadUrl());
          ProductDetailActivity.this.startActivity(localIntent);
        }
      });
      return;
    }
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.freeReadLayout.setVisibility(8);
        ProductDetailActivity.this.freeReadLine.setVisibility(8);
      }
    });
  }
  
  private boolean isCanBuy()
  {
    if (TextUtils.equals(this.product.getJdPrice(), MyApplication.getInstance().getString(2131165973))) {}
    Boolean localBoolean;
    do
    {
      return false;
      localBoolean = this.product.getProvinceStockFlag();
    } while ((localBoolean == null) || (!localBoolean.booleanValue()));
    return true;
  }
  
  private void loadProductPicture(final List<Image> paramList, final int paramInt, final View paramView)
  {
    final Image localImage = (Image)paramList.get(paramInt);
    final ImageView localImageView = (ImageView)paramView.findViewById(2131494283);
    final ProgressBar localProgressBar = (ProgressBar)paramView.findViewById(2131494284);
    localProgressBar.setVisibility(0);
    localImageView.setImageDrawable(new ExceptionDrawable(this, getResources().getString(2131165185)));
    final String str = localImage.getSmall();
    ImageUtil.setViewImage(this, localImageView, getHttpGroupaAsynPool(5000), str, new ImageUtil.ImageLoadListener()
    {
      public void onError(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest)
      {
        ProductDetailActivity.this.post(new Runnable()
        {
          public void run()
          {
            this.val$progressBar.setVisibility(8);
            this.val$imageView.setImageDrawable(new ExceptionDrawable(ProductDetailActivity.this, ProductDetailActivity.this.getResources().getString(2131166491)));
            this.val$imageView.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymous3View)
              {
                this.val$progressBar.setVisibility(0);
                ProductDetailActivity.this.loadProductPicture(this.val$imageList, this.val$position, this.val$itemView);
              }
            });
          }
        });
      }
      
      public void onProgress(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest) {}
      
      public void onSuccess(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, final Bitmap paramAnonymousBitmap)
      {
        ProductDetailActivity.this.post(new Runnable()
        {
          public void run()
          {
            this.val$progressBar.setVisibility(8);
            HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable = new HandlerRecycleBitmapDrawable(paramAnonymousBitmap, ProductDetailActivity.this);
            localHandlerRecycleBitmapDrawable.initLoad(this.val$imageView, ProductDetailActivity.this.getHttpGroupaAsynPool(5000), this.val$url);
            this.val$imageView.setImageDrawable(localHandlerRecycleBitmapDrawable);
            this.val$imageView.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymous3View)
              {
                String str = this.val$image.getBig();
                Bundle localBundle = new Bundle();
                localBundle.putInt("position", this.val$position);
                localBundle.putString("url", str);
                localBundle.putSerializable("product", ProductDetailActivity.this.product);
                Intent localIntent = new Intent(ProductDetailActivity.this, ImageActivity.class);
                localIntent.putExtras(localBundle);
                ProductDetailActivity.this.startActivity(localIntent);
              }
            });
          }
        });
      }
    });
  }
  
  private void removeAllLinearLayout(ViewGroup paramViewGroup)
  {
    for (int i = -1 + paramViewGroup.getChildCount();; i--)
    {
      if (i < 0) {
        return;
      }
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof LinearLayout)) {
        paramViewGroup.removeView(localView);
      }
    }
  }
  
  private void removeAllTextView(ViewGroup paramViewGroup)
  {
    for (int i = -1 + paramViewGroup.getChildCount();; i--)
    {
      if (i < 0) {
        return;
      }
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof TextView)) {
        paramViewGroup.removeView(localView);
      }
    }
  }
  
  private void setEvents()
  {
    this.priceReportButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(ProductDetailActivity.this, PriceReportActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putSerializable("product", ProductDetailActivity.this.product);
        localIntent.putExtras(localBundle);
        ProductDetailActivity.this.startActivityInFrame(localIntent);
      }
    });
  }
  
  private void showCommentCountRunnable(boolean paramBoolean)
  {
    this.commentCountLinear.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProductDetailActivity.this.commentCountLinear.setPressed(false);
        Intent localIntent = new Intent(ProductDetailActivity.this, CommentListActivity.class);
        ProductDetailActivity.this.commentBundle.putSerializable("product", ProductDetailActivity.this.product);
        localIntent.putExtras(ProductDetailActivity.this.commentBundle);
        ProductDetailActivity.this.startActivity(localIntent);
      }
    });
    if (!paramBoolean)
    {
      removeAllTextView(this.commentCountLinear);
      TextView localTextView3 = new TextView(this);
      localTextView3.setText(2131165686);
      this.commentCountLinear.addView(localTextView3, 0, new LinearLayout.LayoutParams(-2, -2, 1.0F));
      this.commentCountLinear.setClickable(false);
    }
    for (;;)
    {
      return;
      ArrayList localArrayList = this.product.getCommentCountList();
      if ((localArrayList == null) || (localArrayList.size() == 0))
      {
        removeAllTextView(this.commentCountLinear);
        TextView localTextView1 = new TextView(this);
        localTextView1.setText(2131165683);
        this.commentCountLinear.addView(localTextView1, 0, new LinearLayout.LayoutParams(-2, -2, 1.0F));
        this.commentCountLinear.setClickable(false);
        return;
      }
      removeAllTextView(this.commentCountLinear);
      for (int i = 0; i < localArrayList.size(); i++)
      {
        this.commentBundle.putString("message" + i, ((CommentCount)localArrayList.get(i)).getName());
        this.commentBundle.putString("scoreCount" + i, ((CommentCount)localArrayList.get(i)).getScoreCount().toString());
        TextView localTextView2 = new TextView(this);
        localTextView2.setText(((CommentCount)localArrayList.get(i)).getName());
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("（" + ((CommentCount)localArrayList.get(i)).getScoreCount() + "）");
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(getResources().getColor(2131296296)), 0, localSpannableStringBuilder.length(), 33);
        localTextView2.append(localSpannableStringBuilder);
        this.commentCountLinear.addView(localTextView2, i, new LinearLayout.LayoutParams(-2, -2, 1.0F));
      }
    }
  }
  
  private void showConsultationCountRunnable(boolean paramBoolean)
  {
    this.productConsultationCount.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProductDetailActivity.this.productConsultationCount.setPressed(false);
        Intent localIntent = new Intent(ProductDetailActivity.this, BuyAskListActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putLong("id", ProductDetailActivity.this.product.getShowId().longValue());
        localBundle.putString("name", ProductDetailActivity.this.product.getName());
        localIntent.putExtras(localBundle);
        ProductDetailActivity.this.startActivity(localIntent);
      }
    });
    if (!paramBoolean)
    {
      this.productConsultationCountTextView.setText(getText(2131165690));
      return;
    }
    String str = this.product.getConsultationCount();
    if ((!this.product.getCanConsultFlag().booleanValue()) || (TextUtils.isEmpty(str)) || (this.product.getShowId() == null))
    {
      this.productConsultationCount.setVisibility(4);
      this.productConsultationCountNderline.setVisibility(4);
      return;
    }
    this.productConsultationCount.setVisibility(0);
    this.productConsultationCountNderline.setVisibility(0);
    this.productConsultationCountTextView.setText(getResources().getText(2131165676));
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("（" + str + "）");
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(getResources().getColor(2131296296)), 0, localSpannableStringBuilder.length(), 33);
    this.productConsultationCountTextView.append(localSpannableStringBuilder);
  }
  
  private void showDirectStockRunnableMethod(boolean paramBoolean)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.productJdPriceView.setText(ProductDetailActivity.this.product.getJdPrice());
        String str1 = ProductDetailActivity.this.product.getProvinceStockContent();
        if (TextUtils.isEmpty(str1)) {
          str1 = ProductDetailActivity.this.getResources().getString(2131166488);
        }
        String str2 = ProductDetailActivity.this.product.getProvinceName() + ProductDetailActivity.this.addString(ProductDetailActivity.this.product.getCityName()) + ProductDetailActivity.this.addString(ProductDetailActivity.this.product.getCountyName()) + ProductDetailActivity.this.addString(ProductDetailActivity.this.product.getTownName());
        ProductDetailActivity localProductDetailActivity = ProductDetailActivity.this;
        StringBuilder localStringBuilder = new StringBuilder(String.valueOf(str2)).append("\r\n");
        if (str1 != null) {}
        for (;;)
        {
          localProductDetailActivity.stockProvinceName = str1;
          ProductDetailActivity.this.productStockProvinceChoosed.setText(str2);
          return;
          str1 = "";
        }
      }
    });
  }
  
  private void showOptionsRunnable()
  {
    ArrayList localArrayList1 = this.product.getSkuColorList();
    ArrayList localArrayList2;
    if ((localArrayList1 == null) || (localArrayList1.size() < 1))
    {
      this.productOptionsColorView.setVisibility(8);
      if ((this.productOptionsColorView.getVisibility() == 8) && (this.productOptionsSizeView.getVisibility() == 8))
      {
        this.productOptionsView.setVisibility(8);
        this.productOptionsline.setVisibility(8);
      }
      localArrayList2 = this.product.getSkuSizeList();
      if ((localArrayList2 == null) || (localArrayList2.size() < 1))
      {
        this.productOptionsSizeView.setVisibility(8);
        if ((this.productOptionsColorView.getVisibility() == 8) && (this.productOptionsSizeView.getVisibility() == 8))
        {
          this.productOptionsView.setVisibility(8);
          this.productOptionsline.setVisibility(8);
        }
        if ((this.productOptionsColorView.getVisibility() == 8) && (this.productOptionsSizeView.getVisibility() == 8))
        {
          this.productOptionsView.setVisibility(8);
          this.productOptionsline.setVisibility(8);
        }
      }
    }
    else
    {
      this.productOptionsColorView.setVisibility(0);
      this.productOptionsView.setVisibility(0);
      this.productOptionsline.setVisibility(0);
      removeAllLinearLayout(this.productOptionsColorView);
      LinearLayout localLinearLayout3 = new LinearLayout(this);
      localLinearLayout3.setOrientation(1);
      this.productOptionsColorView.addView(localLinearLayout3, new LinearLayout.LayoutParams(-1, -2));
      LinearLayout localLinearLayout4 = null;
      int k = 0;
      label258:
      Button localButton2;
      if (k < localArrayList1.size())
      {
        localButton2 = new Button(this);
        localButton2.setText(((SkuColor)localArrayList1.get(k)).getColorName());
        localButton2.setGravity(17);
        if (((SkuColor)localArrayList1.get(k)).getWareId().longValue() != this.id) {
          break label455;
        }
        localButton2.setBackgroundResource(2130837741);
        localButton2.setTextColor(getResources().getColor(2131296298));
      }
      for (;;)
      {
        localButton2.setOnClickListener(new OptionsOnClickListener(((SkuColor)localArrayList1.get(k)).getWareId().longValue()));
        int m = (k + 1) % 3;
        if (m == 1)
        {
          localLinearLayout4 = new LinearLayout(this);
          localLinearLayout4.setOrientation(0);
        }
        localLinearLayout4.addView(localButton2, this.layoutParams);
        if ((m == 0) || (k == -1 + localArrayList1.size())) {
          localLinearLayout3.addView(localLinearLayout4, new LinearLayout.LayoutParams(-1, -2));
        }
        k++;
        break label258;
        break;
        label455:
        localButton2.setBackgroundResource(2130837742);
        localButton2.setTextColor(getResources().getColor(2131296299));
      }
    }
    this.productOptionsSizeView.setVisibility(0);
    this.productOptionsView.setVisibility(0);
    this.productOptionsline.setVisibility(0);
    removeAllLinearLayout(this.productOptionsSizeView);
    LinearLayout localLinearLayout1 = new LinearLayout(this);
    localLinearLayout1.setOrientation(1);
    this.productOptionsSizeView.addView(localLinearLayout1, new LinearLayout.LayoutParams(-1, -2));
    LinearLayout localLinearLayout2 = null;
    int i = 0;
    label551:
    Button localButton1;
    if (i < localArrayList2.size())
    {
      localButton1 = new Button(this);
      localButton1.setText(((SkuSize)localArrayList2.get(i)).getSizeName());
      localButton1.setGravity(17);
      if (((SkuSize)localArrayList2.get(i)).getWareId().longValue() != this.id) {
        break label747;
      }
      localButton1.setBackgroundResource(2130837741);
      localButton1.setTextColor(getResources().getColor(2131296298));
    }
    for (;;)
    {
      localButton1.setOnClickListener(new OptionsOnClickListener(((SkuSize)localArrayList2.get(i)).getWareId().longValue()));
      int j = (i + 1) % 3;
      if (j == 1)
      {
        localLinearLayout2 = new LinearLayout(this);
        localLinearLayout2.setOrientation(0);
      }
      localLinearLayout2.addView(localButton1, this.layoutParams);
      if ((j == 0) || (i == -1 + localArrayList2.size())) {
        localLinearLayout1.addView(localLinearLayout2, new LinearLayout.LayoutParams(-1, -2));
      }
      i++;
      break label551;
      break;
      label747:
      localButton1.setBackgroundResource(2130837742);
      localButton1.setTextColor(getResources().getColor(2131296299));
    }
  }
  
  private void showOrderCommentCountRunnable(boolean paramBoolean)
  {
    this.productOrderCommentCount.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Long localLong = ProductDetailActivity.this.product.getShowId();
        if (localLong == null) {
          return;
        }
        ProductDetailActivity.this.productOrderCommentCount.setPressed(false);
        Intent localIntent = new Intent(ProductDetailActivity.this, DiscussListActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putLong("id", localLong.longValue());
        localBundle.putString("name", ProductDetailActivity.this.product.getName());
        localIntent.putExtras(localBundle);
        ProductDetailActivity.this.startActivity(localIntent);
      }
    });
    if (!paramBoolean)
    {
      this.productOrderCommentCountTextView.setText(2131165688);
      return;
    }
    String str = this.product.getOrderCommentCount();
    this.productOrderCommentCount.setVisibility(0);
    this.productOrderCommentCountNderline.setVisibility(0);
    if ((TextUtils.isEmpty(str)) || (TextUtils.equals(str, "0")))
    {
      this.productOrderCommentCountTextView.setText(2131165684);
      this.productOrderCommentCount.setClickable(false);
      return;
    }
    this.productOrderCommentCountTextView.setText(getResources().getText(2131165700));
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("（" + str + "）");
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(getResources().getColor(2131296296)), 0, localSpannableStringBuilder.length(), 33);
    this.productOrderCommentCountTextView.append(localSpannableStringBuilder);
  }
  
  private void showProduct(long paramLong, boolean paramBoolean)
  {
    this.id = paramLong;
    String str = String.valueOf(paramLong);
    this.product.setSkuId(str);
    this.stockResultText.setText(getString(2131165732));
    showQuerying();
    this.mProductDetailController.queryProduct(paramLong, this.mSource, new ProductDetailController.ProductDetailListener()
    {
      public void onFinish(Product paramAnonymousProduct, int paramAnonymousInt, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousInt == 1)
        {
          ProductDetailActivity.this.statClick();
          ProductDetailActivity.this.showStockRunnable(false);
        }
        do
        {
          return;
          if (paramAnonymousInt == 2)
          {
            ProductDetailActivity.this.showProductForPromotion();
            return;
          }
          if (paramAnonymousInt == 9)
          {
            ProductDetailActivity.this.showProductForDeliver();
            return;
          }
          if (paramAnonymousInt == 3)
          {
            ProductDetailActivity.this.showProductForOptoins();
            return;
          }
          if (paramAnonymousInt == 4)
          {
            ProductDetailActivity.this.showProductForEasyBuy();
            return;
          }
          if (paramAnonymousInt == 5)
          {
            ProductDetailActivity.this.showProductForPacks();
            return;
          }
          if (paramAnonymousInt == 6)
          {
            ProductDetailActivity.this.showProductForCommentCount(paramAnonymousBoolean);
            return;
          }
          if (paramAnonymousInt == 7)
          {
            ProductDetailActivity.this.showProductForConsultationCount(paramAnonymousBoolean);
            return;
          }
        } while (paramAnonymousInt != 8);
        ProductDetailActivity.this.showProductForOrderCommentCount(paramAnonymousBoolean);
      }
    });
  }
  
  private void showProductForCommentCount(final boolean paramBoolean)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.showCommentCountRunnable(paramBoolean);
      }
    });
  }
  
  private void showProductForConsultationCount(final boolean paramBoolean)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.showConsultationCountRunnable(paramBoolean);
      }
    });
  }
  
  private void showProductForDeliver()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (!TextUtils.isEmpty(ProductDetailActivity.this.product.getDeliver()))
        {
          ProductDetailActivity.this.productDeliverView.setVisibility(0);
          ProductDetailActivity.this.productDeliverView.setText(ProductDetailActivity.this.product.getDeliver());
          return;
        }
        ProductDetailActivity.this.productDeliverView.setVisibility(8);
      }
    });
  }
  
  private void showProductForDetailStocks()
  {
    this.productInfoView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProductDetailActivity.this.productInfoView.setPressed(false);
        Intent localIntent = new Intent(ProductDetailActivity.this, ProductDetailInfoActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putSerializable("product", ProductDetailActivity.this.product);
        localIntent.putExtras(localBundle);
        ProductDetailActivity.this.startActivity(localIntent);
      }
    });
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.titleView.setText(ProductDetailActivity.this.product.getName());
        ProductDetailActivity.this.commentBundle.putString("name", ProductDetailActivity.this.product.getName());
        ProductShow.shareProduct(ProductDetailActivity.this.shareButton, ProductDetailActivity.this.product, ProductDetailActivity.this.getHttpGroupaAsynPool());
      }
    });
    final List localList = this.product.getImageList();
    if (localList != null)
    {
      this.imageCount = localList.size();
      post(new Runnable()
      {
        public void run()
        {
          ProductDetailActivity.this.productImageViewPager.setAdapter(new ProductDetailActivity.ProductDetailPagerAdapter(ProductDetailActivity.this, localList));
          ProductDetailActivity.this.productImageViewPager.setOnPageChangeListener(new ProductDetailActivity.ImageViewpageChangeListener(ProductDetailActivity.this));
          if (ProductDetailActivity.this.imageCount > 0)
          {
            ProductDetailActivity.this.productDetailImageLayoutOld.setVisibility(0);
            ProductDetailActivity.this.updateImageCount(ProductDetailActivity.this.imageCount);
            ProductDetailActivity.this.updateCurrentImage(0);
            return;
          }
          ProductDetailActivity.this.productDetailImageLayoutOld.setVisibility(8);
        }
      });
    }
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.producNameAndAdWordView.setText(this.val$productShow.getNameAndAdWord());
        ProductDetailActivity.this.productJdPriceView.setText(this.val$productShow.getJdPrice());
        ProductDetailActivity.this.productMarketPriceView.setText(this.val$productShow.getMarketPrice());
        RelativeLayout.LayoutParams localLayoutParams2;
        if (TextUtils.isEmpty(this.val$productShow.getMarketPrice()))
        {
          ProductDetailActivity.this.productMarketPriceView.setVisibility(8);
          if (ProductDetailActivity.this.product.getUserPriceLabel() != null)
          {
            localLayoutParams2 = new RelativeLayout.LayoutParams(ProductDetailActivity.this.productUserPriceView.getLayoutParams());
            if ((ProductDetailActivity.this.productMarketPriceView.getVisibility() != 0) || (!ProductDetailActivity.this.product.getPriceReport().booleanValue())) {
              break label312;
            }
            localLayoutParams2.addRule(3, 2131494180);
            localLayoutParams2.addRule(5, 2131494180);
          }
        }
        for (;;)
        {
          localLayoutParams2.setMargins(0, 0, 0, DPIUtil.dip2px(10.0F));
          ProductDetailActivity.this.productUserPriceView.setLayoutParams(localLayoutParams2);
          ProductDetailActivity.this.productUserPriceView.setVisibility(0);
          ProductDetailActivity.this.productUserPriceView.setText(this.val$productShow.getUserPrice());
          return;
          RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(ProductDetailActivity.this.productMarketPriceView.getLayoutParams());
          if (ProductDetailActivity.this.product.getPriceReport().booleanValue())
          {
            localLayoutParams1.addRule(3, 2131494179);
            localLayoutParams1.addRule(5, 2131494179);
            localLayoutParams1.setMargins(0, 0, 0, DPIUtil.dip2px(10.0F));
          }
          for (;;)
          {
            ProductDetailActivity.this.productMarketPriceView.setLayoutParams(localLayoutParams1);
            break;
            localLayoutParams1.addRule(1, 2131494179);
            localLayoutParams1.addRule(4, 2131494179);
            localLayoutParams1.setMargins(DPIUtil.dip2px(12.0F), 0, DPIUtil.dip2px(2.0F), DPIUtil.dip2px(10.0F));
          }
          label312:
          localLayoutParams2.addRule(3, 2131494179);
          localLayoutParams2.addRule(5, 2131494179);
        }
      }
    });
    initCollectButton();
    initCartButton();
    initFreeReadButton();
    post(new Runnable()
    {
      public void run()
      {
        if (ProductDetailActivity.this.product.getPriceReport().booleanValue())
        {
          RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, DPIUtil.dip2px(30.0F));
          ProductDetailActivity.this.priceReportButton.setPadding(0, 0, 0, DPIUtil.dip2px(2.0F));
          localLayoutParams.setMargins(DPIUtil.dip2px(12.0F), 0, DPIUtil.dip2px(2.0F), DPIUtil.dip2px(10.0F));
          localLayoutParams.addRule(1, 2131494179);
          localLayoutParams.addRule(11);
          localLayoutParams.addRule(4, 2131494179);
          localLayoutParams.addRule(3, 2131494178);
          ProductDetailActivity.this.priceReportButton.setLayoutParams(localLayoutParams);
          ProductDetailActivity.this.priceReportButton.setVisibility(0);
          return;
        }
        ProductDetailActivity.this.priceReportButton.setVisibility(8);
      }
    });
  }
  
  private void showProductForEasyBuy()
  {
    this.easyButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        com.jingdong.common.constant.Constants.bEasyBuy = false;
        com.jingdong.common.constant.Constants.bModifyEasyBuy = false;
        com.jingdong.common.constant.Constants.bAddEasyBuy = false;
        com.jingdong.common.constant.Constants.easyBuyProdId = ProductDetailActivity.this.id;
        Intent localIntent = new Intent(ProductDetailActivity.this, FillOrderActivity.class);
        localIntent.putExtra("isEasyBuy", true);
        localIntent.putExtra("easyBuySource", ProductDetailActivity.this.mSource);
        ProductDetailActivity.this.startActivity(localIntent);
      }
    });
    post(new Runnable()
    {
      public void run()
      {
        if (ProductDetailActivity.this.product.isCanEasyBuy())
        {
          ProductDetailActivity.this.easyButton.setEnabled(true);
          ProductDetailActivity.this.easyButton.setVisibility(0);
          if (ProductDetailActivity.this.isCanBuy())
          {
            ProductDetailActivity.this.easyButton.setEnabled(true);
            return;
          }
          ProductDetailActivity.this.easyButton.setEnabled(false);
          return;
        }
        ProductDetailActivity.this.easyButton.setEnabled(false);
        ProductDetailActivity.this.easyButton.setVisibility(4);
      }
    });
  }
  
  private void showProductForOptoins()
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.showOptionsRunnable();
      }
    });
  }
  
  private void showProductForOrderCommentCount(final boolean paramBoolean)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.showOrderCommentCountRunnable(paramBoolean);
      }
    });
  }
  
  private void showProductForPromotion()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (!TextUtils.isEmpty(this.val$productShow.getPromotionTitleAndInfo()))
        {
          RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(ProductDetailActivity.this.productPromotionView.getLayoutParams());
          localLayoutParams.addRule(9);
          if (ProductDetailActivity.this.productUserPriceView.getVisibility() == 0) {
            localLayoutParams.addRule(3, 2131494181);
          }
          for (;;)
          {
            ProductDetailActivity.this.productPromotionView.setLayoutParams(localLayoutParams);
            ProductDetailActivity.this.productPromotionView.setVisibility(0);
            ProductDetailActivity.this.productPromotionView.setText(this.val$productShow.getPromotionTitleAndInfo());
            return;
            if ((ProductDetailActivity.this.productMarketPriceView.getVisibility() == 0) && (ProductDetailActivity.this.priceReportButton.getVisibility() == 0)) {
              localLayoutParams.addRule(3, 2131494180);
            } else {
              localLayoutParams.addRule(3, 2131494179);
            }
          }
        }
        ProductDetailActivity.this.productPromotionView.setVisibility(8);
      }
    });
  }
  
  private void showQuerying()
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.productPromotionView.setVisibility(8);
        ProductDetailActivity.this.productDeliverView.setVisibility(8);
        ProductDetailActivity.this.productOptionsView.setVisibility(8);
        ProductDetailActivity.this.productOptionsline.setVisibility(8);
        ProductDetailActivity.this.easyButton.setVisibility(4);
        ProductDetailActivity.this.packsLinear.setVisibility(8);
        ProductDetailActivity.this.packsLinearNderline.setVisibility(8);
        ProductDetailActivity.this.removeAllTextView(ProductDetailActivity.this.commentCountLinear);
        TextView localTextView = new TextView(ProductDetailActivity.this);
        localTextView.setText(2131165685);
        ProductDetailActivity.this.commentCountLinear.addView(localTextView, 0, new LinearLayout.LayoutParams(-2, -2, 1.0F));
        ProductDetailActivity.this.commentCountLinear.setClickable(false);
        ProductDetailActivity.this.productConsultationCountTextView.setText(ProductDetailActivity.this.getText(2131165689));
        ProductDetailActivity.this.productOrderCommentCountTextView.setText(2131165687);
      }
    });
  }
  
  private void showStockRunnable(final boolean paramBoolean)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.showDirectStockRunnableMethod(paramBoolean);
      }
    });
  }
  
  private void statClick()
  {
    if (!this.isAlreadyStatClick)
    {
      this.isAlreadyStatClick = true;
      this.mProductDetailController.statClick(this.id);
    }
  }
  
  private void updateCurrentImage(int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.imageCurrentTextView.setText(this.val$current);
      }
    });
  }
  
  private void updateImageCount(int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.imageCountTextView.setText(this.val$count);
      }
    });
  }
  
  private void updatePromise(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      this.productPromiseLineView.setVisibility(0);
      this.productOptionsPromiseView.setVisibility(0);
      this.prodcutPromiseTextView.setText(paramString);
    }
  }
  
  public void canClickEasyBuyBtn()
  {
    this.easyButton.setClickable(true);
  }
  
  public Map<String, String> getParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("productId", String.valueOf(this.id));
    return localHashMap;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903252);
    this.httpGroup = getHttpGroupaAsynPool();
    Bundle localBundle = getIntent().getExtras();
    findViews();
    setEvents();
    this.mProductDetailController = new ProductDetailController(this.httpGroup);
    this.product = this.mProductDetailController.getProduct();
    try
    {
      String str2 = localBundle.getString("id");
      str1 = str2;
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        long l1;
        String str1 = null;
      }
    }
    l1 = 0L;
    try
    {
      long l3 = localBundle.getLong("id");
      l1 = l3;
    }
    catch (Exception localException2)
    {
      label91:
      label117:
      break label91;
    }
    if ((l1 == 0L) && (str1 != null)) {}
    try
    {
      long l2 = Long.valueOf(str1).longValue();
      l1 = l2;
    }
    catch (Exception localException3)
    {
      SourceEntity localSourceEntity;
      break label117;
    }
    localSourceEntity = (SourceEntity)localBundle.get("source");
    if (localSourceEntity != null) {
      this.mSource = localSourceEntity;
    }
    this.product.setSkuId(String.valueOf(l1));
    this.defaultProvinceId = CommonUtil.getProvinceIDFromSharedPreferences();
    this.mProductThridAddress = new ProductThridAddress(this, this.mProductDetailController, this.product, this.productStockProvinceChoosed);
    showProduct(l1, true);
    this.mProductThridAddress.handleThirdAddress(new ProductThridAddress.ProductDetailUpdataUIListener()
    {
      public void onFinish(int paramAnonymousInt, long paramAnonymousLong)
      {
        if (22 == paramAnonymousInt) {
          ProductDetailActivity.this.showProduct(paramAnonymousLong, false);
        }
        while (21 != paramAnonymousInt) {
          return;
        }
        ProductDetailActivity.this.showDirectStockRunnableMethod(false);
        ProductDetailActivity.this.updatePromise(ProductDetailActivity.this.product.getProvinceStockContent());
        ProductDetailActivity.this.initCartButton();
        ProductDetailActivity.this.showProductForEasyBuy();
      }
    });
  }
  
  protected void onResume()
  {
    this.shareButton.setClickable(true);
    super.onResume();
    if (this.product != null)
    {
      initCollectButton();
      if (!this.product.isCanEasyBuy()) {
        this.mProductDetailController.queryCanEasybuy(new ProductDetailController.ProductDetailListener()
        {
          public void onFinish(Product paramAnonymousProduct, int paramAnonymousInt, boolean paramAnonymousBoolean)
          {
            if (paramAnonymousInt == 4) {
              ProductDetailActivity.this.showProductForEasyBuy();
            }
          }
        });
      }
    }
  }
  
  public void showProductForPacks()
  {
    if (this.product.isHasPacks())
    {
      post(new Runnable()
      {
        public void run()
        {
          ProductDetailActivity.this.packsLinear.setVisibility(0);
          ProductDetailActivity.this.packsLinearNderline.setVisibility(0);
        }
      });
      this.packsLinear.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          com.jingdong.common.constant.Constants.packMainProdId = ProductDetailActivity.this.id;
          Intent localIntent = new Intent(ProductDetailActivity.this, PacksListActivity.class);
          localIntent.putExtra("source", ProductDetailActivity.this.mSource);
          ProductDetailActivity.this.startActivity(localIntent);
        }
      });
      return;
    }
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailActivity.this.packsLinear.setVisibility(8);
        ProductDetailActivity.this.packsLinearNderline.setVisibility(8);
      }
    });
  }
  
  public class ImageViewpageChangeListener
    implements ViewPager.OnPageChangeListener
  {
    boolean isFirst = true;
    View oldView = null;
    
    public ImageViewpageChangeListener() {}
    
    private void setCurIdentification(int paramInt)
    {
      if ((paramInt < 0) || (paramInt > ProductDetailActivity.this.imageCount) || (ProductDetailActivity.this.currentIndex == paramInt)) {
        return;
      }
      ProductDetailActivity.this.updateCurrentImage(paramInt);
      ProductDetailActivity.this.currentIndex = paramInt;
    }
    
    public void onPageScrollStateChanged(int paramInt) {}
    
    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
    
    public void onPageSelected(int paramInt)
    {
      setCurIdentification(paramInt);
    }
  }
  
  private class OptionsOnClickListener
    implements View.OnClickListener
  {
    private long id;
    
    public OptionsOnClickListener(long paramLong)
    {
      this.id = paramLong;
    }
    
    public void onClick(View paramView)
    {
      ProductDetailActivity.this.showProduct(this.id, false);
    }
  }
  
  public class ProductDetailPagerAdapter
    extends PagerAdapter
  {
    private List<Image> imageList;
    private View[] viewArray;
    
    public ProductDetailPagerAdapter()
    {
      Object localObject;
      this.imageList = localObject;
      this.viewArray = new View[localObject.size()];
    }
    
    public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {}
    
    public int getCount()
    {
      return this.viewArray.length;
    }
    
    public int getItemPosition(Object paramObject)
    {
      return -2;
    }
    
    public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
    {
      View localView;
      label73:
      try
      {
        localView = this.viewArray[paramInt];
        if (localView != null) {}
      }
      finally {}
      try
      {
        localView = ImageUtil.inflate(2130903255, null);
        if ((this.imageList != null) && (this.imageList.size() > 0)) {
          ProductDetailActivity.this.loadProductPicture(this.imageList, paramInt, localView);
        }
        this.viewArray[paramInt] = localView;
        ((ViewPager)paramViewGroup).addView(localView);
      }
      catch (Exception localException)
      {
        break label73;
      }
      return localView;
    }
    
    public boolean isViewFromObject(View paramView, Object paramObject)
    {
      return paramView == paramObject;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.ProductDetailActivity
 * JD-Core Version:    0.7.0.1
 */