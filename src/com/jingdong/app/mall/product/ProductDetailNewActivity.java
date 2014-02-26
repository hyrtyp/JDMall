package com.jingdong.app.mall.product;

import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.plug.PlugManager;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugClassLoader;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugResources;
import com.jingdong.app.mall.plug.framework.plug.PlugItem;
import com.jingdong.app.mall.plug.framework.plug.local.LocalPlugsTools;
import com.jingdong.app.mall.plug.framework.plug.open.IPFragmentplug;
import com.jingdong.app.mall.shopping.FillOrderActivity;
import com.jingdong.app.mall.shopping.PacksListActivity;
import com.jingdong.app.mall.shopping.ShoppingController;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ProductShow;
import com.jingdong.common.controller.ProductDetailController;
import com.jingdong.common.controller.ProductDetailController.ProductDetailListener;
import com.jingdong.common.entity.Image;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.ProductDetailBasicInfo;
import com.jingdong.common.entity.ProductDetailCruxBasicInfo;
import com.jingdong.common.entity.ProductDetailPrice;
import com.jingdong.common.entity.ProductDetailSkuColor;
import com.jingdong.common.entity.ProductDetailSkuSize;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.plug.MergeSwitcher;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.ui.HandlerRecycleBitmapDrawable;
import com.jingdong.common.utils.DBHelperUtil;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.ImageLoadListener;
import com.jingdong.common.utils.ToastUtils;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDetailNewActivity
  extends MyActivity
{
  private static final String PACKAGE_NAME = "com.jd.plug.productdetailplug";
  private static final String TAG = "ProductDetailNewActivity";
  public static boolean hasCacelFavorite = false;
  private int PRODUCT_NAME_COUNT;
  private int PRODUCT_SHOPPING_CAR_COUNT;
  private AssetManager assetManager;
  private Drawable background;
  private Button cartButton;
  private PlugClassLoader classLoader;
  private ImageButton collectButton;
  Bundle commentBundle = new Bundle();
  private int currentIndex;
  private DBHelperUtil dbService;
  private Button easyButton;
  private String fragmentName;
  private LinearLayout freeReadLayout;
  private LinearLayout freeReadLayoutAll;
  private Button goShoppingCarButton;
  private HttpGroup httpGroup;
  private long id;
  private int imageCount;
  private TextView imageCountTextView;
  private TextView imageCurrentTextView;
  IPFragmentplug iplug;
  private boolean isAlreadyStatClick;
  private boolean isDeliverShowed = false;
  private boolean isStrecth;
  private boolean isXJZShowed = false;
  private LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
  private boolean loaded;
  private ProductDetailController mProductDetailController;
  private ProductThridAddress mProductThridAddress;
  private SourceEntity mSource;
  private PlugResources myResources;
  private LinearLayout packsLinear;
  private LinearLayout packsLinearLayout;
  private TextView prodcutPromiseTextView;
  private TextView producNameAndAdWordView;
  private Product product = new Product();
  private LinearLayout productBottomLayout;
  private String productColor;
  private RelativeLayout productColorAndSizeView;
  private TextView productColorContentTextView;
  private View productColorLineView;
  private TextView productColorTextView;
  private TextView productCommentCount;
  private ImageView productCommentIndexImageView;
  private LinearLayout productConsultationCount;
  private TextView productConsultationCountTextView;
  private ImageView productDeliverImageView;
  private TextView productDeliverView;
  private ProductDetailBasicInfo productDetailBasicInfo = new ProductDetailBasicInfo();
  private LinearLayout productDetailCollectLayout;
  private ProductDetailCruxBasicInfo productDetailCruxBasicInfo;
  private RelativeLayout productDetailDeliverLayout;
  private RelativeLayout productDetailEvaluateLayout;
  private RelativeLayout productDetailImageLayout;
  private RelativeLayout productDetailInformationLayout;
  private ProductDetailPrice productDetailMprice;
  private RelativeLayout productDetailPromotionLayout;
  private LinearLayout productDetailShareLayout;
  private ArrayList<ProductDetailSkuColor> productDetailSkuColor;
  private ArrayList<ProductDetailSkuSize> productDetailSkuSize;
  private RelativeLayout productDetailTitleInformationLayout;
  private ViewPager productImageViewPager;
  private ImageView productJDDeliverImageView;
  private TextView productJdPriceView;
  private TextView productMarketPriceView;
  private View productNameViewLine;
  private LinearLayout productOptionsColorView;
  private LinearLayout productOptionsPromiseView;
  private LinearLayout productOptionsSizeView;
  private RelativeLayout productOptionsView;
  private LinearLayout productOrderCommentCount;
  private TextView productOrderCommentCountTextView;
  private ImageView productPhoeJiangIcon;
  private ImageView productPhoeVipIcon;
  private ImageView productPhoeZengIcon;
  private View productPromiseLineView;
  private TextView productPromotionView;
  private RatingBar productScoreRb;
  private String productSize;
  private TextView productSizeContentTextView;
  private View productSizeLineView;
  private TextView productSizeTextView;
  private TextView productStockContentTextView;
  private TextView productStockProvinceChoosed;
  private TextView productStockTextView;
  private LinearLayout productXJZIconLayout;
  private Resources resources;
  private FrameLayout rootView;
  private Button shareButton;
  private TextView shoppingCarIconTextView;
  private String stockProvinceName;
  private ImageButton stretchButton;
  private Resources.Theme theme;
  private TextView titleView;
  
  public ProductDetailNewActivity()
  {
    this.layoutParams.setMargins(0, 8, 18, 8);
    this.mSource = new SourceEntity("unknown", null);
    this.PRODUCT_NAME_COUNT = 20;
    this.PRODUCT_SHOPPING_CAR_COUNT = 99;
    this.iplug = null;
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
  
  private void destroyData()
  {
    this.productColor = null;
    this.productSize = null;
    this.stockProvinceName = null;
  }
  
  private void findViews()
  {
    this.titleView = ((TextView)findViewById(2131492990));
    this.productImageViewPager = ((ViewPager)findViewById(2131494170));
    this.imageCountTextView = ((TextView)findViewById(2131494173));
    this.imageCurrentTextView = ((TextView)findViewById(2131494172));
    this.stretchButton = ((ImageButton)findViewById(2131494235));
    this.productColorContentTextView = ((TextView)findViewById(2131494230));
    this.productSizeContentTextView = ((TextView)findViewById(2131494232));
    this.productColorTextView = ((TextView)findViewById(2131494229));
    this.productSizeTextView = ((TextView)findViewById(2131494231));
    this.productStockTextView = ((TextView)findViewById(2131494233));
    this.productStockContentTextView = ((TextView)findViewById(2131494234));
    this.productBottomLayout = ((LinearLayout)findViewById(2131494276));
    this.productColorAndSizeView = ((RelativeLayout)findViewById(2131494227));
    this.cartButton = ((Button)findViewById(2131494281));
    this.easyButton = ((Button)findViewById(2131494282));
    this.collectButton = ((ImageButton)findViewById(2131494280));
    this.shareButton = ((Button)findViewById(2131494278));
    this.productOrderCommentCount = ((LinearLayout)findViewById(2131494270));
    this.productConsultationCount = ((LinearLayout)findViewById(2131494273));
    this.packsLinear = ((LinearLayout)findViewById(2131494263));
    this.packsLinearLayout = ((LinearLayout)findViewById(2131494262));
    this.productOptionsView = ((RelativeLayout)findViewById(2131494236));
    this.productOptionsColorView = ((LinearLayout)findViewById(2131494238));
    this.productOptionsSizeView = ((LinearLayout)findViewById(2131494240));
    this.productOptionsPromiseView = ((LinearLayout)findViewById(2131494195));
    this.productStockProvinceChoosed = ((TextView)findViewById(2131494244));
    this.productDeliverView = ((TextView)findViewById(2131494257));
    this.producNameAndAdWordView = ((TextView)findViewById(2131494253));
    this.productJdPriceView = ((TextView)findViewById(2131494218));
    this.productJDDeliverImageView = ((ImageView)findViewById(2131494223));
    this.shareButton = ((Button)findViewById(2131494278));
    this.goShoppingCarButton = ((Button)findViewById(2131494685));
    this.goShoppingCarButton.setBackgroundResource(2130838087);
    this.goShoppingCarButton.setVisibility(0);
    this.productBottomLayout.setVisibility(0);
    this.freeReadLayout = ((LinearLayout)findViewById(2131494261));
    this.freeReadLayoutAll = ((LinearLayout)findViewById(2131494260));
    this.productScoreRb = ((RatingBar)findViewById(2131493240));
    this.productCommentCount = ((TextView)findViewById(2131493241));
    this.productConsultationCountTextView = ((TextView)findViewById(2131494275));
    this.productOrderCommentCountTextView = ((TextView)findViewById(2131494272));
    this.productNameViewLine = findViewById(2131494254);
    this.productColorLineView = findViewById(2131494237);
    this.productSizeLineView = findViewById(2131494239);
    this.productPromiseLineView = findViewById(2131494194);
    this.productDeliverImageView = ((ImageView)findViewById(2131494256));
    this.productPromotionView = ((TextView)findViewById(2131494259));
    this.productMarketPriceView = ((TextView)findViewById(2131494224));
    this.productDetailEvaluateLayout = ((RelativeLayout)findViewById(2131494266));
    this.productDetailPromotionLayout = ((RelativeLayout)findViewById(2131494258));
    this.productDetailInformationLayout = ((RelativeLayout)findViewById(2131494247));
    this.productCommentIndexImageView = ((ImageView)findViewById(2131494267));
    this.productDetailDeliverLayout = ((RelativeLayout)findViewById(2131494255));
    this.productDetailTitleInformationLayout = ((RelativeLayout)findViewById(2131494248));
    this.productDetailShareLayout = ((LinearLayout)findViewById(2131494277));
    this.productDetailCollectLayout = ((LinearLayout)findViewById(2131494279));
    this.shoppingCarIconTextView = ((TextView)findViewById(2131494687));
    this.productDetailImageLayout = ((RelativeLayout)findViewById(2131494216));
    this.prodcutPromiseTextView = ((TextView)findViewById(2131494196));
    this.productPhoeVipIcon = ((ImageView)findViewById(2131494220));
    this.productPhoeJiangIcon = ((ImageView)findViewById(2131494221));
    this.productPhoeZengIcon = ((ImageView)findViewById(2131494222));
    this.productXJZIconLayout = ((LinearLayout)findViewById(2131494219));
  }
  
  private void goShoppingCar()
  {
    this.goShoppingCarButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        CommonUtil.getInstance().goToShoppingCartPage(ProductDetailNewActivity.this, true);
      }
    });
  }
  
  private void handleFoldAndUnfold()
  {
    View.OnClickListener local4 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (ProductDetailNewActivity.this.isStrecth)
        {
          ProductDetailNewActivity.this.productOptionsView.setVisibility(8);
          ProductDetailNewActivity.this.stretchButton.setBackgroundResource(2130838097);
          ProductDetailNewActivity.this.isStrecth = false;
          return;
        }
        ProductDetailNewActivity.this.productOptionsView.setVisibility(0);
        ProductDetailNewActivity.this.stretchButton.setBackgroundResource(2130838098);
        ProductDetailNewActivity.this.isStrecth = true;
      }
    };
    this.productColorAndSizeView.setOnClickListener(local4);
    this.stretchButton.setOnClickListener(local4);
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
        if ((ProductDetailNewActivity.this.mSource != null) && (ProductDetailNewActivity.this.product != null)) {
          ProductDetailNewActivity.this.product.setSourceEntity(ProductDetailNewActivity.this.mSource);
        }
        ShoppingController.addOneProduct(ProductDetailNewActivity.this, ProductDetailNewActivity.this.product, new Runnable()
        {
          public void run()
          {
            ProductDetailNewActivity.this.initShopingCar();
          }
        });
      }
    });
    post(new Runnable()
    {
      public void run()
      {
        if (ProductDetailNewActivity.this.isCanBuy())
        {
          ProductDetailNewActivity.this.cartButton.setEnabled(true);
          return;
        }
        ProductDetailNewActivity.this.cartButton.setEnabled(false);
      }
    });
  }
  
  private void initCollectButton()
  {
    if ((LoginUser.hasLogin()) && (this.product.isFavorited())) {
      post(new Runnable()
      {
        public void run()
        {
          ProductDetailNewActivity.this.collectButton.setSelected(true);
        }
      });
    }
    for (;;)
    {
      this.productDetailCollectLayout.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ProductDetailNewActivity.this.collectButton.performClick();
        }
      });
      this.collectButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ProductDetailNewActivity.hasCacelFavorite = false;
          Runnable local1 = new Runnable()
          {
            public void run()
            {
              if (ProductDetailNewActivity.this.product.getId() != null)
              {
                if (!ProductDetailNewActivity.this.product.isFavorited()) {
                  ProductDetailNewActivity.this.mProductDetailController.addFavorite(ProductDetailNewActivity.this.product.getId().longValue(), new ProductDetailController.ProductDetailListener()
                  {
                    public void onFinish(Product paramAnonymous3Product, int paramAnonymous3Int, boolean paramAnonymous3Boolean)
                    {
                      final String str = paramAnonymous3Product.getAddFavoriteMsg();
                      final boolean bool = paramAnonymous3Product.isFavorited();
                      if (!TextUtils.isEmpty(str)) {
                        ProductDetailNewActivity.this.post(new Runnable()
                        {
                          public void run()
                          {
                            ToastUtils.showToast(ProductDetailNewActivity.this, str);
                            if (bool) {
                              ProductDetailNewActivity.this.collectButton.setSelected(true);
                            }
                          }
                        });
                      }
                    }
                  });
                }
              }
              else {
                return;
              }
              ProductDetailNewActivity.this.mProductDetailController.cancelFavorite(ProductDetailNewActivity.this.product.getId().longValue(), new ProductDetailController.ProductDetailListener()
              {
                public void onFinish(Product paramAnonymous3Product, int paramAnonymous3Int, boolean paramAnonymous3Boolean)
                {
                  final String str = paramAnonymous3Product.getAddFavoriteMsg();
                  final boolean bool = paramAnonymous3Product.isFavorited();
                  if (!TextUtils.isEmpty(str)) {
                    ProductDetailNewActivity.this.post(new Runnable()
                    {
                      public void run()
                      {
                        ToastUtils.showToast(ProductDetailNewActivity.this, str);
                        if (!bool)
                        {
                          ProductDetailNewActivity.this.collectButton.setSelected(false);
                          if ((ProductDetailNewActivity.this.mSource != null) && (("homeFavoriteList".equals(ProductDetailNewActivity.this.mSource.getSourceType())) || ("favoriteList".equals(ProductDetailNewActivity.this.mSource.getSourceType())))) {
                            ProductDetailNewActivity.hasCacelFavorite = true;
                          }
                        }
                      }
                    });
                  }
                }
              });
            }
          };
          LoginUser.getInstance().executeLoginRunnable(ProductDetailNewActivity.this, local1, ProductDetailNewActivity.this.getString(2131165678), false);
        }
      });
      return;
      post(new Runnable()
      {
        public void run()
        {
          ProductDetailNewActivity.this.collectButton.setSelected(false);
        }
      });
    }
  }
  
  private void initData()
  {
    this.productDetailBasicInfo = this.product.getProductDetailBasicInfo();
    this.productDetailSkuColor = this.product.getProductDetailSkuColor();
    this.productDetailSkuSize = this.product.getProductDetailSkuSize();
    this.productDetailCruxBasicInfo = this.product.getProductDetailCruxBasicInfo();
    this.productDetailMprice = this.product.getProductDetailMprice();
    this.product.setName(this.productDetailBasicInfo.getName());
  }
  
  private void initFreeReadButton()
  {
    if ((this.productDetailCruxBasicInfo.isRead().booleanValue()) && (!TextUtils.isEmpty(this.productDetailCruxBasicInfo.getReadUrl())))
    {
      post(new Runnable()
      {
        public void run()
        {
          ProductDetailNewActivity.this.freeReadLayoutAll.setVisibility(0);
        }
      });
      this.freeReadLayout.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          Intent localIntent = new Intent(ProductDetailNewActivity.this, WebActivity.class);
          localIntent.putExtra("url", ProductDetailNewActivity.this.productDetailCruxBasicInfo.getReadUrl());
          ProductDetailNewActivity.this.startActivity(localIntent);
        }
      });
      return;
    }
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailNewActivity.this.freeReadLayoutAll.setVisibility(8);
      }
    });
  }
  
  private boolean initPlug(Intent paramIntent, File paramFile)
  {
    for (;;)
    {
      try
      {
        if (TextUtils.isEmpty(this.fragmentName)) {
          loadFragNameEmpty();
        }
        this.classLoader = PlugClassLoader.getClassLoader(paramFile);
        if (this.classLoader == null) {
          break label126;
        }
        bool = true;
        this.loaded = bool;
        if (!this.loaded)
        {
          loadPlugClassLoaderError();
          return false;
        }
        IPFragmentplug localIPFragmentplug = getPlugIntance(this, this.fragmentName);
        if (localIPFragmentplug != null)
        {
          Fragment localFragment = localIPFragmentplug.getFragment(this, paramIntent.getExtras());
          localFragment.setArguments(paramIntent.getExtras());
          FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
          localFragmentTransaction.replace(16908300, localFragment);
          localFragmentTransaction.commitAllowingStateLoss();
          return true;
        }
      }
      catch (Exception localException)
      {
        loadPlugFragmentError(localException);
      }
      return false;
      label126:
      boolean bool = false;
    }
  }
  
  private void initShopingCar()
  {
    int i = ShoppingController.getProductCount();
    if (i > 0)
    {
      if (i > this.PRODUCT_SHOPPING_CAR_COUNT) {}
      for (String str = getResources().getString(2131166487);; str = String.valueOf(i))
      {
        this.shoppingCarIconTextView.setVisibility(0);
        this.shoppingCarIconTextView.setTextColor(getResources().getColor(2131296286));
        this.shoppingCarIconTextView.setText(str);
        return;
      }
    }
    this.shoppingCarIconTextView.setVisibility(8);
  }
  
  private boolean isCanBuy()
  {
    Boolean localBoolean = this.product.getProvinceStockFlag();
    if (localBoolean == null) {}
    while (localBoolean.booleanValue()) {
      return true;
    }
    return false;
  }
  
  private boolean isNeedTwoLine()
  {
    ProductShow localProductShow = new ProductShow(this, this.product);
    Paint localPaint = new Paint();
    localPaint.setTextSize(1.2F * this.productJdPriceView.getTextSize());
    int i = (int)localPaint.measureText(localProductShow.getJdPrice().toString());
    if (this.productPhoeZengIcon.getVisibility() == 0) {
      i += this.productPhoeZengIcon.getLayoutParams().width + this.productPhoeZengIcon.getPaddingLeft() + this.productPhoeZengIcon.getPaddingRight();
    }
    if (this.productPhoeJiangIcon.getVisibility() == 0) {
      i += this.productPhoeJiangIcon.getLayoutParams().width + this.productPhoeJiangIcon.getPaddingLeft() + this.productPhoeJiangIcon.getPaddingRight();
    }
    if (this.productPhoeVipIcon.getVisibility() == 0) {
      i += this.productPhoeVipIcon.getLayoutParams().width + this.productPhoeVipIcon.getPaddingLeft() + this.productPhoeVipIcon.getPaddingRight();
    }
    int j = this.productJDDeliverImageView.getWidth();
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131494217);
    return i + j + DPIUtil.dip2px(8.0F) >= localRelativeLayout.getWidth() - localRelativeLayout.getPaddingLeft() - localRelativeLayout.getPaddingRight();
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
        ProductDetailNewActivity.this.post(new Runnable()
        {
          public void run()
          {
            this.val$progressBar.setVisibility(8);
            this.val$imageView.setImageDrawable(new ExceptionDrawable(ProductDetailNewActivity.this, ProductDetailNewActivity.this.getResources().getString(2131166491)));
            this.val$imageView.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymous3View)
              {
                this.val$progressBar.setVisibility(0);
                ProductDetailNewActivity.this.loadProductPicture(this.val$imageList, this.val$position, this.val$itemView);
              }
            });
          }
        });
      }
      
      public void onProgress(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest) {}
      
      public void onSuccess(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, final Bitmap paramAnonymousBitmap)
      {
        ProductDetailNewActivity.this.post(new Runnable()
        {
          public void run()
          {
            this.val$progressBar.setVisibility(8);
            HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable = new HandlerRecycleBitmapDrawable(paramAnonymousBitmap, ProductDetailNewActivity.this);
            localHandlerRecycleBitmapDrawable.initLoad(this.val$imageView, ProductDetailNewActivity.this.getHttpGroupaAsynPool(5000), this.val$url);
            this.val$imageView.setImageDrawable(localHandlerRecycleBitmapDrawable);
            this.val$imageView.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymous3View)
              {
                String str = this.val$image.getBig();
                Bundle localBundle = new Bundle();
                localBundle.putInt("position", this.val$position);
                localBundle.putString("url", str);
                localBundle.putSerializable("product", ProductDetailNewActivity.this.product);
                Intent localIntent = new Intent(ProductDetailNewActivity.this, ImageActivity.class);
                localIntent.putExtras(localBundle);
                ProductDetailNewActivity.this.startActivity(localIntent);
              }
            });
          }
        });
      }
    });
  }
  
  private void refreshXJZDIcon()
  {
    try
    {
      if ((this.isXJZShowed) && (this.isDeliverShowed) && (isNeedTwoLine()))
      {
        RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
        localLayoutParams1.addRule(3, 2131494218);
        localLayoutParams1.leftMargin = 0;
        localLayoutParams1.addRule(9);
        this.productXJZIconLayout.setLayoutParams(localLayoutParams1);
        RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, (int)getResources().getDimension(2131427696));
        localLayoutParams2.addRule(3, 2131494218);
        localLayoutParams2.addRule(1, 2131494219);
        localLayoutParams2.leftMargin = DPIUtil.dip2px(4.0F);
        this.productJDDeliverImageView.setLayoutParams(localLayoutParams2);
        RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        localLayoutParams3.addRule(3, 2131494219);
        localLayoutParams3.addRule(9);
        this.productMarketPriceView.setLayoutParams(localLayoutParams3);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
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
  
  private void showAllProductDetail()
  {
    showStockRunnable();
    showProductForDetailStocks();
    updatePromise(this.product.getProvinceStockContent());
  }
  
  private void showCommentCountRunnable()
  {
    String str1 = this.productDetailCruxBasicInfo.getComNum();
    String str2 = this.productDetailCruxBasicInfo.getScore();
    if ((TextUtils.isEmpty(str1)) || (TextUtils.equals(str1, "0")))
    {
      String str3 = getString(2131166479);
      this.productCommentCount.setText(str3);
      this.productCommentCount.setTextColor(getResources().getColor(2131296369));
      this.productCommentCount.setEnabled(false);
      this.productDetailEvaluateLayout.setEnabled(false);
      this.productCommentIndexImageView.setVisibility(8);
      if (!TextUtils.isEmpty(str2)) {
        break label219;
      }
    }
    label219:
    for (float f = 5.0F;; f = Float.valueOf(str2).floatValue())
    {
      this.productScoreRb.setRating(f);
      showProductEvaluate();
      return;
      this.productCommentCount.setEnabled(true);
      this.productDetailEvaluateLayout.setEnabled(true);
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str1 + getResources().getString(2131166485));
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(getResources().getColor(2131296296)), 0, localSpannableStringBuilder.length(), 33);
      this.productCommentCount.setText(localSpannableStringBuilder);
      this.productCommentIndexImageView.setVisibility(0);
      break;
    }
  }
  
  private void showConsultationCount(boolean paramBoolean)
  {
    this.productConsultationCount.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProductDetailNewActivity.this.productConsultationCount.setPressed(false);
        Intent localIntent = new Intent(ProductDetailNewActivity.this, BuyAskListActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putLong("id", ProductDetailNewActivity.this.product.getShowId().longValue());
        localBundle.putString("name", ProductDetailNewActivity.this.productDetailBasicInfo.getName());
        localIntent.putExtras(localBundle);
        ProductDetailNewActivity.this.startActivity(localIntent);
      }
    });
    this.productConsultationCountTextView.setText(getText(2131165676));
    if (!paramBoolean) {
      return;
    }
    String str = this.productDetailCruxBasicInfo.getCousultNum();
    if ((!this.productDetailCruxBasicInfo.isConsult().booleanValue()) || (TextUtils.isEmpty(str)))
    {
      this.productConsultationCount.setEnabled(false);
      return;
    }
    this.productConsultationCount.setEnabled(true);
    this.productConsultationCountTextView.setText(getResources().getText(2131165676));
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("（" + str + "）");
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(getResources().getColor(2131296296)), 0, localSpannableStringBuilder.length(), 33);
    this.productConsultationCountTextView.append(localSpannableStringBuilder);
  }
  
  private void showDirectStockRunnableMethod()
  {
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          String str1 = ProductDetailNewActivity.this.product.getProvinceStockContent();
          String str2 = ProductDetailNewActivity.this.product.getProvinceName() + ProductDetailNewActivity.this.addString(ProductDetailNewActivity.this.product.getCityName()) + ProductDetailNewActivity.this.addString(ProductDetailNewActivity.this.product.getCountyName()) + ProductDetailNewActivity.this.addString(ProductDetailNewActivity.this.product.getTownName());
          if (TextUtils.isEmpty(str1)) {
            str1 = ProductDetailNewActivity.this.getResources().getString(2131166488);
          }
          ProductDetailNewActivity localProductDetailNewActivity = ProductDetailNewActivity.this;
          StringBuilder localStringBuilder = new StringBuilder(String.valueOf(str2)).append("\r\n");
          if (str1 != null) {}
          for (String str3 = str1;; str3 = "")
          {
            localProductDetailNewActivity.stockProvinceName = str3;
            ProductShow localProductShow = new ProductShow(ProductDetailNewActivity.this, ProductDetailNewActivity.this.product);
            ProductDetailNewActivity.this.productJdPriceView.setText(localProductShow.getJdPrice());
            ProductDetailNewActivity.this.productStockProvinceChoosed.setText(str2);
            return;
          }
          return;
        }
        catch (Exception localException) {}
      }
    });
  }
  
  private void showOptionsRunnable()
  {
    int i = DPIUtil.getWidth() - 2 * getResources().getDimensionPixelOffset(2131427483) - 4 * getResources().getDimensionPixelOffset(2131427548);
    ArrayList localArrayList1 = this.productDetailSkuColor;
    ArrayList localArrayList2;
    if ((localArrayList1 == null) || (localArrayList1.size() < 1))
    {
      this.productColorLineView.setVisibility(8);
      this.productOptionsColorView.setVisibility(8);
      localArrayList2 = this.productDetailSkuSize;
      if ((localArrayList2 == null) || (localArrayList2.size() < 1))
      {
        this.productSizeLineView.setVisibility(8);
        this.productOptionsSizeView.setVisibility(8);
      }
    }
    else
    {
      this.productColorLineView.setVisibility(0);
      this.productOptionsColorView.setVisibility(0);
      this.productOptionsView.setVisibility(8);
      removeAllLinearLayout(this.productOptionsColorView);
      LinearLayout localLinearLayout3 = new LinearLayout(this);
      localLinearLayout3.setOrientation(1);
      this.productOptionsColorView.addView(localLinearLayout3, new LinearLayout.LayoutParams(-1, -2));
      LinearLayout localLinearLayout4 = null;
      int m = 0;
      label175:
      Button localButton2;
      if (m < localArrayList1.size())
      {
        localButton2 = new Button(this);
        localButton2.setText(((ProductDetailSkuColor)localArrayList1.get(m)).getColor());
        localButton2.setTextColor(getResources().getColor(2131296364));
        localButton2.setGravity(17);
        localButton2.setEllipsize(TextUtils.TruncateAt.END);
        localButton2.setSingleLine(true);
        localButton2.setWidth(i / 3);
        if (!TextUtils.equals(((ProductDetailSkuColor)localArrayList1.get(m)).getSkuId(), String.valueOf(this.id))) {
          break label416;
        }
        this.productColor = ((ProductDetailSkuColor)localArrayList1.get(m)).getColor();
        localButton2.setBackgroundResource(2130838075);
      }
      for (;;)
      {
        localButton2.setOnClickListener(new OptionsOnClickListener(Long.valueOf(((ProductDetailSkuColor)localArrayList1.get(m)).getSkuId()).longValue()));
        int n = (m + 1) % 3;
        if (n == 1)
        {
          localLinearLayout4 = new LinearLayout(this);
          localLinearLayout4.setOrientation(0);
        }
        localLinearLayout4.addView(localButton2, this.layoutParams);
        if ((n == 0) || (m == -1 + localArrayList1.size())) {
          localLinearLayout3.addView(localLinearLayout4, new LinearLayout.LayoutParams(-2, -2));
        }
        m++;
        break label175;
        break;
        label416:
        localButton2.setBackgroundResource(2130838074);
      }
    }
    this.productSizeLineView.setVisibility(0);
    this.productOptionsSizeView.setVisibility(0);
    this.productOptionsView.setVisibility(8);
    removeAllLinearLayout(this.productOptionsSizeView);
    LinearLayout localLinearLayout1 = new LinearLayout(this);
    localLinearLayout1.setOrientation(1);
    this.productOptionsSizeView.addView(localLinearLayout1, new LinearLayout.LayoutParams(-1, -2));
    LinearLayout localLinearLayout2 = null;
    int j = 0;
    label501:
    Button localButton1;
    if (j < localArrayList2.size())
    {
      localButton1 = new Button(this);
      localButton1.setText(((ProductDetailSkuSize)localArrayList2.get(j)).getSize());
      localButton1.setTextColor(getResources().getColor(2131296364));
      localButton1.setGravity(17);
      localButton1.setEllipsize(TextUtils.TruncateAt.END);
      localButton1.setSingleLine(true);
      localButton1.setWidth(i / 3);
      if (!TextUtils.equals(((ProductDetailSkuSize)localArrayList2.get(j)).getSkuId(), String.valueOf(this.id))) {
        break label742;
      }
      this.productSize = ((ProductDetailSkuSize)localArrayList2.get(j)).getSize();
      localButton1.setBackgroundResource(2130838075);
    }
    for (;;)
    {
      localButton1.setOnClickListener(new OptionsOnClickListener(Long.valueOf(((ProductDetailSkuSize)localArrayList2.get(j)).getSkuId()).longValue()));
      int k = (j + 1) % 3;
      if (k == 1)
      {
        localLinearLayout2 = new LinearLayout(this);
        localLinearLayout2.setOrientation(0);
      }
      localLinearLayout2.addView(localButton1, this.layoutParams);
      if ((k == 0) || (j == -1 + localArrayList2.size())) {
        localLinearLayout1.addView(localLinearLayout2, new LinearLayout.LayoutParams(-2, -2));
      }
      j++;
      break label501;
      break;
      label742:
      localButton1.setBackgroundResource(2130838074);
    }
  }
  
  private void showOrderCommentCountRunnable(boolean paramBoolean)
  {
    this.productOrderCommentCount.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Long localLong = ProductDetailNewActivity.this.product.getShowId();
        if (localLong == null) {
          return;
        }
        ProductDetailNewActivity.this.productOrderCommentCount.setPressed(false);
        Intent localIntent = new Intent(ProductDetailNewActivity.this, DiscussListActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putLong("id", localLong.longValue());
        localBundle.putString("name", ProductDetailNewActivity.this.productDetailBasicInfo.getName());
        localIntent.putExtras(localBundle);
        ProductDetailNewActivity.this.startActivity(localIntent);
      }
    });
    if (!paramBoolean)
    {
      this.productOrderCommentCountTextView.setText(2131165688);
      return;
    }
    String str = this.productDetailCruxBasicInfo.getOrderNum();
    this.productOrderCommentCount.setVisibility(0);
    if ((TextUtils.isEmpty(str)) || (TextUtils.equals(str, "0")))
    {
      this.productOrderCommentCountTextView.setText(2131166478);
      this.productOrderCommentCount.setEnabled(false);
      this.productOrderCommentCountTextView.setTextColor(getResources().getColor(2131296369));
      return;
    }
    this.productOrderCommentCountTextView.setText(getResources().getText(2131165700));
    this.productOrderCommentCount.setEnabled(true);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("（" + str + "）");
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(getResources().getColor(2131296296)), 0, localSpannableStringBuilder.length(), 33);
    this.productOrderCommentCountTextView.append(localSpannableStringBuilder);
  }
  
  private void showPacksLayoutVisible(final int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailNewActivity.this.packsLinearLayout.setVisibility(paramInt);
      }
    });
  }
  
  private void showProduct(long paramLong)
  {
    this.id = paramLong;
    String str = String.valueOf(paramLong);
    this.product.setSkuId(str);
    this.product.setId(Long.valueOf(paramLong));
    this.product.setStockFunction("");
    this.product.setCheckNext(false);
    showQuerying();
    destroyData();
    this.isXJZShowed = false;
    this.isDeliverShowed = false;
    this.mProductDetailController.queryProduct(paramLong, this.mSource, new ProductDetailController.ProductDetailListener()
    {
      public void onFinish(Product paramAnonymousProduct, int paramAnonymousInt, boolean paramAnonymousBoolean)
      {
        ProductDetailNewActivity.this.initData();
        if (paramAnonymousInt == 1)
        {
          ProductDetailNewActivity.this.statClick();
          ProductDetailNewActivity.this.showAllProductDetail();
          ProductDetailNewActivity.this.showProductForConsultationCount(paramAnonymousBoolean);
          ProductDetailNewActivity.this.showProductForOrderCommentCount(paramAnonymousBoolean);
          ProductDetailNewActivity.this.showProductForPacks();
          ProductDetailNewActivity.this.showProductForEasyBuy();
          ProductDetailNewActivity.this.showProductForPromotion();
          ProductDetailNewActivity.this.showProductForOptoins();
          ProductDetailNewActivity.this.showProductForCommentCount(paramAnonymousBoolean);
          ProductDetailNewActivity.this.showProductForDeliver();
        }
        while (paramAnonymousInt != 11) {
          return;
        }
        ProductDetailNewActivity.this.showAllProductDetail();
        ProductDetailNewActivity.this.showProduct(paramAnonymousProduct.getId().longValue());
      }
    });
  }
  
  private void showProductEvaluate()
  {
    this.productDetailEvaluateLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(ProductDetailNewActivity.this, CommentListActivity.class);
        ProductDetailNewActivity.this.commentBundle.putSerializable("product", ProductDetailNewActivity.this.product);
        localIntent.putExtras(ProductDetailNewActivity.this.commentBundle);
        ProductDetailNewActivity.this.startActivity(localIntent);
      }
    });
  }
  
  private void showProductForCommentCount(boolean paramBoolean)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailNewActivity.this.showCommentCountRunnable();
      }
    });
  }
  
  private void showProductForConsultationCount(final boolean paramBoolean)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailNewActivity.this.showConsultationCount(paramBoolean);
      }
    });
  }
  
  private void showProductForDeliver()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (!TextUtils.isEmpty(ProductDetailNewActivity.this.product.getDeliver()))
        {
          ProductDetailNewActivity.this.productDetailDeliverLayout.setVisibility(0);
          ProductDetailNewActivity.this.productDeliverView.setVisibility(0);
          ProductDetailNewActivity.this.productDeliverImageView.setVisibility(0);
          ProductDetailNewActivity.this.productDeliverView.setText(ProductDetailNewActivity.this.product.getDeliver());
          ProductDetailNewActivity.this.productNameViewLine.setVisibility(0);
          if (!ProductDetailNewActivity.this.product.getPostByJd().booleanValue()) {
            break label174;
          }
          ProductDetailNewActivity.this.productJDDeliverImageView.setVisibility(0);
        }
        for (;;)
        {
          ProductDetailNewActivity.this.isDeliverShowed = true;
          ProductDetailNewActivity.this.refreshXJZDIcon();
          return;
          ProductDetailNewActivity.this.productDetailDeliverLayout.setVisibility(8);
          ProductDetailNewActivity.this.productDeliverView.setVisibility(8);
          ProductDetailNewActivity.this.productNameViewLine.setVisibility(8);
          ProductDetailNewActivity.this.productDeliverImageView.setVisibility(8);
          break;
          label174:
          ProductDetailNewActivity.this.productJDDeliverImageView.setVisibility(8);
        }
      }
    });
  }
  
  private void showProductForDetailStocks()
  {
    this.productDetailTitleInformationLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProductDetailNewActivity.this.productDetailTitleInformationLayout.setPressed(false);
        Intent localIntent = new Intent(ProductDetailNewActivity.this, ProductDetailInfoActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putSerializable("product", ProductDetailNewActivity.this.product);
        localIntent.putExtras(localBundle);
        ProductDetailNewActivity.this.startActivity(localIntent);
      }
    });
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailNewActivity.this.titleView.setText(ProductDetailNewActivity.this.getString(2131165667));
        ProductDetailNewActivity.this.commentBundle.putString("name", ProductDetailNewActivity.this.product.getName());
        ProductShow.shareProductNew(ProductDetailNewActivity.this.shareButton, ProductDetailNewActivity.this.product, ProductDetailNewActivity.this.getHttpGroupaAsynPool(), ProductDetailNewActivity.this.productDetailShareLayout);
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
          ProductDetailNewActivity.this.productImageViewPager.setAdapter(new ProductDetailNewActivity.ProductDetailPagerAdapter(ProductDetailNewActivity.this, localList));
          ProductDetailNewActivity.this.productImageViewPager.setOnPageChangeListener(new ProductDetailNewActivity.ImageViewpageChangeListener(ProductDetailNewActivity.this));
          if (ProductDetailNewActivity.this.imageCount > 0)
          {
            ProductDetailNewActivity.this.productDetailImageLayout.setVisibility(0);
            ProductDetailNewActivity.this.updateImageCount(ProductDetailNewActivity.this.imageCount);
            ProductDetailNewActivity.this.updateCurrentImage(0);
            return;
          }
          ProductDetailNewActivity.this.productDetailImageLayout.setVisibility(8);
        }
      });
    }
    post(new Runnable()
    {
      public void run()
      {
        CharSequence localCharSequence1 = ProductDetailNewActivity.this.getNameAndAdWord();
        CharSequence localCharSequence2;
        if (this.val$productShow.getProduct().isPromotion().booleanValue())
        {
          ProductDetailNewActivity.this.producNameAndAdWordView.setLineSpacing(1.0F, 1.0F);
          ProductDetailNewActivity.this.producNameAndAdWordView.setText(localCharSequence1);
          ProductDetailNewActivity.this.productJdPriceView.setText(this.val$productShow.getJdPrice());
          if (ProductDetailNewActivity.this.productDetailMprice.getDisplay().booleanValue())
          {
            localCharSequence2 = this.val$productShow.getMarketPriceNew(ProductDetailNewActivity.this.productDetailMprice.getValue(), ProductDetailNewActivity.this.productDetailMprice.getName());
            if (!TextUtils.isEmpty(localCharSequence2)) {
              break label384;
            }
            ProductDetailNewActivity.this.productMarketPriceView.setVisibility(8);
          }
        }
        for (;;)
        {
          if ((ProductDetailNewActivity.this.product.getIsPhoneVipPrice().booleanValue()) || (ProductDetailNewActivity.this.productDetailCruxBasicInfo.getDownPrice().booleanValue()) || (ProductDetailNewActivity.this.productDetailCruxBasicInfo.isGift().booleanValue())) {
            ProductDetailNewActivity.this.productXJZIconLayout.setVisibility(0);
          }
          if (ProductDetailNewActivity.this.product.getIsPhoneVipPrice().booleanValue()) {
            ProductDetailNewActivity.this.productPhoeVipIcon.setVisibility(0);
          }
          if (ProductDetailNewActivity.this.productDetailCruxBasicInfo.getDownPrice().booleanValue()) {
            ProductDetailNewActivity.this.productPhoeJiangIcon.setVisibility(0);
          }
          if (ProductDetailNewActivity.this.productDetailCruxBasicInfo.isGift().booleanValue()) {
            ProductDetailNewActivity.this.productPhoeZengIcon.setVisibility(0);
          }
          ProductDetailNewActivity.this.isXJZShowed = true;
          ProductDetailNewActivity.this.refreshXJZDIcon();
          return;
          if (ProductDetailNewActivity.this.PRODUCT_NAME_COUNT > localCharSequence1.length())
          {
            ProductDetailNewActivity.this.producNameAndAdWordView.setLineSpacing(1.0F, 1.0F);
            break;
          }
          RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
          localLayoutParams.addRule(3, 2131494252);
          localLayoutParams.addRule(5, 2131494252);
          localLayoutParams.addRule(7, 2131494252);
          localLayoutParams.setMargins(0, 0, 0, DPIUtil.dip2px(ProductDetailNewActivity.this.getResources().getDimension(2131427552)));
          ProductDetailNewActivity.this.producNameAndAdWordView.setLayoutParams(localLayoutParams);
          break;
          label384:
          ProductDetailNewActivity.this.productMarketPriceView.setText(localCharSequence2);
          ProductDetailNewActivity.this.productMarketPriceView.setVisibility(0);
        }
      }
    });
    initCollectButton();
    initCartButton();
    initFreeReadButton();
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
        com.jingdong.common.constant.Constants.easyBuyProdId = ProductDetailNewActivity.this.id;
        Intent localIntent = new Intent(ProductDetailNewActivity.this, FillOrderActivity.class);
        localIntent.putExtra("isEasyBuy", true);
        localIntent.putExtra("easyBuySource", ProductDetailNewActivity.this.mSource);
        ProductDetailNewActivity.this.startActivity(localIntent);
      }
    });
    post(new Runnable()
    {
      public void run()
      {
        if (ProductDetailNewActivity.this.productDetailBasicInfo.isEasyBuy())
        {
          ProductDetailNewActivity.this.easyButton.setEnabled(true);
          ProductDetailNewActivity.this.easyButton.setVisibility(0);
          if (ProductDetailNewActivity.this.isCanBuy())
          {
            ProductDetailNewActivity.this.easyButton.setEnabled(true);
            return;
          }
          ProductDetailNewActivity.this.easyButton.setEnabled(false);
          return;
        }
        ProductDetailNewActivity.this.easyButton.setEnabled(false);
      }
    });
  }
  
  private void showProductForOptoins()
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailNewActivity.this.showOptionsRunnable();
        ProductDetailNewActivity.this.updateColorAndSizeTextView();
        if (ProductDetailNewActivity.this.isStrecth)
        {
          ProductDetailNewActivity.this.productOptionsView.setVisibility(0);
          ProductDetailNewActivity.this.stretchButton.setBackgroundResource(2130838098);
        }
      }
    });
  }
  
  private void showProductForOrderCommentCount(final boolean paramBoolean)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailNewActivity.this.showOrderCommentCountRunnable(paramBoolean);
      }
    });
  }
  
  private void showProductForPromotion()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (!TextUtils.isEmpty(this.val$productShow.getPromotionTitleAndInfoNew()))
        {
          new RelativeLayout.LayoutParams(ProductDetailNewActivity.this.productPromotionView.getLayoutParams()).addRule(9);
          ProductDetailNewActivity.this.productDetailPromotionLayout.setVisibility(0);
          ProductDetailNewActivity.this.productPromotionView.setVisibility(0);
          ProductDetailNewActivity.this.productPromotionView.setText(this.val$productShow.getPromotionTitleAndInfoNew());
          return;
        }
        ProductDetailNewActivity.this.productDetailPromotionLayout.setVisibility(8);
        ProductDetailNewActivity.this.productPromotionView.setVisibility(8);
      }
    });
  }
  
  private void showQuerying()
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailNewActivity.this.producNameAndAdWordView.setText(2131166482);
        ProductDetailNewActivity.this.productDeliverView.setText(2131166481);
        ProductDetailNewActivity.this.productConsultationCountTextView.setText(ProductDetailNewActivity.this.getText(2131165689));
        ProductDetailNewActivity.this.productOrderCommentCountTextView.setText(2131165687);
        ProductDetailNewActivity.this.productCommentCount.setText(2131166480);
        ProductDetailNewActivity.this.productCommentIndexImageView.setVisibility(8);
        ProductDetailNewActivity.this.prodcutPromiseTextView.setText(2131165582);
        ProductDetailNewActivity.this.productStockProvinceChoosed.setText(2131165582);
      }
    });
  }
  
  private void showStockRunnable()
  {
    showDirectStockRunnableMethod();
    updateColorAndSizeTextView();
  }
  
  private void startPlug(Bundle paramBundle)
  {
    this.rootView = new FrameLayout(this);
    this.rootView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    this.rootView.setId(16908300);
    setContentView(this.rootView);
    Intent localIntent = getIntent();
    Object localObject1 = localIntent.getExtras().get("id");
    PlugItem localPlugItem1;
    if ((localObject1 instanceof String))
    {
      this.id = Long.valueOf((String)localObject1).longValue();
      localPlugItem1 = PlugManager.getInstance().getPlugItem(this, "com.jd.plug.productdetailplug");
      localObject2 = null;
    }
    for (;;)
    {
      PlugItem localPlugItem2;
      File localFile2;
      try
      {
        localFile1 = new File(localPlugItem1.intallPath);
      }
      catch (Exception localException1) {}
      for (;;)
      {
        try
        {
          this.fragmentName = localPlugItem1.lunchPath;
          localObject2 = localFile1;
          if (initPlug(localIntent, localObject2)) {
            break;
          }
        }
        catch (Exception localException2)
        {
          localObject2 = localFile1;
          continue;
        }
        try
        {
          localPlugItem2 = LocalPlugsTools.installPlugFromAsset(this, "com.jd.plug.productdetailplug");
          if (localPlugItem2 != null) {
            localFile2 = new File(localPlugItem2.intallPath);
          }
        }
        catch (Exception localException3)
        {
          loadPlugFragmentError(localException3);
          return;
        }
      }
      try
      {
        this.fragmentName = localPlugItem2.lunchPath;
        initPlug(localIntent, localFile2);
        return;
      }
      catch (Exception localException4)
      {
        break label206;
      }
      this.id = ((Long)localObject1).longValue();
      break;
      loadFileError(localException1);
    }
  }
  
  private void statClick()
  {
    if (!this.isAlreadyStatClick)
    {
      this.isAlreadyStatClick = true;
      this.mProductDetailController.statClick(this.id);
    }
  }
  
  private void updateColorAndSizeTextView()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (TextUtils.isEmpty(ProductDetailNewActivity.this.productColor))
        {
          ProductDetailNewActivity.this.productColorTextView.setVisibility(8);
          ProductDetailNewActivity.this.productColorContentTextView.setVisibility(8);
          if (!TextUtils.isEmpty(ProductDetailNewActivity.this.productSize)) {
            break label154;
          }
          ProductDetailNewActivity.this.productSizeTextView.setVisibility(8);
          ProductDetailNewActivity.this.productSizeContentTextView.setVisibility(8);
        }
        for (;;)
        {
          if (!TextUtils.isEmpty(ProductDetailNewActivity.this.stockProvinceName)) {
            break label196;
          }
          ProductDetailNewActivity.this.productStockTextView.setVisibility(8);
          ProductDetailNewActivity.this.productStockContentTextView.setVisibility(8);
          return;
          ProductDetailNewActivity.this.productColorTextView.setVisibility(0);
          ProductDetailNewActivity.this.productColorContentTextView.setText(ProductDetailNewActivity.this.productColor);
          ProductDetailNewActivity.this.productColorContentTextView.setVisibility(0);
          break;
          label154:
          ProductDetailNewActivity.this.productSizeTextView.setVisibility(0);
          ProductDetailNewActivity.this.productSizeContentTextView.setText(ProductDetailNewActivity.this.productSize);
          ProductDetailNewActivity.this.productSizeContentTextView.setVisibility(0);
        }
        label196:
        ProductDetailNewActivity.this.productStockTextView.setVisibility(0);
        ProductDetailNewActivity.this.productStockContentTextView.setText(ProductDetailNewActivity.this.stockProvinceName);
        ProductDetailNewActivity.this.productStockContentTextView.setVisibility(0);
      }
    });
  }
  
  private void updateCurrentImage(int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailNewActivity.this.imageCurrentTextView.setText(this.val$current);
      }
    });
  }
  
  private void updateImageCount(int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductDetailNewActivity.this.imageCountTextView.setText(this.val$count);
      }
    });
  }
  
  private void updatePromise(final String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        if (!TextUtils.isEmpty(paramString))
        {
          ProductDetailNewActivity.this.productPromiseLineView.setVisibility(0);
          ProductDetailNewActivity.this.productOptionsPromiseView.setVisibility(0);
          ProductDetailNewActivity.this.prodcutPromiseTextView.setText(paramString);
        }
      }
    });
  }
  
  public void canClickEasyBuyBtn()
  {
    this.easyButton.setClickable(true);
  }
  
  public ClassLoader getClassLoader()
  {
    if (MergeSwitcher.isPlugOn())
    {
      if (this.classLoader == null) {
        return super.getClassLoader();
      }
      return this.classLoader;
    }
    return super.getClassLoader();
  }
  
  public ClassLoader getClassLoader(Context paramContext)
  {
    if (this.classLoader == null) {
      return paramContext.getClassLoader();
    }
    return this.classLoader;
  }
  
  public CharSequence getNameAndAdWord()
  {
    ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(getResources().getColor(2131296366));
    String str1 = this.productDetailBasicInfo.getName();
    String str2 = this.productDetailCruxBasicInfo.getAdword();
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str1 + str2);
    int i = str1.length();
    int j = localSpannableStringBuilder.length();
    if ((str2 != null) && (str2.length() > 0)) {
      localSpannableStringBuilder.setSpan(localForegroundColorSpan, i, j, 33);
    }
    return localSpannableStringBuilder;
  }
  
  public PlugResources getOverrideResources()
  {
    return this.myResources;
  }
  
  public Map<String, String> getParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("productId", String.valueOf(this.id));
    return localHashMap;
  }
  
  public IPFragmentplug getPlugIntance(Context paramContext, String paramString)
  {
    if (this.iplug != null) {
      return this.iplug;
    }
    try
    {
      this.iplug = ((IPFragmentplug)getClassLoader(paramContext).loadClass(paramString).newInstance());
      return this.iplug;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  protected void loadFileError(Exception paramException) {}
  
  protected void loadFragNameEmpty() {}
  
  protected void loadPlugClassLoaderError() {}
  
  protected void loadPlugFragmentError(Exception paramException) {}
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (MergeSwitcher.isPlugOn())
    {
      startPlug(paramBundle);
      return;
    }
    setContentView(2130903253);
    this.httpGroup = getHttpGroupaAsynPool();
    Bundle localBundle = getIntent().getExtras();
    this.dbService = new DBHelperUtil(this);
    findViews();
    this.mProductDetailController = new ProductDetailController(this.httpGroup);
    this.product = this.mProductDetailController.getProduct();
    hasCacelFavorite = false;
    goShoppingCar();
    initShopingCar();
    handleFoldAndUnfold();
    Object localObject = localBundle.get("id");
    if ((localObject instanceof String)) {}
    for (long l = Long.valueOf((String)localObject).longValue();; l = ((Long)localObject).longValue())
    {
      this.product.setId(Long.valueOf(l));
      SourceEntity localSourceEntity = (SourceEntity)localBundle.get("source");
      if (localSourceEntity != null) {
        this.mSource = localSourceEntity;
      }
      this.mProductThridAddress = new ProductThridAddress(this, this.mProductDetailController, this.product, this.productStockProvinceChoosed);
      showProduct(l);
      this.mProductThridAddress.handleThirdAddress(new ProductThridAddress.ProductDetailUpdataUIListener()
      {
        public void onFinish(int paramAnonymousInt, long paramAnonymousLong)
        {
          if ((21 == paramAnonymousInt) || (11 == paramAnonymousInt))
          {
            if (11 == paramAnonymousInt) {
              ProductDetailNewActivity.this.showAllProductDetail();
            }
            ProductDetailNewActivity.this.showProduct(paramAnonymousLong);
          }
          while (20 != paramAnonymousInt) {
            return;
          }
          ProductDetailNewActivity.this.showDirectStockRunnableMethod();
          ProductDetailNewActivity.this.updatePromise(ProductDetailNewActivity.this.product.getProvinceStockContent());
          ProductDetailNewActivity.this.updateColorAndSizeTextView();
          ProductDetailNewActivity.this.initCartButton();
          ProductDetailNewActivity.this.showProductForEasyBuy();
        }
      });
      return;
    }
  }
  
  protected void onResume()
  {
    if (MergeSwitcher.isPlugOn())
    {
      super.onResume();
      return;
    }
    this.shareButton.setClickable(true);
    super.onResume();
    initShopingCar();
  }
  
  public void recoveryPlug() {}
  
  public void showProductForPacks()
  {
    if (this.productDetailCruxBasicInfo.isSuit().booleanValue())
    {
      showPacksLayoutVisible(0);
      this.packsLinear.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          com.jingdong.common.constant.Constants.packMainProdId = ProductDetailNewActivity.this.id;
          Intent localIntent = new Intent(ProductDetailNewActivity.this, PacksListActivity.class);
          localIntent.putExtra("source", ProductDetailNewActivity.this.mSource);
          ProductDetailNewActivity.this.startActivity(localIntent);
        }
      });
      return;
    }
    showPacksLayoutVisible(8);
  }
  
  public class ImageViewpageChangeListener
    implements ViewPager.OnPageChangeListener
  {
    boolean isFirst = true;
    View oldView = null;
    
    public ImageViewpageChangeListener() {}
    
    private void setCurIdentification(int paramInt)
    {
      if ((paramInt < 0) || (paramInt > ProductDetailNewActivity.this.imageCount) || (ProductDetailNewActivity.this.currentIndex == paramInt)) {
        return;
      }
      ProductDetailNewActivity.this.updateCurrentImage(paramInt);
      ProductDetailNewActivity.this.currentIndex = paramInt;
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
      ProductDetailNewActivity.this.showProduct(this.id);
      ProductDetailNewActivity.this.isStrecth = true;
      ProductDetailNewActivity.this.easyButton.setEnabled(false);
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
          ProductDetailNewActivity.this.loadProductPicture(this.imageList, paramInt, localView);
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
 * Qualified Name:     com.jingdong.app.mall.product.ProductDetailNewActivity
 * JD-Core Version:    0.7.0.1
 */