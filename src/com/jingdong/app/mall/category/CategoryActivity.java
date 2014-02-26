package com.jingdong.app.mall.category;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.promotion.PromotionMessageActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.JDEbookUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.Catelogy;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpGroupSetting;
import com.jingdong.common.utils.HttpGroup.HttpGroupaAsynPool;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JDGameUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NewJLogUtil;
import com.jingdong.common.utils.NoImageUtils;
import com.jingdong.common.utils.URLParamMap;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class CategoryActivity
  extends MyActivity
{
  public static final String COME_FROM = "category";
  private static final String EBOOK_GUIDE_TIP = "ebook_guide_tip";
  private static final int SHOW_LEVEL_1 = 1;
  private static final int SHOW_LEVEL_2 = 2;
  private static final int SHOW_LEVEL_3 = 2;
  private static final int SHOW_STATE_BACK = 2;
  private static final int SHOW_STATE_DRAGGING = 1;
  private static final int SHOW_STATE_FORWARD = 3;
  private static final int SHOW_STATE_STOP = 0;
  private static final String TAG = "CategoryActivity";
  private static boolean mIsAlreadyBackgroupMakeCategoryImage;
  private String categoryId = "0";
  private View ebookNewTip;
  private String functionId = "catelogy";
  private JSONArrayPoxy jsonArrayPoxy = null;
  private ViewGroup mContainerLayout;
  private DividerDrawable mDivider_level_1;
  private int mIconRight = 0;
  private MySimpleAdapter mMainAdapter;
  private BackgroundDrawable mMainBackground;
  private View mMainErrorView;
  private SoftReference<Bitmap> mMainListBitmap = new SoftReference(null);
  private SoftReference<Bitmap> mMainListBitmapFinal = new SoftReference(null);
  private Bitmap mMainListBitmapFinalR;
  private Bitmap mMainListBitmapR;
  private ArrayList<Catelogy> mMainListData = new ArrayList();
  private DividerDrawable mMainListDivider;
  private int mMainListFirstVisibleItem;
  private int mMainListSelectedItemPosition = -1;
  private View mMainListSelectedItemView;
  private Integer mMainListSelectedItemY;
  private ListView mMainListView;
  private Button mMainLoadingBut;
  private View mMainLoadingView;
  private ViewGroup mMainStateView;
  private int mShowLevel = 1;
  private int mShowState = 0;
  private StageDrawable mStageDrawable;
  private View mStageView;
  private MySimpleAdapter mSubAdapter;
  private View mSubErrorView;
  private SoftReference<Bitmap> mSubListBitmap = new SoftReference(null);
  private Bitmap mSubListBitmapR;
  private ArrayList<Catelogy> mSubListData = new ArrayList();
  private int mSubListLeft = 0;
  private ListView mSubListView;
  private Button mSubLoadingBut;
  private View mSubLoadingView;
  private ViewGroup mSubStateView;
  private TextView mTitleView;
  private String promotionId = "0";
  private String promotionName = "";
  private ViewGroup promotionsEntry;
  private String promotionsImageUrl;
  private ImageView promotionsImageView;
  
  private void backgroupMakeCategoryImage(final ArrayList<Catelogy> paramArrayList)
  {
    if ((!mIsAlreadyBackgroupMakeCategoryImage) && (!NoImageUtils.needNoImage()))
    {
      mIsAlreadyBackgroupMakeCategoryImage = true;
      new Thread()
      {
        public void run()
        {
          setName("CategoryActivity");
          try
          {
            Thread.sleep(10000L);
            label12:
            HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
            localHttpGroupSetting.setType(5000);
            HttpGroup.HttpGroupaAsynPool localHttpGroupaAsynPool = new HttpGroup.HttpGroupaAsynPool(localHttpGroupSetting);
            Iterator localIterator = paramArrayList.iterator();
            for (;;)
            {
              if (!localIterator.hasNext()) {
                return;
              }
              Catelogy localCatelogy = (Catelogy)localIterator.next();
              if (!NoImageUtils.needNoImage())
              {
                HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
                localHttpSetting.setEffect(0);
                localHttpSetting.setNotifyUser(false);
                localHttpSetting.setUrl(localCatelogy.getImgUrl());
                localHttpSetting.setListener(new HttpGroup.OnCommonListener()
                {
                  public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
                  {
                    paramAnonymous2HttpResponse.getInputData();
                  }
                  
                  public void onError(HttpGroup.HttpError paramAnonymous2HttpError) {}
                  
                  public void onReady(HttpGroup.HttpSettingParams paramAnonymous2HttpSettingParams) {}
                });
                localHttpGroupaAsynPool.add(localHttpSetting);
                try
                {
                  Thread.sleep(5000L);
                }
                catch (InterruptedException localInterruptedException2) {}
              }
            }
          }
          catch (InterruptedException localInterruptedException1)
          {
            break label12;
          }
        }
      }.start();
    }
  }
  
  private void computeMainListSelectedItemCenterY()
  {
    this.mMainListSelectedItemView = this.mMainListView.getChildAt(this.mMainListSelectedItemPosition - this.mMainListFirstVisibleItem);
    Rect localRect1 = new Rect();
    this.mStageView.getGlobalVisibleRect(localRect1);
    Rect localRect2 = new Rect();
    this.mMainListSelectedItemView.getGlobalVisibleRect(localRect2);
    localRect2.offset(-localRect1.left, -localRect1.top);
    this.mMainListSelectedItemY = Integer.valueOf(localRect2.centerY());
  }
  
  private void findViews()
  {
    this.mContainerLayout = ((ViewGroup)findViewById(2131493199));
    this.mMainListView = ((ListView)findViewById(2131493200));
    this.mSubListView = ((ListView)findViewById(2131493204));
    this.mMainStateView = ((ViewGroup)findViewById(2131493201));
    this.mSubStateView = ((ViewGroup)findViewById(2131493205));
    this.mMainLoadingView = findViewById(2131493202);
    this.mMainErrorView = findViewById(2131493203);
    this.mMainLoadingBut = ((Button)this.mMainErrorView.findViewById(2131493613));
    this.mSubLoadingView = findViewById(2131493206);
    this.mSubErrorView = findViewById(2131493207);
    this.mSubLoadingBut = ((Button)this.mSubErrorView.findViewById(2131493613));
    this.mStageView = findViewById(2131493208);
    this.mTitleView = ((TextView)findViewById(2131492990));
  }
  
  private int getShowLevelWithState()
  {
    int i = this.mShowLevel;
    if (this.mShowState != 0)
    {
      if (i == 1) {
        i = 2;
      }
    }
    else {
      return i;
    }
    return 1;
  }
  
  private void hidePromotionsImage()
  {
    if (this.promotionsEntry != null) {
      this.mSubAdapter.removeHeaderView(this.promotionsEntry);
    }
  }
  
  private void hideSubList()
  {
    this.mShowState = 3;
    this.categoryId = "0";
    screenshotsAll();
    this.mTitleView.setText(2131165663);
    readyCorrectAnimation(1);
  }
  
  private void initIconRight(View paramView)
  {
    if (this.mIconRight == 0)
    {
      ImageView localImageView = (ImageView)paramView.findViewById(2131493216);
      Rect localRect1 = new Rect();
      localImageView.getGlobalVisibleRect(localRect1);
      Rect localRect2 = new Rect();
      this.mMainListView.getGlobalVisibleRect(localRect2);
      this.mIconRight = (localRect1.right - localRect2.left);
    }
  }
  
  private void initSubListLeft(View paramView)
  {
    if (this.mSubListLeft == 0)
    {
      TextView localTextView = (TextView)paramView.findViewById(2131493217);
      Rect localRect = new Rect();
      paramView.getGlobalVisibleRect(localRect);
      int i = new Float(localRect.left + 4.0F * localTextView.getTextSize() + localTextView.getPaddingRight()).intValue();
      ((ViewGroup.MarginLayoutParams)this.mSubListView.getLayoutParams()).setMargins(i, 0, 0, 0);
      this.mContainerLayout.requestLayout();
      this.mSubListLeft = i;
    }
  }
  
  private void loadCategory(String paramString, int paramInt)
  {
    if ("0".equals(paramString))
    {
      this.mMainLoadingView.setVisibility(0);
      this.mMainErrorView.setVisibility(8);
    }
    for (;;)
    {
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setListener(new LoadCategoryListener(paramString, paramInt));
      localHttpSetting.setFunctionId(this.functionId);
      localHttpSetting.putJsonParam("catelogyId", paramString);
      localHttpSetting.putJsonParam("level", paramInt);
      localHttpSetting.putJsonParam("isIcon", Boolean.valueOf(true));
      localHttpSetting.putJsonParam("isDescription", Boolean.valueOf(true));
      localHttpSetting.setLocalFileCache(true);
      localHttpSetting.setLocalFileCacheTime(3600000L);
      localHttpSetting.setEffect(0);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
      this.mSubLoadingView.setVisibility(0);
      this.mSubErrorView.setVisibility(8);
    }
  }
  
  private void loadCategoryPromotions(String paramString, int paramInt)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setListener(new LoadCategoryPromotionsListener(paramString));
    localHttpSetting.setFunctionId("getCmsPromotionsListByCatelogyID");
    localHttpSetting.putJsonParam("catelogyID", paramString);
    localHttpSetting.putJsonParam("level", paramInt);
    localHttpSetting.setEffect(0);
    localHttpSetting.setLocalFileCache(true);
    localHttpSetting.setLocalFileCacheTime(3600000L);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void loadCategoryPromotionsImage(String paramString1, String paramString2)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setType(5000);
    localHttpSetting.setListener(new LoadCategoryPromotionsImageListener(paramString2));
    localHttpSetting.setUrl(paramString1);
    localHttpSetting.setEffect(0);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void readyCorrectAnimation(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      ((ViewGroup.MarginLayoutParams)this.mMainListView.getLayoutParams()).setMargins(0, 0, 0, 0);
      this.mContainerLayout.requestLayout();
      this.mSubListView.setVisibility(4);
      hidePromotionsImage();
    }
    for (;;)
    {
      this.mStageDrawable.autoCorrectAnimation(paramInt);
      return;
      ((ViewGroup.MarginLayoutParams)this.mMainListView.getLayoutParams()).setMargins(-this.mIconRight, 0, this.mIconRight, 0);
      this.mContainerLayout.requestLayout();
      this.mSubListView.setVisibility(0);
    }
  }
  
  private void refreshUI()
  {
    this.mMainListDivider.refresh();
    this.mMainBackground.refresh();
    setupMainListChildView();
  }
  
  private Bitmap screenshots(View paramView)
  {
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramView.getWidth(), paramView.getHeight(), Bitmap.Config.ARGB_8888);
      paramView.draw(new Canvas(localBitmap));
      return localBitmap;
    }
    catch (Throwable localThrowable) {}
    return null;
  }
  
  private void screenshotsAll()
  {
    Bitmap localBitmap1 = (Bitmap)this.mMainListBitmap.get();
    if (localBitmap1 != null) {
      localBitmap1.recycle();
    }
    this.mMainListBitmapR = screenshots(this.mMainListView);
    this.mMainListBitmap = new SoftReference(this.mMainListBitmapR);
    Bitmap localBitmap2 = (Bitmap)this.mSubListBitmap.get();
    if (localBitmap2 != null) {
      localBitmap2.recycle();
    }
    this.mSubListBitmapR = screenshots(this.mSubListView);
    this.mSubListBitmap = new SoftReference(this.mSubListBitmapR);
    refreshUI();
    Bitmap localBitmap3 = (Bitmap)this.mMainListBitmapFinal.get();
    if (localBitmap3 != null) {
      localBitmap3.recycle();
    }
    this.mMainListBitmapFinalR = screenshots(this.mMainListView);
    this.mMainListBitmapFinal = new SoftReference(this.mMainListBitmapFinalR);
  }
  
  private void setAdapter()
  {
    this.mMainAdapter = new MySimpleAdapter(this, this.mMainListData, 2130903095, new String[] { "imgUrl", "name", "description" }, new int[] { 2131493216, 2131493217, 2131493218 })
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        TextView localTextView1 = (TextView)localView.findViewById(2131493217);
        if ((CategoryActivity.this.mShowLevel == 2) && (CategoryActivity.this.mMainListSelectedItemPosition != paramAnonymousInt)) {
          localTextView1.setTextColor(CategoryActivity.this.getResources().getColor(2131296307));
        }
        TextView localTextView2;
        for (;;)
        {
          localTextView2 = (TextView)localView.findViewById(2131493218);
          if (CategoryActivity.this.mShowLevel != 2) {
            break;
          }
          localTextView2.setVisibility(4);
          return localView;
          localTextView1.setTextColor(-16777216);
        }
        localTextView2.setVisibility(0);
        return localView;
      }
    };
    this.mMainAdapter.setAllowNoImage(false);
    this.mMainAdapter.setAssetsCache(true);
    this.mMainAdapter.registerDataSetObserver(new DataSetObserver()
    {
      public void onChanged()
      {
        if (CategoryActivity.this.mMainListData.size() > 0)
        {
          CategoryActivity.this.mMainStateView.setVisibility(8);
          return;
        }
        CategoryActivity.this.mMainStateView.setVisibility(0);
      }
    });
    this.mMainListView.setAdapter(this.mMainAdapter);
    this.mSubAdapter = new MySimpleAdapter(this, this.mSubListData, 2130903095, new String[] { "imgUrl", "name", "description" }, new int[] { 2131493216, 2131493217, 2131493218 })
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        return super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
      }
    };
    this.mSubAdapter.setAllowNoImage(false);
    this.mSubAdapter.registerDataSetObserver(new DataSetObserver()
    {
      public void onChanged()
      {
        CategoryActivity.this.setupSubStateView();
      }
    });
    this.mSubListView.setAdapter(this.mSubAdapter.getHeaderViewListAdapter());
  }
  
  private void setEvents()
  {
    this.mMainListView.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        CategoryActivity.this.mMainListFirstVisibleItem = paramAnonymousInt1;
        if ((paramAnonymousInt1 <= CategoryActivity.this.mMainListSelectedItemPosition) && (CategoryActivity.this.mMainListSelectedItemPosition < paramAnonymousInt1 + paramAnonymousInt2))
        {
          CategoryActivity.this.computeMainListSelectedItemCenterY();
          CategoryActivity.this.post(new Runnable()
          {
            public void run()
            {
              CategoryActivity.this.mStageDrawable.invalidateSelf();
            }
          });
        }
        while (CategoryActivity.this.mMainListSelectedItemY == null) {
          return;
        }
        CategoryActivity.this.mMainListSelectedItemY = null;
        CategoryActivity.this.post(new Runnable()
        {
          public void run()
          {
            CategoryActivity.this.mStageDrawable.invalidateSelf();
          }
        });
      }
      
      public void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
    });
    this.mMainListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        CategoryActivity.this.initIconRight(paramAnonymousView);
        CategoryActivity.this.initSubListLeft(paramAnonymousView);
        Catelogy localCatelogy = (Catelogy)CategoryActivity.this.mMainListData.get(paramAnonymousInt);
        CategoryActivity.this.categoryId = localCatelogy.getcId();
        CategoryActivity.this.mTitleView.setText(localCatelogy.getName());
        NewJLogUtil.onJMAEvent(CategoryActivity.this.getBaseContext(), "CategoryActivity2", CategoryActivity.this.getFirstCategoryParams(CategoryActivity.this.categoryId).toString());
        CategoryActivity.this.mMainListSelectedItemPosition = paramAnonymousInt;
        CategoryActivity.this.computeMainListSelectedItemCenterY();
        if (CategoryActivity.this.mShowLevel == 1)
        {
          CategoryActivity.this.mShowState = 3;
          CategoryActivity.this.screenshotsAll();
          CategoryActivity.this.readyCorrectAnimation(2);
        }
        for (;;)
        {
          CategoryActivity.this.mSubListData.clear();
          CategoryActivity.this.mSubAdapter.notifyDataSetChanged();
          CategoryActivity.this.loadCategory(CategoryActivity.this.categoryId, 1);
          CategoryActivity.this.loadCategoryPromotions(CategoryActivity.this.categoryId, 1);
          CategoryActivity.this.hidePromotionsImage();
          CategoryActivity.this.promotionId = "0";
          CategoryActivity.this.promotionName = "";
          return;
          CategoryActivity.this.setupMainListChildView();
          CategoryActivity.this.mStageDrawable.invalidateSelf();
        }
      }
    });
    this.mSubListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if ((paramAnonymousView == CategoryActivity.this.promotionsEntry) && (!CategoryActivity.this.promotionId.equals("0")))
        {
          Intent localIntent2 = new Intent(CategoryActivity.this, PromotionMessageActivity.class);
          Bundle localBundle2 = new Bundle();
          if (CategoryActivity.this.promotionName.equals("")) {
            CategoryActivity.this.promotionName = "促销专题";
          }
          localBundle2.putString("comeFrom", "category");
          localBundle2.putString("name", CategoryActivity.this.promotionName);
          localBundle2.putString("promotion_id", CategoryActivity.this.promotionId);
          localIntent2.putExtras(localBundle2);
          localIntent2.putExtra("com.360buy:navigationDisplayFlag", -1);
          CategoryActivity.this.startActivityInFrame(localIntent2);
        }
        Object localObject;
        do
        {
          return;
          localObject = CategoryActivity.this.mSubListView.getAdapter().getItem(paramAnonymousInt);
        } while (localObject == null);
        Catelogy localCatelogy = (Catelogy)localObject;
        if ((localCatelogy.isWantedToEbookM()) && (!TextUtils.isEmpty(localCatelogy.getAction())))
        {
          if ((CategoryActivity.this.ebookNewTip != null) && (CategoryActivity.this.ebookNewTip.getVisibility() == 0))
          {
            CategoryActivity.this.ebookNewTip.setVisibility(8);
            CommonUtil.setIsGuided("ebook_guide_tip");
          }
          JDEbookUtil.gotoEbookM(CategoryActivity.this, localCatelogy.getAction());
          return;
        }
        if (localCatelogy.isGoToMWithAction())
        {
          CommonUtil.toBrowserInFrame(CategoryActivity.this, localCatelogy.getAction(), new URLParamMap());
          return;
        }
        if (localCatelogy.isGoToMWithTo())
        {
          URLParamMap localURLParamMap = new URLParamMap();
          localURLParamMap.put("to", localCatelogy.getAction());
          if (localCatelogy.isWantedToJDGame()) {
            localURLParamMap.put("hasApp", JDGameUtil.checkJDGameHasExist(CategoryActivity.this));
          }
          CommonUtil.toBrowserInFrame(CategoryActivity.this, "to", localURLParamMap);
          return;
        }
        CategoryActivity.this.categoryId = localCatelogy.getcId();
        String str1 = localCatelogy.getfId();
        String str2 = CategoryActivity.this.categoryId;
        Intent localIntent1 = new Intent(CategoryActivity.this, CategoryListActivity.class);
        Bundle localBundle1 = new Bundle();
        localBundle1.putString("name", localCatelogy.getName());
        localBundle1.putString("levelFirst", str1);
        localBundle1.putString("levelSecond", str2);
        localBundle1.putString("cid", CategoryActivity.this.categoryId);
        localBundle1.putInt("cLevel", 2);
        localIntent1.putExtras(localBundle1);
        localIntent1.putExtra("com.360buy:navigationFlag", true);
        localIntent1.putExtra("com.360buy:navigationId", 2);
        CategoryActivity.this.startActivityInFrame(localIntent1);
      }
    });
    this.mMainLoadingBut.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        CategoryActivity.this.loadCategory("0", 0);
      }
    });
    this.mSubLoadingBut.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        CategoryActivity.this.loadCategory(CategoryActivity.this.categoryId, 1);
      }
    });
  }
  
  private void setShowLevelAndStateOnStop()
  {
    if (this.mShowState != 2) {
      switch (this.mShowLevel)
      {
      }
    }
    for (;;)
    {
      this.mShowState = 0;
      refreshUI();
      return;
      this.mShowLevel = 2;
      continue;
      this.mShowLevel = 1;
      this.mSubListData.clear();
      this.mSubAdapter.notifyDataSetChanged();
    }
  }
  
  private void setupMainListChildView()
  {
    switch (getShowLevelWithState())
    {
    default: 
      return;
    case 1: 
      for (int j = 0; j < this.mMainListView.getChildCount(); j++)
      {
        View localView2 = this.mMainListView.getChildAt(j);
        TextView localTextView2 = (TextView)localView2.findViewById(2131493217);
        ((TextView)localView2.findViewById(2131493218)).setVisibility(0);
        localTextView2.setTextColor(-16777216);
      }
    }
    int i = 0;
    label99:
    TextView localTextView1;
    if (i < this.mMainListView.getChildCount())
    {
      View localView1 = this.mMainListView.getChildAt(i);
      localTextView1 = (TextView)localView1.findViewById(2131493217);
      ((TextView)localView1.findViewById(2131493218)).setVisibility(4);
      if (i == this.mMainListSelectedItemPosition - this.mMainListFirstVisibleItem) {
        break label177;
      }
      localTextView1.setTextColor(getResources().getColor(2131296307));
    }
    for (;;)
    {
      i++;
      break label99;
      break;
      label177:
      localTextView1.setTextColor(-16777216);
    }
  }
  
  private void setupSubStateView()
  {
    if ((this.mShowLevel == 2) && (this.mShowState == 0) && (this.mSubListData.size() <= 0))
    {
      this.mSubStateView.setVisibility(0);
      return;
    }
    this.mSubStateView.setVisibility(8);
  }
  
  private void showPromotionsImage(final Bitmap paramBitmap)
  {
    if (this.promotionsEntry == null)
    {
      this.promotionsEntry = new FrameLayout(this.mSubListView.getContext());
      AbsListView.LayoutParams localLayoutParams = new AbsListView.LayoutParams(-2, -2);
      this.promotionsEntry.setLayoutParams(localLayoutParams);
      int i = DPIUtil.dip2px(3.0F);
      this.promotionsEntry.setPadding(0, i, 0, i);
      this.promotionsEntry.setBackgroundResource(2130837794);
      this.promotionsImageView = new ImageView(this.mSubListView.getContext())
      {
        protected void onMeasure(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          int i = View.MeasureSpec.getSize(paramAnonymousInt1);
          setMeasuredDimension(i, Math.round(i / 3.04F));
        }
      };
      this.promotionsEntry.addView(this.promotionsImageView, -1, -1);
    }
    post(new Runnable()
    {
      public void run()
      {
        if (CategoryActivity.this.promotionsEntry.getParent() == null)
        {
          CategoryActivity.this.promotionsImageView.setImageDrawable(new BitmapDrawable(CategoryActivity.this.promotionsEntry.getResources(), paramBitmap));
          CategoryActivity.this.mSubAdapter.addHeaderView(CategoryActivity.this.mSubListView, CategoryActivity.this.promotionsEntry);
        }
      }
    });
  }
  
  private void switchBitmap()
  {
    SoftReference localSoftReference = this.mMainListBitmap;
    this.mMainListBitmap = this.mMainListBitmapFinal;
    this.mMainListBitmapFinal = localSoftReference;
  }
  
  public Map<String, String> getFirstCategoryParams(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("categoryId", paramString);
    return localHashMap;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903093);
    findViews();
    this.mStageView.setOnTouchListener(new StageTouchListener(this));
    this.mStageDrawable = new StageDrawable(null);
    this.mStageView.setBackgroundDrawable(this.mStageDrawable);
    int i = DPIUtil.dip2px(1.0F);
    this.mMainListDivider = new DividerDrawable(2, 2, true, getResources().getColor(2131296310));
    this.mDivider_level_1 = new DividerDrawable(2, 2, true, getResources().getColor(2131296310));
    this.mMainListView.setDivider(this.mMainListDivider);
    this.mMainListView.setDividerHeight(i);
    this.mSubListView.setDivider(this.mDivider_level_1);
    this.mSubListView.setDividerHeight(i);
    this.mMainBackground = new BackgroundDrawable(null);
    this.mMainListView.setBackgroundDrawable(this.mMainBackground);
    this.mTitleView.setText(2131165663);
    setAdapter();
    setEvents();
    loadCategory("0", 0);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((4 == paramInt) && (this.mShowLevel == 2) && (this.mShowState == 0))
    {
      hideSubList();
      return true;
    }
    return false;
  }
  
  protected void onPause()
  {
    super.onPause();
    if (this.mMainListBitmapR != null)
    {
      this.mMainListBitmapR.recycle();
      this.mMainListBitmapR = null;
    }
    if (this.mMainListBitmapFinalR != null)
    {
      this.mMainListBitmapFinalR.recycle();
      this.mMainListBitmapFinalR = null;
    }
    if (this.mSubListBitmapR != null)
    {
      this.mSubListBitmapR.recycle();
      this.mSubListBitmapR = null;
    }
  }
  
  private class BackgroundDrawable
    extends Drawable
  {
    private int state = 1;
    
    private BackgroundDrawable() {}
    
    public void draw(Canvas paramCanvas)
    {
      if (this.state == 2)
      {
        paramCanvas.drawColor(CategoryActivity.this.getResources().getColor(2131296308));
        return;
      }
      paramCanvas.drawColor(-1);
    }
    
    public int getOpacity()
    {
      return 0;
    }
    
    public void refresh()
    {
      this.state = CategoryActivity.this.getShowLevelWithState();
    }
    
    public void setAlpha(int paramInt) {}
    
    public void setColorFilter(ColorFilter paramColorFilter) {}
  }
  
  private class DividerDrawable
    extends Drawable
  {
    private static final int STATE_HIDE = 0;
    private static final int STATE_SHOW = 1;
    private int color = -7829368;
    private boolean horizontal = true;
    private int intervalDoubled = 1;
    private Paint paint;
    private int pointDoubled = 2;
    private int state = 1;
    
    public DividerDrawable(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      this.pointDoubled = paramInt1;
      this.intervalDoubled = paramInt2;
      this.horizontal = paramBoolean;
      this.color = paramInt3;
    }
    
    public void draw(Canvas paramCanvas)
    {
      switch (this.state)
      {
      default: 
        return;
      }
      Rect localRect = getBounds();
      if (this.paint == null)
      {
        this.paint = new Paint();
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.color);
      }
      int i;
      label81:
      int j;
      label94:
      int i1;
      label124:
      int i2;
      label144:
      int i3;
      label157:
      int i4;
      label170:
      int i5;
      int i6;
      int i7;
      label201:
      label208:
      int i8;
      if (this.horizontal)
      {
        i = localRect.width();
        if (!this.horizontal) {
          break label263;
        }
        j = localRect.height();
        int k = j * this.pointDoubled;
        int m = j * this.intervalDoubled;
        int n = i / (k + m);
        i1 = 0;
        if (i1 < n)
        {
          if (!this.horizontal) {
            break label272;
          }
          i2 = localRect.top;
          if (!this.horizontal) {
            break label281;
          }
          i3 = localRect.bottom;
          if (!this.horizontal) {
            break label290;
          }
          i4 = localRect.left;
          i5 = i4 + i1 * (k + m);
          i6 = i5 + k;
          if (!this.horizontal) {
            break label299;
          }
          i7 = i5;
          if (!this.horizontal) {
            break label306;
          }
          if (!this.horizontal) {
            break label313;
          }
          i8 = i6;
          label219:
          if (!this.horizontal) {
            break label320;
          }
        }
      }
      for (;;)
      {
        paramCanvas.drawRect(new Rect(i7, i2, i8, i3), this.paint);
        i1++;
        break label124;
        break;
        i = localRect.height();
        break label81;
        label263:
        j = localRect.width();
        break label94;
        label272:
        i2 = localRect.left;
        break label144;
        label281:
        i3 = localRect.right;
        break label157;
        label290:
        i4 = localRect.top;
        break label170;
        label299:
        i7 = i2;
        break label201;
        label306:
        i2 = i5;
        break label208;
        label313:
        i8 = i3;
        break label219;
        label320:
        i3 = i6;
      }
    }
    
    public int getOpacity()
    {
      return 0;
    }
    
    public void refresh()
    {
      switch (CategoryActivity.this.getShowLevelWithState())
      {
      default: 
        return;
      case 1: 
        this.state = 1;
        return;
      }
      this.state = 0;
    }
    
    public void setAlpha(int paramInt) {}
    
    public void setColorFilter(ColorFilter paramColorFilter) {}
  }
  
  private class LoadCategoryListener
    implements HttpGroup.OnCommonListener
  {
    private String id;
    private int level;
    
    public LoadCategoryListener(String paramString, int paramInt)
    {
      this.id = paramString;
      this.level = paramInt;
    }
    
    private void showError()
    {
      CategoryActivity.this.post(new Runnable()
      {
        public void run()
        {
          if (CategoryActivity.LoadCategoryListener.this.level == 0)
          {
            CategoryActivity.this.mMainLoadingView.setVisibility(8);
            CategoryActivity.this.mMainErrorView.setVisibility(0);
            return;
          }
          CategoryActivity.this.mSubLoadingView.setVisibility(8);
          CategoryActivity.this.mSubErrorView.setVisibility(0);
        }
      });
    }
    
    private boolean validityCheck()
    {
      return CategoryActivity.this.categoryId.equals(this.id);
    }
    
    public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
    {
      if (!validityCheck()) {}
      do
      {
        return;
        CategoryActivity.this.jsonArrayPoxy = paramHttpResponse.getJSONObject().getJSONArrayOrNull("catelogyList");
        if ((CategoryActivity.this.jsonArrayPoxy == null) || (CategoryActivity.this.jsonArrayPoxy.length() == 0))
        {
          showError();
          return;
        }
        if (this.level == 0)
        {
          CategoryActivity.this.post(new Runnable()
          {
            public void run()
            {
              CategoryActivity.this.mMainListData.addAll(Catelogy.toList(CategoryActivity.this.jsonArrayPoxy, 0));
              CategoryActivity.this.mMainAdapter.notifyDataSetChanged();
              CategoryActivity.this.backgroupMakeCategoryImage(CategoryActivity.this.mMainListData);
            }
          });
          return;
        }
      } while (this.level != 1);
      CategoryActivity.this.post(new Runnable()
      {
        public void run()
        {
          CategoryActivity.this.mSubListData.addAll(Catelogy.toList(CategoryActivity.this.jsonArrayPoxy, 0));
          CategoryActivity.this.mSubAdapter.notifyDataSetChanged();
        }
      });
    }
    
    public void onError(HttpGroup.HttpError paramHttpError)
    {
      if (!validityCheck()) {
        return;
      }
      showError();
    }
    
    public void onReady(HttpGroup.HttpSettingParams paramHttpSettingParams) {}
  }
  
  private class LoadCategoryPromotionsImageListener
    implements HttpGroup.OnCommonListener
  {
    private String cId;
    
    public LoadCategoryPromotionsImageListener(String paramString)
    {
      this.cId = paramString;
    }
    
    private void gc() {}
    
    public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
    {
      if (!this.cId.equals(CategoryActivity.this.categoryId)) {
        return;
      }
      Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramHttpResponse), 0, 0);
      CategoryActivity.this.showPromotionsImage(localBitmap);
      gc();
    }
    
    public void onError(HttpGroup.HttpError paramHttpError)
    {
      gc();
    }
    
    public void onReady(HttpGroup.HttpSettingParams paramHttpSettingParams) {}
  }
  
  private class LoadCategoryPromotionsListener
    implements HttpGroup.OnCommonListener
  {
    private String cId;
    
    public LoadCategoryPromotionsListener(String paramString)
    {
      this.cId = paramString;
    }
    
    private void gc() {}
    
    public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
    {
      if (!this.cId.equals(CategoryActivity.this.categoryId)) {
        return;
      }
      JSONArrayPoxy localJSONArrayPoxy = paramHttpResponse.getJSONObject().getJSONArrayOrNull("cmsPromotionsList");
      if ((localJSONArrayPoxy == null) || (localJSONArrayPoxy.length() < 1))
      {
        gc();
        return;
      }
      JSONObjectProxy localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(0);
      if (localJSONObjectProxy == null)
      {
        gc();
        return;
      }
      CategoryActivity.this.promotionId = localJSONObjectProxy.getStringOrNull("promotion_id");
      CategoryActivity.this.promotionName = localJSONObjectProxy.getStringOrNull("promotion_name");
      String str = localJSONObjectProxy.getStringOrNull("imageUrl");
      if (str == null)
      {
        gc();
        return;
      }
      CategoryActivity.this.loadCategoryPromotionsImage(str, this.cId);
      gc();
    }
    
    public void onError(HttpGroup.HttpError paramHttpError)
    {
      gc();
    }
    
    public void onReady(HttpGroup.HttpSettingParams paramHttpSettingParams) {}
  }
  
  private class StageDrawable
    extends Drawable
  {
    private static final long DURATION_TIME = 240L;
    private Paint bitmapPaint = new Paint();
    private long durationTime = 240L;
    private int frameRate = 10;
    private boolean horizontalScrollConsumed = true;
    private float horizontalScrollOffsetX;
    private boolean isRunning = false;
    private float mainListCurrentLeft = 0.0F;
    private int mainListOffsetX;
    private int mainListOldCurrentAlpha = 255;
    private int mainListStartLeft;
    private double manualProportion = 0.0D;
    private long startTime;
    private float subListCurrentLeft = 0.0F;
    private int subListOffsetX;
    private int subListStartLeft;
    
    private StageDrawable() {}
    
    private void drawArrowLine(Canvas paramCanvas, float paramFloat)
    {
      Rect localRect = getBounds();
      Paint localPaint1 = new Paint();
      localPaint1.setColor(CategoryActivity.this.getResources().getColor(2131296286));
      localPaint1.setStyle(Paint.Style.FILL);
      Paint localPaint2 = new Paint();
      localPaint2.setStyle(Paint.Style.STROKE);
      localPaint2.setStrokeWidth(DPIUtil.dip2px(1.0F));
      localPaint2.setAntiAlias(true);
      int i = DPIUtil.dip2px(8.0F);
      int j = DPIUtil.dip2px(12.0F);
      if (CategoryActivity.this.mMainListSelectedItemY != null) {}
      Path localPath;
      for (int k = CategoryActivity.this.mMainListSelectedItemY.intValue();; k = -(j / 2))
      {
        int m = k - DPIUtil.dip2px(10.0F);
        int n = new Float(paramFloat - DPIUtil.dip2px(3.0F) - i).intValue();
        Point localPoint1 = new Point(n + i, m - j / 2);
        Point localPoint2 = new Point(n, m);
        Point localPoint3 = new Point(n + i, m + j / 2);
        localPath = new Path();
        localPath.moveTo(localPoint1.x, localRect.top - j);
        localPath.lineTo(localPoint1.x, localPoint1.y);
        localPath.lineTo(localPoint2.x, localPoint2.y);
        localPath.lineTo(localPoint3.x, localPoint3.y);
        localPath.lineTo(localPoint3.x, j + localRect.bottom);
        localPaint2.setColor(CategoryActivity.this.getResources().getColor(2131296309));
        localPaint2.setAlpha(10);
        paramCanvas.drawPath(localPath, localPaint2);
        localPath.offset(DPIUtil.dip2px(1.0F), 0.0F);
        localPaint2.setAlpha(25);
        paramCanvas.drawPath(localPath, localPaint2);
        localPath.offset(DPIUtil.dip2px(1.0F), 0.0F);
        localPaint2.setAlpha(50);
        paramCanvas.drawPath(localPath, localPaint2);
        localPath.offset(DPIUtil.dip2px(1.0F), 0.0F);
        localPaint2.setAlpha(120);
        paramCanvas.drawPath(localPath, localPaint2);
        localPath.offset(DPIUtil.dip2px(1.0F), 0.0F);
        localPaint2.setAlpha(255);
        paramCanvas.drawPath(localPath, localPaint2);
        if (!isRunning()) {
          break;
        }
        localPath.lineTo(localRect.right, j + localRect.bottom);
        localPath.lineTo(localRect.right, localRect.top - j);
        paramCanvas.drawPath(localPath, localPaint1);
        return;
      }
      RectF localRectF = new RectF();
      localPath.computeBounds(localRectF, false);
      localPath.lineTo(localRectF.right + DPIUtil.dip2px(2.0F), j + localRect.bottom);
      localPath.lineTo(localRectF.right + DPIUtil.dip2px(2.0F), localRect.top - j);
      paramCanvas.drawPath(localPath, localPaint1);
    }
    
    public void autoCorrectAnimation(int paramInt)
    {
      init(paramInt);
      this.startTime = System.currentTimeMillis();
      this.isRunning = true;
      CategoryActivity.this.post(new Runnable()
      {
        public void run()
        {
          if (CategoryActivity.StageDrawable.this.isRunning()) {
            CategoryActivity.this.post(this, CategoryActivity.StageDrawable.this.frameRate);
          }
          CategoryActivity.StageDrawable.this.invalidateSelf();
        }
      }, this.frameRate);
    }
    
    public void draw(Canvas paramCanvas)
    {
      if (isRunning())
      {
        double d1 = (System.currentTimeMillis() - this.startTime) / this.durationTime;
        if (this.manualProportion != 0.0D) {
          d1 = this.manualProportion + d1 * (1.0D - this.manualProportion);
        }
        double d2 = Math.min(1.0D, d1);
        if (d2 >= 1.0D)
        {
          this.durationTime = 240L;
          this.manualProportion = 0.0D;
          this.isRunning = false;
          CategoryActivity.this.setShowLevelAndStateOnStop();
          CategoryActivity.this.setupSubStateView();
        }
        this.mainListCurrentLeft = new Double(this.mainListStartLeft + d2 * this.mainListOffsetX).floatValue();
        this.subListCurrentLeft = new Double(this.subListStartLeft + d2 * this.subListOffsetX).floatValue();
        this.mainListOldCurrentAlpha = new Double(255.0D - 255.0D * d2).intValue();
        Bitmap localBitmap4 = (Bitmap)CategoryActivity.this.mMainListBitmapFinal.get();
        if (ImageUtil.isBitmapCanUse(localBitmap4))
        {
          this.bitmapPaint.setAlpha(255);
          paramCanvas.drawBitmap(localBitmap4, this.mainListCurrentLeft, 0.0F, this.bitmapPaint);
        }
        Bitmap localBitmap5 = (Bitmap)CategoryActivity.this.mMainListBitmap.get();
        if (ImageUtil.isBitmapCanUse(localBitmap5))
        {
          this.bitmapPaint.setAlpha(this.mainListOldCurrentAlpha);
          paramCanvas.drawBitmap(localBitmap5, this.mainListCurrentLeft, 0.0F, this.bitmapPaint);
        }
        drawArrowLine(paramCanvas, this.subListCurrentLeft);
        Bitmap localBitmap6 = (Bitmap)CategoryActivity.this.mSubListBitmap.get();
        if (ImageUtil.isBitmapCanUse(localBitmap6))
        {
          this.bitmapPaint.setAlpha(255);
          paramCanvas.drawBitmap(localBitmap6, this.subListCurrentLeft, 0.0F, this.bitmapPaint);
        }
      }
      for (;;)
      {
        this.horizontalScrollConsumed = true;
        return;
        if (!this.horizontalScrollConsumed)
        {
          if (CategoryActivity.this.mShowLevel == 2) {
            if (this.horizontalScrollOffsetX < 0.0F) {
              this.horizontalScrollOffsetX = 0.0F;
            }
          }
          for (;;)
          {
            this.subListCurrentLeft = (this.subListStartLeft + this.horizontalScrollOffsetX);
            this.manualProportion = Math.min(1.0D, this.horizontalScrollOffsetX / this.subListOffsetX);
            this.mainListCurrentLeft = new Double(this.mainListStartLeft + this.mainListOffsetX * this.manualProportion).floatValue();
            this.mainListOldCurrentAlpha = new Double(255.0D - 255.0D * this.manualProportion).intValue();
            Bitmap localBitmap1 = (Bitmap)CategoryActivity.this.mMainListBitmapFinal.get();
            if (ImageUtil.isBitmapCanUse(localBitmap1))
            {
              this.bitmapPaint.setAlpha(255);
              paramCanvas.drawBitmap(localBitmap1, this.mainListCurrentLeft, 0.0F, this.bitmapPaint);
            }
            Bitmap localBitmap2 = (Bitmap)CategoryActivity.this.mMainListBitmap.get();
            if (ImageUtil.isBitmapCanUse(localBitmap2))
            {
              this.bitmapPaint.setAlpha(this.mainListOldCurrentAlpha);
              paramCanvas.drawBitmap(localBitmap2, this.mainListCurrentLeft, 0.0F, this.bitmapPaint);
            }
            drawArrowLine(paramCanvas, this.subListCurrentLeft);
            Bitmap localBitmap3 = (Bitmap)CategoryActivity.this.mSubListBitmap.get();
            if (!ImageUtil.isBitmapCanUse(localBitmap3)) {
              break;
            }
            this.bitmapPaint.setAlpha(255);
            paramCanvas.drawBitmap(localBitmap3, this.subListCurrentLeft, 0.0F, this.bitmapPaint);
            break;
            if (this.horizontalScrollOffsetX > 0.0F) {
              this.horizontalScrollOffsetX = 0.0F;
            }
          }
        }
        if (CategoryActivity.this.mShowLevel == 2)
        {
          this.subListCurrentLeft = CategoryActivity.this.mSubListView.getLeft();
          drawArrowLine(paramCanvas, this.subListCurrentLeft);
        }
      }
    }
    
    public int getOpacity()
    {
      return 0;
    }
    
    public void horizontalScroll(float paramFloat)
    {
      this.horizontalScrollOffsetX = (paramFloat + this.horizontalScrollOffsetX);
      this.horizontalScrollConsumed = false;
      invalidateSelf();
    }
    
    public void horizontalScrollStop(float paramFloat)
    {
      int i;
      if (paramFloat > DPIUtil.dip2px(600.0F))
      {
        i = 1;
        CategoryActivity.this.mShowState = 3;
        switch (i)
        {
        }
      }
      for (;;)
      {
        this.horizontalScrollOffsetX = 0.0F;
        return;
        if (paramFloat < -DPIUtil.dip2px(600.0F))
        {
          i = 2;
          CategoryActivity.this.mShowState = 2;
          break;
        }
        if (this.manualProportion < 0.5D)
        {
          if (CategoryActivity.this.mShowLevel == 2) {}
          for (i = 2;; i = 1)
          {
            CategoryActivity.this.mShowState = 2;
            break;
          }
        }
        if (CategoryActivity.this.mShowLevel == 2) {}
        for (i = 1;; i = 2)
        {
          CategoryActivity.this.mShowState = 3;
          break;
        }
        CategoryActivity.this.readyCorrectAnimation(1);
        continue;
        this.manualProportion = (1.0D - this.manualProportion);
        CategoryActivity.this.switchBitmap();
        CategoryActivity.this.readyCorrectAnimation(2);
      }
    }
    
    public void init(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return;
      case 1: 
        this.mainListStartLeft = (-CategoryActivity.this.mIconRight);
        this.mainListOffsetX = CategoryActivity.this.mIconRight;
        this.subListStartLeft = CategoryActivity.this.mSubListView.getLeft();
        this.subListOffsetX = CategoryActivity.this.mSubListView.getWidth();
        return;
      }
      this.mainListStartLeft = 0;
      this.mainListOffsetX = (-CategoryActivity.this.mIconRight);
      this.subListStartLeft = CategoryActivity.this.mSubListView.getRight();
      this.subListOffsetX = (-(CategoryActivity.this.mSubListView.getRight() - CategoryActivity.this.mSubListLeft));
    }
    
    public boolean isRunning()
    {
      return this.isRunning;
    }
    
    public void setAlpha(int paramInt) {}
    
    public void setColorFilter(ColorFilter paramColorFilter) {}
  }
  
  private class StageTouchListener
    implements View.OnTouchListener, GestureDetector.OnGestureListener
  {
    private static final int SCROLL_STATE_DEFAULT = 0;
    private static final int SCROLL_STATE_HORIZONTAL = 1;
    private static final int SCROLL_STATE_NOT_HORIZONTAL = 2;
    private int ScrollState = 0;
    private GestureDetector gestureDetector = new GestureDetector(paramContext, this);
    
    public StageTouchListener(Context paramContext) {}
    
    public boolean onDown(MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      if (this.ScrollState == 1) {
        CategoryActivity.this.mStageDrawable.horizontalScrollStop(paramFloat1);
      }
      this.ScrollState = 0;
      return true;
    }
    
    public void onLongPress(MotionEvent paramMotionEvent) {}
    
    public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      if (this.ScrollState == 0)
      {
        if ((Math.abs(paramFloat1) <= Math.abs(paramFloat2)) || (CategoryActivity.this.mShowLevel != 2)) {
          break label109;
        }
        this.ScrollState = 1;
        CategoryActivity.this.mShowState = 1;
        if (CategoryActivity.this.mShowLevel != 2) {
          break label95;
        }
        CategoryActivity.this.mStageDrawable.init(1);
        CategoryActivity.this.screenshotsAll();
      }
      for (;;)
      {
        if (this.ScrollState == 1) {
          CategoryActivity.this.mStageDrawable.horizontalScroll(-paramFloat1);
        }
        return false;
        label95:
        CategoryActivity.this.mStageDrawable.init(2);
        break;
        label109:
        this.ScrollState = 2;
      }
    }
    
    public void onShowPress(MotionEvent paramMotionEvent) {}
    
    public boolean onSingleTapUp(MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      int i = this.ScrollState;
      this.gestureDetector.onTouchEvent(paramMotionEvent);
      if (this.ScrollState != 1) {
        CategoryActivity.this.mContainerLayout.dispatchTouchEvent(paramMotionEvent);
      }
      for (;;)
      {
        switch (paramMotionEvent.getAction())
        {
        default: 
          return true;
          if ((i == 0) && (this.ScrollState == 1))
          {
            MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
            localMotionEvent.setAction(3);
            CategoryActivity.this.mContainerLayout.dispatchTouchEvent(localMotionEvent);
          }
          break;
        }
      }
      onUp(paramMotionEvent);
      return true;
    }
    
    public boolean onUp(MotionEvent paramMotionEvent)
    {
      if (this.ScrollState == 1) {
        CategoryActivity.this.mStageDrawable.horizontalScrollStop(0.0F);
      }
      this.ScrollState = 0;
      return true;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.category.CategoryActivity
 * JD-Core Version:    0.7.0.1
 */