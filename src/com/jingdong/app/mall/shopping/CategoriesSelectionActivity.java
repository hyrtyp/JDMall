package com.jingdong.app.mall.shopping;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class CategoriesSelectionActivity
  extends MyActivity
{
  private static final String TAG = CategoriesSelectionActivity.class.getSimpleName();
  private GridView catsGridView;
  private ArrayList<Category> catsList;
  private View contentView;
  private String host = Configuration.getProperty("paiHost");
  private boolean isClickable = true;
  private View loadingErrorView;
  private ProgressBar loadingProgressBar;
  private View loadingView;
  private Button reLoadButton;
  private Set<String> selectedCatsSet = new HashSet();
  private Button submitBtn;
  private TextView titleTextview;
  
  private void findViews()
  {
    setContentView(2130903042);
    this.titleTextview = ((TextView)findViewById(2131492990));
    this.titleTextview.setText(getString(2131166425));
    this.contentView = findViewById(2131492897);
    this.catsGridView = ((GridView)findViewById(2131492899));
    this.catsGridView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (!CategoriesSelectionActivity.this.isClickable) {
          return;
        }
        int i = 1;
        ArrayList localArrayList = new ArrayList();
        int j = CategoriesSelectionActivity.this.catsGridView.getChildCount();
        int k = 0;
        Iterator localIterator4;
        if (k >= j)
        {
          if (paramAnonymousInt != 0) {
            break label310;
          }
          if (!CategoriesSelectionActivity.this.selectedCatsSet.contains(((CategoriesSelectionActivity.Category)CategoriesSelectionActivity.this.catsList.get(0)).toString())) {
            break label199;
          }
          CategoriesSelectionActivity.this.selectedCatsSet.clear();
          localIterator4 = localArrayList.iterator();
          label100:
          if (localIterator4.hasNext()) {
            break label160;
          }
          i = 0;
        }
        for (;;)
        {
          if (i != 0)
          {
            CategoriesSelectionActivity.this.submitBtn.setEnabled(true);
            return;
            localArrayList.add((CategoriesSelectionActivity.ViewHolder)CategoriesSelectionActivity.this.catsGridView.getChildAt(k).getTag());
            k++;
            break;
            label160:
            CategoriesSelectionActivity.ViewHolder localViewHolder3 = (CategoriesSelectionActivity.ViewHolder)localIterator4.next();
            if (localViewHolder3.selectedView.getVisibility() != 0) {
              break label100;
            }
            CategoriesSelectionActivity.this.showSelectedOrUnSelectedView(CategoriesSelectionActivity.this, localViewHolder3);
            break label100;
            label199:
            Iterator localIterator2 = CategoriesSelectionActivity.this.catsList.iterator();
            for (;;)
            {
              if (!localIterator2.hasNext())
              {
                Iterator localIterator3 = localArrayList.iterator();
                while (localIterator3.hasNext())
                {
                  CategoriesSelectionActivity.ViewHolder localViewHolder2 = (CategoriesSelectionActivity.ViewHolder)localIterator3.next();
                  if (localViewHolder2.unSelectedView.getVisibility() == 0) {
                    CategoriesSelectionActivity.this.showSelectedOrUnSelectedView(CategoriesSelectionActivity.this, localViewHolder2);
                  }
                }
                break;
              }
              CategoriesSelectionActivity.Category localCategory = (CategoriesSelectionActivity.Category)localIterator2.next();
              CategoriesSelectionActivity.this.selectedCatsSet.add(localCategory.toString());
            }
            label310:
            CategoriesSelectionActivity.ViewHolder localViewHolder1 = (CategoriesSelectionActivity.ViewHolder)paramAnonymousView.getTag();
            CategoriesSelectionActivity.this.showSelectedOrUnSelectedView(CategoriesSelectionActivity.this, localViewHolder1);
            if (CategoriesSelectionActivity.this.selectedCatsSet.contains(((CategoriesSelectionActivity.Category)CategoriesSelectionActivity.this.catsList.get(paramAnonymousInt)).toString()))
            {
              CategoriesSelectionActivity.this.selectedCatsSet.remove(((CategoriesSelectionActivity.Category)CategoriesSelectionActivity.this.catsList.get(paramAnonymousInt)).toString());
              if (CategoriesSelectionActivity.this.selectedCatsSet.contains(((CategoriesSelectionActivity.Category)CategoriesSelectionActivity.this.catsList.get(0)).toString()))
              {
                CategoriesSelectionActivity.this.selectedCatsSet.remove(((CategoriesSelectionActivity.Category)CategoriesSelectionActivity.this.catsList.get(0)).toString());
                CategoriesSelectionActivity.this.showSelectedOrUnSelectedView(CategoriesSelectionActivity.this, (CategoriesSelectionActivity.ViewHolder)localArrayList.get(0));
              }
              Iterator localIterator1 = CategoriesSelectionActivity.this.selectedCatsSet.iterator();
              do
              {
                boolean bool = localIterator1.hasNext();
                i = 0;
                if (!bool) {
                  break;
                }
              } while (TextUtils.isEmpty((String)localIterator1.next()));
              i = 1;
            }
            else
            {
              CategoriesSelectionActivity.this.selectedCatsSet.add(((CategoriesSelectionActivity.Category)CategoriesSelectionActivity.this.catsList.get(paramAnonymousInt)).toString());
              int m = 1;
              label675:
              label677:
              for (int n = 1;; n++)
              {
                if (n >= CategoriesSelectionActivity.this.catsList.size()) {}
                for (;;)
                {
                  if (m == 0) {
                    break label675;
                  }
                  CategoriesSelectionActivity.this.selectedCatsSet.add(((CategoriesSelectionActivity.Category)CategoriesSelectionActivity.this.catsList.get(0)).toString());
                  CategoriesSelectionActivity.this.showSelectedOrUnSelectedView(CategoriesSelectionActivity.this, (CategoriesSelectionActivity.ViewHolder)localArrayList.get(0));
                  break;
                  if (CategoriesSelectionActivity.this.selectedCatsSet.contains(((CategoriesSelectionActivity.Category)CategoriesSelectionActivity.this.catsList.get(n)).toString())) {
                    break label677;
                  }
                  m = 0;
                }
                break;
              }
            }
          }
        }
        CategoriesSelectionActivity.this.submitBtn.setEnabled(false);
      }
    });
    this.submitBtn = ((Button)findViewById(2131492898));
    this.submitBtn.setEnabled(false);
    this.submitBtn.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (!CategoriesSelectionActivity.this.isClickable) {
          return;
        }
        StringBuffer localStringBuffer = new StringBuffer();
        Iterator localIterator = CategoriesSelectionActivity.this.selectedCatsSet.iterator();
        for (;;)
        {
          if (!localIterator.hasNext())
          {
            String str2 = localStringBuffer.toString();
            CommonUtil.getJdSharedPreferences().edit().putString("color_buy_selected_categories", str2).commit();
            CategoriesSelectionActivity.this.finishWithResultOK(str2);
            return;
          }
          String str1 = (String)localIterator.next();
          if (!TextUtils.isEmpty(str1))
          {
            if (localStringBuffer.length() != 0) {
              localStringBuffer.append(",");
            }
            localStringBuffer.append(str1);
          }
        }
      }
    });
    this.loadingView = findViewById(2131492900);
    this.loadingProgressBar = ((ProgressBar)findViewById(2131492901));
    this.loadingErrorView = findViewById(2131492902);
    this.reLoadButton = ((Button)findViewById(2131493613));
    this.reLoadButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        CategoriesSelectionActivity.this.inflateData();
      }
    });
  }
  
  private void finishWithResultOK(String paramString)
  {
    new Intent().putExtra("color_buy_selected_categories", paramString);
    setResult(-1);
    finish();
  }
  
  private void inflateData()
  {
    this.loadingView.setVisibility(0);
    this.loadingErrorView.setVisibility(8);
    this.contentView.setVisibility(8);
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("categoryMessage");
    localHttpSetting.setHost(this.host);
    localHttpSetting.setListener(new LoadListener());
    localHttpSetting.setLocalFileCache(true);
    localHttpSetting.setLocalFileCacheTime(3600000L);
    localHttpSetting.setEffect(0);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void initData()
  {
    String[] arrayOfString = CommonUtil.getJdSharedPreferences().getString("color_buy_selected_categories", "").split(",");
    for (int i = 0;; i++)
    {
      if (i >= arrayOfString.length) {
        return;
      }
      this.selectedCatsSet.add(arrayOfString[i]);
    }
  }
  
  public static void launchForResult(Activity paramActivity, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramActivity, CategoriesSelectionActivity.class);
    paramActivity.startActivityForResult(localIntent, paramInt);
  }
  
  private void onShowCategoriesView(List<Category> paramList)
  {
    MySimpleAdapter local4 = new MySimpleAdapter(this, paramList, 2130903094, new String[0], new int[0])
    {
      private List<CategoriesSelectionActivity.Category> categorySelecteds;
      private final int[] itemBgSrcIds;
      
      private void initViewHolder(CategoriesSelectionActivity.ViewHolder paramAnonymousViewHolder, View paramAnonymousView)
      {
        paramAnonymousViewHolder.unSelectedView = paramAnonymousView.findViewById(2131493210);
        paramAnonymousViewHolder.title = ((TextView)paramAnonymousView.findViewById(2131493212));
        paramAnonymousViewHolder.selectedView = paramAnonymousView.findViewById(2131493213);
        paramAnonymousViewHolder.thumbnail2 = ((ImageView)paramAnonymousView.findViewById(2131493214));
        paramAnonymousViewHolder.title2 = ((TextView)paramAnonymousView.findViewById(2131493215));
      }
      
      public int getCount()
      {
        if (this.categorySelecteds != null) {
          return this.categorySelecteds.size();
        }
        return 0;
      }
      
      public Object getItem(int paramAnonymousInt)
      {
        if (this.categorySelecteds == null) {
          return null;
        }
        return this.categorySelecteds.get(paramAnonymousInt);
      }
      
      public long getItemId(int paramAnonymousInt)
      {
        return paramAnonymousInt;
      }
      
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        CategoriesSelectionActivity.ViewHolder localViewHolder;
        if ((paramAnonymousView == null) || (!(paramAnonymousView.getTag() instanceof CategoriesSelectionActivity.ViewHolder)))
        {
          localViewHolder = new CategoriesSelectionActivity.ViewHolder(null);
          paramAnonymousView = LayoutInflater.from(CategoriesSelectionActivity.this).inflate(2130903094, paramAnonymousViewGroup, false);
          initViewHolder(localViewHolder, paramAnonymousView);
          paramAnonymousView.setTag(localViewHolder);
          CategoriesSelectionActivity.Category localCategory = (CategoriesSelectionActivity.Category)this.categorySelecteds.get(paramAnonymousInt);
          if (localCategory != null)
          {
            localViewHolder.thumbnail2.setImageResource(this.itemBgSrcIds[(paramAnonymousInt % this.itemBgSrcIds.length)]);
            localViewHolder.title.setText(localCategory.doc);
            localViewHolder.title2.setText(localCategory.doc);
            if (!CategoriesSelectionActivity.this.selectedCatsSet.contains(localCategory.toString())) {
              break label184;
            }
            localViewHolder.unSelectedView.setVisibility(8);
            localViewHolder.selectedView.setVisibility(0);
          }
        }
        for (;;)
        {
          localViewHolder.itemView = paramAnonymousView;
          return paramAnonymousView;
          localViewHolder = (CategoriesSelectionActivity.ViewHolder)paramAnonymousView.getTag();
          initViewHolder(localViewHolder, paramAnonymousView);
          break;
          label184:
          localViewHolder.unSelectedView.setVisibility(0);
          localViewHolder.selectedView.setVisibility(8);
        }
      }
    };
    this.catsGridView.setAdapter(local4);
  }
  
  private void showSelectedOrUnSelectedView(Context paramContext, ViewHolder paramViewHolder)
  {
    final View localView1;
    if (paramViewHolder.unSelectedView.getVisibility() == 8) {
      localView1 = paramViewHolder.selectedView;
    }
    for (View localView2 = paramViewHolder.unSelectedView;; localView2 = paramViewHolder.selectedView)
    {
      Animation localAnimation1 = AnimationUtils.loadAnimation(paramContext, 2130968596);
      Animation localAnimation2 = AnimationUtils.loadAnimation(paramContext, 2130968598);
      localAnimation1.setDuration(200L);
      localAnimation2.setDuration(200L);
      localAnimation1.setAnimationListener(new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          CategoriesSelectionActivity.this.isClickable = true;
          CategoriesSelectionActivity.this.catsGridView.setClickable(true);
        }
        
        public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public void onAnimationStart(Animation paramAnonymousAnimation)
        {
          CategoriesSelectionActivity.this.isClickable = false;
          CategoriesSelectionActivity.this.catsGridView.setClickable(false);
        }
      });
      localAnimation2.setAnimationListener(new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          localView1.setVisibility(8);
          CategoriesSelectionActivity.this.isClickable = true;
          CategoriesSelectionActivity.this.catsGridView.setClickable(true);
        }
        
        public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public void onAnimationStart(Animation paramAnonymousAnimation)
        {
          CategoriesSelectionActivity.this.isClickable = false;
          CategoriesSelectionActivity.this.catsGridView.setClickable(false);
        }
      });
      localView2.setVisibility(0);
      localView2.setAnimation(localAnimation1);
      localView1.setAnimation(localAnimation2);
      return;
      localView1 = paramViewHolder.unSelectedView;
    }
  }
  
  /* Error */
  public ArrayList<Category> getCategoryList(JSONArrayPoxy paramJSONArrayPoxy)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 334	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 335	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: iconst_0
    //   11: istore 4
    //   13: iload 4
    //   15: aload_1
    //   16: invokevirtual 340	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   19: if_icmplt +5 -> 24
    //   22: aload_3
    //   23: areturn
    //   24: aload_1
    //   25: iload 4
    //   27: invokevirtual 344	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   30: astore 6
    //   32: new 346	com/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category
    //   35: dup
    //   36: aload_0
    //   37: invokespecial 347	com/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category:<init>	(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V
    //   40: astore 7
    //   42: aload 7
    //   44: aload 6
    //   46: ldc_w 349
    //   49: invokevirtual 355	com/jingdong/common/utils/JSONObjectProxy:getInt	(Ljava/lang/String;)I
    //   52: putfield 358	com/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category:cateLevel	I
    //   55: aload 7
    //   57: aload 6
    //   59: ldc_w 360
    //   62: invokevirtual 364	com/jingdong/common/utils/JSONObjectProxy:getLong	(Ljava/lang/String;)J
    //   65: putfield 367	com/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category:cateNum	J
    //   68: aload 7
    //   70: aload 6
    //   72: ldc_w 369
    //   75: invokevirtual 371	com/jingdong/common/utils/JSONObjectProxy:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   78: putfield 373	com/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category:doc	Ljava/lang/String;
    //   81: aload_3
    //   82: aload 7
    //   84: invokevirtual 374	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   87: pop
    //   88: iinc 4 1
    //   91: goto -78 -> 13
    //   94: astore 5
    //   96: aload 5
    //   98: invokevirtual 377	org/json/JSONException:printStackTrace	()V
    //   101: aload_2
    //   102: areturn
    //   103: astore 5
    //   105: aload_3
    //   106: astore_2
    //   107: goto -11 -> 96
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	110	0	this	CategoriesSelectionActivity
    //   0	110	1	paramJSONArrayPoxy	JSONArrayPoxy
    //   1	106	2	localObject	Object
    //   9	97	3	localArrayList	ArrayList
    //   11	78	4	i	int
    //   94	3	5	localJSONException1	org.json.JSONException
    //   103	1	5	localJSONException2	org.json.JSONException
    //   30	41	6	localJSONObjectProxy	JSONObjectProxy
    //   40	43	7	localCategory	Category
    // Exception table:
    //   from	to	target	type
    //   2	10	94	org/json/JSONException
    //   13	22	103	org/json/JSONException
    //   24	88	103	org/json/JSONException
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    findViews();
    initData();
    inflateData();
  }
  
  class Category
  {
    public int cateLevel;
    public long cateNum;
    public String doc;
    public boolean isSelected = false;
    
    Category() {}
    
    public String toString()
    {
      return this.cateLevel + ":" + this.cateNum;
    }
  }
  
  class LoadListener
    implements HttpGroup.OnCommonListener
  {
    public LoadListener() {}
    
    private void showError()
    {
      CategoriesSelectionActivity.this.post(new Runnable()
      {
        public void run()
        {
          CategoriesSelectionActivity.this.contentView.setVisibility(8);
          CategoriesSelectionActivity.this.loadingView.setVisibility(0);
          CategoriesSelectionActivity.this.loadingProgressBar.setVisibility(8);
          CategoriesSelectionActivity.this.loadingErrorView.setVisibility(0);
        }
      });
    }
    
    public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
    {
      JSONArrayPoxy localJSONArrayPoxy = paramHttpResponse.getJSONObject().getJSONArrayOrNull("category");
      if ((localJSONArrayPoxy == null) || (localJSONArrayPoxy.length() == 0))
      {
        showError();
        return;
      }
      CategoriesSelectionActivity.this.catsList = CategoriesSelectionActivity.this.getCategoryList(localJSONArrayPoxy);
      CategoriesSelectionActivity.Category localCategory1 = new CategoriesSelectionActivity.Category(CategoriesSelectionActivity.this);
      localCategory1.doc = CategoriesSelectionActivity.this.getString(2131166426);
      localCategory1.cateLevel = 0;
      localCategory1.cateNum = 0L;
      CategoriesSelectionActivity.this.catsList.add(0, localCategory1);
      Iterator localIterator1 = CategoriesSelectionActivity.this.selectedCatsSet.iterator();
      boolean bool = localIterator1.hasNext();
      int i = 0;
      label119:
      Iterator localIterator2;
      if (!bool) {
        if (i == 0) {
          localIterator2 = CategoriesSelectionActivity.this.catsList.iterator();
        }
      }
      for (;;)
      {
        if (!localIterator2.hasNext())
        {
          CategoriesSelectionActivity.this.post(new Runnable()
          {
            public void run()
            {
              CategoriesSelectionActivity.this.onShowCategoriesView(CategoriesSelectionActivity.this.catsList);
              CategoriesSelectionActivity.this.submitBtn.setEnabled(true);
              CategoriesSelectionActivity.this.loadingView.setVisibility(8);
              CategoriesSelectionActivity.this.contentView.setVisibility(0);
            }
          });
          return;
          if (TextUtils.isEmpty((String)localIterator1.next())) {
            break;
          }
          i = 1;
          break label119;
        }
        CategoriesSelectionActivity.Category localCategory2 = (CategoriesSelectionActivity.Category)localIterator2.next();
        CategoriesSelectionActivity.this.selectedCatsSet.add(localCategory2.toString());
      }
    }
    
    public void onError(HttpGroup.HttpError paramHttpError)
    {
      showError();
    }
    
    public void onReady(HttpGroup.HttpSettingParams paramHttpSettingParams) {}
  }
  
  private static class ViewHolder
  {
    View itemView;
    View selectedView;
    ImageView thumbnail2;
    TextView title;
    TextView title2;
    View unSelectedView;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.CategoriesSelectionActivity
 * JD-Core Version:    0.7.0.1
 */