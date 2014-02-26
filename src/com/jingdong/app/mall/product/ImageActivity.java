package com.jingdong.app.mall.product;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher.ViewFactory;
import com.jingdong.common.entity.Image;
import com.jingdong.common.entity.OrderComment;
import com.jingdong.common.entity.Product;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.HttpGroupUtils;
import com.jingdong.common.utils.Log;
import com.jingdong.common.utils.NewJLogUtil;
import com.jingdong.common.utils.TouchImageView;
import com.jingdong.common.utils.TouchImageView.ControllListener;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;
import com.novoda.imageloader.core.bitmap.BitmapUtil;
import com.novoda.imageloader.core.cache.LruBitmapCache;
import java.io.File;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class ImageActivity
  extends FragmentActivity
{
  private static final int BIG_IMAGE_MAX_HEIGHT = 1280;
  private static final int BIG_IMAGE_MAX_WIDTH = 800;
  private static final String TAG = "ImageActivity";
  static SparseArrayCompat<String> mCacheImagePaths;
  ImageButton mFinishButton;
  RelativeLayout mIndicator;
  ImageButton mSaveButton;
  ViewPager mViewPager;
  
  public static void fadeIn(View paramView)
  {
    if (paramView.getVisibility() == 0) {
      return;
    }
    paramView.setVisibility(0);
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation.setDuration(400L);
    paramView.startAnimation(localAlphaAnimation);
  }
  
  public static void fadeOut(View paramView)
  {
    if (paramView.getVisibility() != 0) {
      return;
    }
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(400L);
    paramView.startAnimation(localAlphaAnimation);
    paramView.setVisibility(8);
  }
  
  /* Error */
  private static void save(Context paramContext, File paramFile)
  {
    // Byte code:
    //   0: ldc 68
    //   2: invokestatic 74	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   5: invokevirtual 80	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   8: ifne +14 -> 22
    //   11: aload_0
    //   12: ldc 82
    //   14: iconst_0
    //   15: invokestatic 88	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   18: invokevirtual 91	android/widget/Toast:show	()V
    //   21: return
    //   22: aload_1
    //   23: ifnull +17 -> 40
    //   26: aload_1
    //   27: invokevirtual 97	java/io/File:exists	()Z
    //   30: ifeq +10 -> 40
    //   33: aload_1
    //   34: invokevirtual 100	java/io/File:canRead	()Z
    //   37: ifne +14 -> 51
    //   40: aload_0
    //   41: ldc 102
    //   43: iconst_0
    //   44: invokestatic 88	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   47: invokevirtual 91	android/widget/Toast:show	()V
    //   50: return
    //   51: getstatic 107	android/os/Build$VERSION:SDK_INT	I
    //   54: istore_2
    //   55: aconst_null
    //   56: astore_3
    //   57: iload_2
    //   58: bipush 8
    //   60: if_icmplt +13 -> 73
    //   63: getstatic 110	android/os/Environment:DIRECTORY_DCIM	Ljava/lang/String;
    //   66: invokestatic 114	android/os/Environment:getExternalStoragePublicDirectory	(Ljava/lang/String;)Ljava/io/File;
    //   69: invokevirtual 117	java/io/File:toString	()Ljava/lang/String;
    //   72: astore_3
    //   73: aconst_null
    //   74: astore 4
    //   76: aload_3
    //   77: ifnull +13 -> 90
    //   80: new 93	java/io/File
    //   83: dup
    //   84: aload_3
    //   85: invokespecial 120	java/io/File:<init>	(Ljava/lang/String;)V
    //   88: astore 4
    //   90: aload 4
    //   92: ifnonnull +17 -> 109
    //   95: new 93	java/io/File
    //   98: dup
    //   99: invokestatic 124	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   102: ldc 126
    //   104: invokespecial 129	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   107: astore 4
    //   109: new 93	java/io/File
    //   112: dup
    //   113: aload 4
    //   115: ldc 131
    //   117: invokespecial 129	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   120: astore 5
    //   122: aload 5
    //   124: invokevirtual 97	java/io/File:exists	()Z
    //   127: ifne +22 -> 149
    //   130: aload 5
    //   132: invokevirtual 134	java/io/File:mkdirs	()Z
    //   135: ifne +14 -> 149
    //   138: aload_0
    //   139: ldc 102
    //   141: iconst_0
    //   142: invokestatic 88	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   145: invokevirtual 91	android/widget/Toast:show	()V
    //   148: return
    //   149: aload 5
    //   151: invokevirtual 137	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   154: astore 6
    //   156: aload_1
    //   157: invokevirtual 140	java/io/File:getName	()Ljava/lang/String;
    //   160: astore 7
    //   162: aload 7
    //   164: iconst_0
    //   165: aload 7
    //   167: bipush 46
    //   169: invokevirtual 144	java/lang/String:indexOf	(I)I
    //   172: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   175: astore 8
    //   177: new 150	java/lang/StringBuilder
    //   180: dup
    //   181: aload 6
    //   183: invokestatic 154	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   186: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   189: getstatic 159	java/io/File:separatorChar	C
    //   192: invokevirtual 163	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   195: aload 8
    //   197: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: ldc 168
    //   202: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   208: astore 9
    //   210: new 93	java/io/File
    //   213: dup
    //   214: aload 9
    //   216: invokespecial 120	java/io/File:<init>	(Ljava/lang/String;)V
    //   219: astore 10
    //   221: sipush 8192
    //   224: newarray byte
    //   226: astore 11
    //   228: aconst_null
    //   229: astore 12
    //   231: aconst_null
    //   232: astore 13
    //   234: new 171	java/io/FileInputStream
    //   237: dup
    //   238: aload_1
    //   239: invokespecial 174	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   242: astore 14
    //   244: new 176	java/io/FileOutputStream
    //   247: dup
    //   248: aload 10
    //   250: invokespecial 177	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   253: astore 15
    //   255: aload 14
    //   257: aload 11
    //   259: invokevirtual 181	java/io/FileInputStream:read	([B)I
    //   262: istore 24
    //   264: iload 24
    //   266: ifge +64 -> 330
    //   269: aload 15
    //   271: invokevirtual 184	java/io/FileOutputStream:flush	()V
    //   274: aload 14
    //   276: ifnull +8 -> 284
    //   279: aload 14
    //   281: invokevirtual 187	java/io/FileInputStream:close	()V
    //   284: aload 15
    //   286: ifnull +219 -> 505
    //   289: aload 15
    //   291: invokevirtual 188	java/io/FileOutputStream:close	()V
    //   294: aload 10
    //   296: ifnull +150 -> 446
    //   299: aload_0
    //   300: new 150	java/lang/StringBuilder
    //   303: dup
    //   304: ldc 190
    //   306: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   309: aload 6
    //   311: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   314: ldc 192
    //   316: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   319: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   322: iconst_0
    //   323: invokestatic 88	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   326: invokevirtual 91	android/widget/Toast:show	()V
    //   329: return
    //   330: aload 15
    //   332: aload 11
    //   334: iconst_0
    //   335: iload 24
    //   337: invokevirtual 196	java/io/FileOutputStream:write	([BII)V
    //   340: goto -85 -> 255
    //   343: astore 19
    //   345: aload 15
    //   347: astore 20
    //   349: aload 14
    //   351: astore 21
    //   353: aload 21
    //   355: ifnull +8 -> 363
    //   358: aload 21
    //   360: invokevirtual 187	java/io/FileInputStream:close	()V
    //   363: aconst_null
    //   364: astore 10
    //   366: aload 20
    //   368: ifnull -74 -> 294
    //   371: aload 20
    //   373: invokevirtual 188	java/io/FileOutputStream:close	()V
    //   376: aconst_null
    //   377: astore 10
    //   379: goto -85 -> 294
    //   382: astore 22
    //   384: aconst_null
    //   385: astore 10
    //   387: goto -93 -> 294
    //   390: astore 23
    //   392: goto -29 -> 363
    //   395: astore 16
    //   397: aload 12
    //   399: ifnull +8 -> 407
    //   402: aload 12
    //   404: invokevirtual 187	java/io/FileInputStream:close	()V
    //   407: aload 13
    //   409: ifnull +8 -> 417
    //   412: aload 13
    //   414: invokevirtual 188	java/io/FileOutputStream:close	()V
    //   417: aload 16
    //   419: athrow
    //   420: astore 18
    //   422: goto -15 -> 407
    //   425: astore 17
    //   427: goto -10 -> 417
    //   430: astore 26
    //   432: aconst_null
    //   433: astore 10
    //   435: goto -151 -> 284
    //   438: astore 25
    //   440: aconst_null
    //   441: astore 10
    //   443: goto -149 -> 294
    //   446: aload_0
    //   447: ldc 102
    //   449: iconst_0
    //   450: invokestatic 88	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   453: invokevirtual 91	android/widget/Toast:show	()V
    //   456: return
    //   457: astore 16
    //   459: aload 14
    //   461: astore 12
    //   463: aconst_null
    //   464: astore 13
    //   466: goto -69 -> 397
    //   469: astore 16
    //   471: aload 15
    //   473: astore 13
    //   475: aload 14
    //   477: astore 12
    //   479: goto -82 -> 397
    //   482: astore 28
    //   484: aconst_null
    //   485: astore 21
    //   487: aconst_null
    //   488: astore 20
    //   490: goto -137 -> 353
    //   493: astore 27
    //   495: aload 14
    //   497: astore 21
    //   499: aconst_null
    //   500: astore 20
    //   502: goto -149 -> 353
    //   505: goto -211 -> 294
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	508	0	paramContext	Context
    //   0	508	1	paramFile	File
    //   54	7	2	i	int
    //   56	29	3	str1	String
    //   74	40	4	localFile1	File
    //   120	30	5	localFile2	File
    //   154	156	6	str2	String
    //   160	6	7	str3	String
    //   175	21	8	str4	String
    //   208	7	9	str5	String
    //   219	223	10	localFile3	File
    //   226	107	11	arrayOfByte	byte[]
    //   229	249	12	localObject1	Object
    //   232	242	13	localObject2	Object
    //   242	254	14	localFileInputStream1	java.io.FileInputStream
    //   253	219	15	localFileOutputStream1	java.io.FileOutputStream
    //   395	23	16	localObject3	Object
    //   457	1	16	localObject4	Object
    //   469	1	16	localObject5	Object
    //   425	1	17	localIOException1	java.io.IOException
    //   420	1	18	localIOException2	java.io.IOException
    //   343	1	19	localException1	java.lang.Exception
    //   347	154	20	localFileOutputStream2	java.io.FileOutputStream
    //   351	147	21	localFileInputStream2	java.io.FileInputStream
    //   382	1	22	localIOException3	java.io.IOException
    //   390	1	23	localIOException4	java.io.IOException
    //   262	74	24	j	int
    //   438	1	25	localIOException5	java.io.IOException
    //   430	1	26	localIOException6	java.io.IOException
    //   493	1	27	localException2	java.lang.Exception
    //   482	1	28	localException3	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   255	264	343	java/lang/Exception
    //   269	274	343	java/lang/Exception
    //   330	340	343	java/lang/Exception
    //   371	376	382	java/io/IOException
    //   358	363	390	java/io/IOException
    //   234	244	395	finally
    //   402	407	420	java/io/IOException
    //   412	417	425	java/io/IOException
    //   279	284	430	java/io/IOException
    //   289	294	438	java/io/IOException
    //   244	255	457	finally
    //   255	264	469	finally
    //   269	274	469	finally
    //   330	340	469	finally
    //   234	244	482	java/lang/Exception
    //   244	255	493	java/lang/Exception
  }
  
  public void checkSaveState()
  {
    if ((this.mSaveButton == null) || (mCacheImagePaths == null)) {}
    while (this.mViewPager == null) {
      return;
    }
    int i = this.mViewPager.getCurrentItem();
    if (mCacheImagePaths.get(i) != null)
    {
      this.mSaveButton.setEnabled(true);
      return;
    }
    this.mSaveButton.setEnabled(false);
  }
  
  public Map<String, String> getParams()
  {
    return null;
  }
  
  public String getParamsString()
  {
    Map localMap = getParams();
    if (localMap == null) {
      return "";
    }
    return localMap.toString();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903160);
    setRequestedOrientation(1);
    NewJLogUtil.onJMAEvent(getBaseContext(), getClass().getName(), getParamsString());
    Bundle localBundle = getIntent().getExtras();
    i = localBundle.getInt("position");
    Product localProduct = (Product)localBundle.getSerializable("product");
    OrderComment localOrderComment = (OrderComment)localBundle.getSerializable("orderComment");
    if (localProduct != null) {}
    for (List localList = localProduct.getImageList();; localList = localOrderComment.getImageList())
    {
      int j = 0;
      if (localList != null) {
        j = localList.size();
      }
      if (j > 9) {
        GlobalImageCache.getLruBitmapCache().cleanMost();
      }
      mCacheImagePaths = new SparseArrayCompat();
      try
      {
        f1 = getResources().getDimension(2131427475);
        float f4 = getResources().getDimension(2131427476);
        f2 = f4;
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        for (;;)
        {
          final float f3;
          TextSwitcher localTextSwitcher;
          TextView localTextView;
          StringBuilder localStringBuilder;
          float f1 = 16.0F;
          float f2 = 12.0F;
          continue;
          int k = i;
          continue;
          localTextView.setText("/0");
          localTextSwitcher.setCurrentText("0");
        }
      }
      f3 = f1;
      this.mIndicator = ((RelativeLayout)findViewById(2131493554));
      localTextSwitcher = (TextSwitcher)this.mIndicator.findViewById(2131493556);
      localTextSwitcher.setFactory(new ViewSwitcher.ViewFactory()
      {
        public View makeView()
        {
          TextView localTextView = new TextView(ImageActivity.this);
          localTextView.setGravity(49);
          localTextView.setTextSize(f3);
          localTextView.setTextColor(ImageActivity.this.getResources().getColor(2131296368));
          localTextView.setSingleLine(true);
          return localTextView;
        }
      });
      localTextView = (TextView)this.mIndicator.findViewById(2131493557);
      localTextView.setTextSize(f2);
      localTextView.setTextColor(getResources().getColor(2131296368));
      if (localList == null) {
        break label446;
      }
      localTextView.setText("/" + localList.size());
      localStringBuilder = new StringBuilder();
      if (i > 0) {
        break;
      }
      k = 1;
      localTextSwitcher.setCurrentText(k);
      this.mViewPager = ((ViewPager)findViewById(2131493553));
      this.mViewPager.setBackgroundColor(-1);
      new ImageAdapter(this, this.mViewPager, localList).setPageIndexTS(localTextSwitcher);
      this.mSaveButton = ((ImageButton)findViewById(2131493558));
      this.mSaveButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (ImageActivity.mCacheImagePaths == null) {}
          int i;
          do
          {
            return;
            i = ImageActivity.this.mViewPager.getCurrentItem();
          } while (ImageActivity.mCacheImagePaths.get(i) == null);
          ImageActivity.save(ImageActivity.this, new File((String)ImageActivity.mCacheImagePaths.get(i)));
        }
      });
      this.mViewPager.setCurrentItem(i);
      checkSaveState();
      this.mFinishButton = ((ImageButton)findViewById(2131493559));
      this.mFinishButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ImageActivity.this.finish();
        }
      });
      return;
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (mCacheImagePaths != null)
    {
      mCacheImagePaths.clear();
      mCacheImagePaths = null;
    }
  }
  
  public void singleTapUp()
  {
    if (!isFinishing()) {
      finish();
    }
  }
  
  public static class ImageAdapter
    extends FragmentStatePagerAdapter
    implements ViewPager.OnPageChangeListener
  {
    ImageActivity mActivity;
    List<Image> mImages;
    TextSwitcher mPageIndexTS;
    ViewPager mViewPager;
    
    public ImageAdapter(FragmentActivity paramFragmentActivity, ViewPager paramViewPager, List<Image> paramList)
    {
      super();
      this.mActivity = ((ImageActivity)paramFragmentActivity);
      this.mImages = paramList;
      this.mViewPager = paramViewPager;
      this.mViewPager.setAdapter(this);
      this.mViewPager.setOnPageChangeListener(this);
    }
    
    public int getCount()
    {
      if (this.mImages != null) {
        return this.mImages.size();
      }
      return 0;
    }
    
    public Fragment getItem(int paramInt)
    {
      if (this.mImages != null) {}
      for (Image localImage = (Image)this.mImages.get(paramInt);; localImage = null) {
        return ImageActivity.ImageFragment.newInstance(paramInt, localImage);
      }
    }
    
    public void onPageScrollStateChanged(int paramInt) {}
    
    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
    
    public void onPageSelected(int paramInt)
    {
      if (this.mPageIndexTS != null) {
        this.mPageIndexTS.setText(paramInt + 1);
      }
      this.mActivity.checkSaveState();
    }
    
    public void setPageIndexTS(TextSwitcher paramTextSwitcher)
    {
      this.mPageIndexTS = paramTextSwitcher;
    }
  }
  
  public static class ImageFragment
    extends Fragment
  {
    static final int INTERNAL_CONTENT_CONTAINER_ID = 16711682;
    static final int INTERNAL_CONTENT_ID = 16711683;
    static final int INTERNAL_ERROR_CONTAINER_ID = 16711684;
    static final int INTERNAL_PROGRESS_CONTAINER_ID = 16711681;
    boolean isLoading = false;
    ImageActivity mActivity;
    GlobalImageCache.BitmapDigest mBitmapDigest;
    View mContentContainer;
    boolean mContentShown = true;
    View mErrorContainer;
    HttpGroup mHttpGroup;
    Image mImage;
    int mPos;
    View mProgressContainer;
    
    static ImageFragment newInstance(int paramInt, Image paramImage)
    {
      ImageFragment localImageFragment = new ImageFragment();
      Bundle localBundle = new Bundle();
      localBundle.putInt("pos", paramInt);
      localBundle.putSerializable("image", paramImage);
      localImageFragment.setArguments(localBundle);
      return localImageFragment;
    }
    
    private void setContentShown(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    {
      int i = 8;
      this.mProgressContainer = getView().findViewById(16711681);
      this.mContentContainer = getView().findViewById(16711682);
      this.mErrorContainer = getView().findViewById(16711684);
      this.mContentShown = paramBoolean1;
      if (paramBoolean1)
      {
        View localView3;
        label78:
        int j;
        label101:
        View localView2;
        if (paramBoolean2)
        {
          ImageActivity.fadeOut(this.mProgressContainer);
          if (paramBoolean3)
          {
            localView3 = this.mErrorContainer;
            ImageActivity.fadeIn(localView3);
            this.mProgressContainer.setVisibility(i);
            View localView1 = this.mContentContainer;
            if (!paramBoolean3) {
              break label159;
            }
            j = i;
            localView1.setVisibility(j);
            localView2 = this.mErrorContainer;
            if (paramBoolean3) {
              break label165;
            }
          }
        }
        for (;;)
        {
          localView2.setVisibility(i);
          return;
          localView3 = this.mContentContainer;
          break;
          this.mProgressContainer.clearAnimation();
          this.mContentContainer.clearAnimation();
          this.mErrorContainer.clearAnimation();
          break label78;
          label159:
          j = 0;
          break label101;
          label165:
          i = 0;
        }
      }
      if (paramBoolean2)
      {
        ImageActivity.fadeIn(this.mProgressContainer);
        ImageActivity.fadeOut(this.mContentContainer);
        ImageActivity.fadeOut(this.mErrorContainer);
      }
      for (;;)
      {
        this.mProgressContainer.setVisibility(0);
        this.mContentContainer.setVisibility(i);
        this.mErrorContainer.setVisibility(i);
        return;
        this.mProgressContainer.clearAnimation();
        this.mContentContainer.clearAnimation();
        this.mErrorContainer.clearAnimation();
      }
    }
    
    private void showImage(Image paramImage)
    {
      if ((this.mActivity == null) || (this.mActivity.isFinishing())) {
        return;
      }
      showImage((TouchImageView)getView().findViewById(16711682).findViewById(16711683), paramImage);
    }
    
    private void showImage(TouchImageView paramTouchImageView, final Image paramImage)
    {
      if (ImageActivity.mCacheImagePaths == null) {}
      HttpGroup.HttpSetting localHttpSetting;
      do
      {
        do
        {
          do
          {
            return;
          } while (paramTouchImageView == null);
          this.mActivity.checkSaveState();
          setContentShown(false, false, false);
          if ((paramImage == null) || (TextUtils.isEmpty(paramImage.getBig())))
          {
            setContentShown(true, true, true);
            return;
          }
          if (this.mBitmapDigest != null)
          {
            Bitmap localBitmap = GlobalImageCache.getImageState(this.mBitmapDigest).getBitmap();
            if ((localBitmap != null) && (!localBitmap.isRecycled()))
            {
              paramTouchImageView.setImageBitmap(localBitmap);
              this.mActivity.checkSaveState();
              setContentShown(true, false, false);
              return;
            }
          }
          this.mBitmapDigest = null;
        } while (this.isLoading);
        this.isLoading = true;
        ImageActivity.mCacheImagePaths.remove(this.mPos);
        localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setEffect(0);
        localHttpSetting.setUrl(paramImage.getBig());
        localHttpSetting.setListener(new HttpGroup.OnCommonListener()
        {
          public void onEnd(final HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            if (ImageActivity.ImageFragment.this.mActivity == null) {
              return;
            }
            ImageActivity.ImageFragment.this.mActivity.runOnUiThread(new Runnable()
            {
              public void run()
              {
                if (ImageActivity.ImageFragment.this.mActivity.isFinishing()) {}
                do
                {
                  do
                  {
                    return;
                  } while (ImageActivity.mCacheImagePaths == null);
                  ImageActivity.ImageFragment.this.isLoading = false;
                } while ((ImageActivity.ImageFragment.this.isRemoving()) || (ImageActivity.ImageFragment.this.isDetached()) || (!ImageActivity.ImageFragment.this.isVisible()));
                HttpGroup.HttpResponse localHttpResponse = paramAnonymousHttpResponse;
                Bitmap localBitmap1 = null;
                if (localHttpResponse != null)
                {
                  File localFile = paramAnonymousHttpResponse.getSaveFile();
                  localBitmap1 = null;
                  if (localFile != null)
                  {
                    View localView = ImageActivity.ImageFragment.this.getView();
                    localBitmap1 = null;
                    if (localView != null) {
                      localBitmap1 = new BitmapUtil().createBitmapWithClean(paramAnonymousHttpResponse.getSaveFile(), Math.min(ImageActivity.ImageFragment.this.getView().getWidth(), 800), Math.min(ImageActivity.ImageFragment.this.getView().getHeight(), 1280), false);
                    }
                  }
                }
                if ((localBitmap1 == null) || (localBitmap1.isRecycled()))
                {
                  ImageActivity.ImageFragment.this.setContentShown(true, true, true);
                  return;
                }
                Bitmap localBitmap2 = localBitmap1;
                ImageActivity.ImageFragment.this.mBitmapDigest = new GlobalImageCache.BitmapDigest(this.val$image.getBig());
                ImageActivity.ImageFragment.this.mBitmapDigest.setWidth(localBitmap2.getWidth());
                ImageActivity.ImageFragment.this.mBitmapDigest.setHeight(localBitmap2.getHeight());
                GlobalImageCache.getImageState(ImageActivity.ImageFragment.this.mBitmapDigest).success(localBitmap2);
                ((TouchImageView)ImageActivity.ImageFragment.this.getView().findViewById(16711682).findViewById(16711683)).setImageBitmap(localBitmap2);
                String str = paramAnonymousHttpResponse.getSaveFile().getAbsolutePath();
                ImageActivity.mCacheImagePaths.put(ImageActivity.ImageFragment.this.mPos, str);
                if (ImageActivity.ImageFragment.this.mActivity != null) {
                  ImageActivity.ImageFragment.this.mActivity.checkSaveState();
                }
                ImageActivity.ImageFragment.this.setContentShown(true, true, false);
              }
            });
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            if (ImageActivity.ImageFragment.this.mActivity == null) {
              return;
            }
            ImageActivity.ImageFragment.this.mActivity.runOnUiThread(new Runnable()
            {
              public void run()
              {
                if (ImageActivity.ImageFragment.this.mActivity.isFinishing()) {}
                do
                {
                  return;
                  ImageActivity.ImageFragment.this.isLoading = false;
                } while ((ImageActivity.ImageFragment.this.isRemoving()) || (ImageActivity.ImageFragment.this.isDetached()) || (!ImageActivity.ImageFragment.this.isVisible()));
                ImageActivity.ImageFragment.this.setContentShown(true, true, true);
              }
            });
          }
          
          public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
        });
      } while (this.mHttpGroup == null);
      this.mHttpGroup.add(localHttpSetting);
    }
    
    public void onCreate(Bundle paramBundle)
    {
      super.onCreate(paramBundle);
      int i;
      if (getArguments() != null)
      {
        i = getArguments().getInt("pos");
        this.mPos = i;
        if (getArguments() == null) {
          break label79;
        }
      }
      label79:
      for (Serializable localSerializable = getArguments().getSerializable("image");; localSerializable = null)
      {
        this.mImage = ((Image)localSerializable);
        this.mHttpGroup = HttpGroupUtils.getHttpGroupaAsynPool(5000);
        this.mActivity = ((ImageActivity)getActivity());
        return;
        i = -1;
        break;
      }
    }
    
    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
      FragmentActivity localFragmentActivity = getActivity();
      FrameLayout localFrameLayout1 = new FrameLayout(localFragmentActivity);
      LinearLayout localLinearLayout1 = new LinearLayout(localFragmentActivity);
      localLinearLayout1.setId(16711684);
      localLinearLayout1.setOrientation(1);
      localLinearLayout1.setVisibility(8);
      localLinearLayout1.setGravity(17);
      Button localButton = new Button(localFragmentActivity, null, 16843271);
      localButton.setText("点击重新加载");
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ImageActivity.ImageFragment.this.showImage(ImageActivity.ImageFragment.this.mImage);
        }
      });
      localLinearLayout1.addView(localButton, new FrameLayout.LayoutParams(-2, -2));
      localFrameLayout1.addView(localLinearLayout1, new FrameLayout.LayoutParams(-1, -1));
      LinearLayout localLinearLayout2 = new LinearLayout(localFragmentActivity);
      localLinearLayout2.setId(16711681);
      localLinearLayout2.setOrientation(1);
      localLinearLayout2.setVisibility(8);
      localLinearLayout2.setGravity(17);
      localLinearLayout2.addView(new ProgressBar(localFragmentActivity, null, 16842871), new FrameLayout.LayoutParams(-2, -2));
      localFrameLayout1.addView(localLinearLayout2, new FrameLayout.LayoutParams(-1, -1));
      FrameLayout localFrameLayout2 = new FrameLayout(localFragmentActivity);
      localFrameLayout2.setId(16711682);
      TouchImageView local2 = new TouchImageView(getActivity())
      {
        protected void onImgRecycled()
        {
          ImageActivity.ImageFragment.this.setContentShown(true, true, true);
          Log.i("TouchImageView", "onImgRecycled");
        }
      };
      local2.setBackgroundColor(-1);
      local2.setTapListener(new TouchImageView.ControllListener()
      {
        public void onSingleTapUp()
        {
          if (ImageActivity.ImageFragment.this.mActivity != null) {
            ImageActivity.ImageFragment.this.mActivity.singleTapUp();
          }
        }
      });
      local2.setId(16711683);
      localFrameLayout2.addView(local2, new FrameLayout.LayoutParams(-1, -1));
      localFrameLayout1.addView(localFrameLayout2, new FrameLayout.LayoutParams(-1, -1));
      localFrameLayout1.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
      return localFrameLayout1;
    }
    
    public void onDestroy()
    {
      super.onDestroy();
    }
    
    public void onDestroyView()
    {
      this.mContentShown = false;
      this.mErrorContainer = null;
      this.mContentContainer = null;
      this.mProgressContainer = null;
      super.onDestroyView();
    }
    
    public void onDetach()
    {
      super.onDetach();
      if (this.mBitmapDigest != null)
      {
        GlobalImageCache.getLruBitmapCache().remove(this.mBitmapDigest);
        this.mBitmapDigest = null;
      }
    }
    
    public void onViewCreated(View paramView, Bundle paramBundle)
    {
      super.onViewCreated(paramView, paramBundle);
      showImage(this.mImage);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.ImageActivity
 * JD-Core Version:    0.7.0.1
 */