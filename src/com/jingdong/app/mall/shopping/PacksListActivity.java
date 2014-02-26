package com.jingdong.app.mall.shopping;

import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.Pack;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class PacksListActivity
  extends MyActivity
{
  static AlertDialog alertDialog = null;
  MySimpleAdapter adapter;
  boolean[] bExtendFlag;
  HttpGroup.HttpSetting hs;
  JSONObjectProxy jsonCartInfoContainer;
  private SourceEntity mSource = new SourceEntity("unknown", null);
  TextView mTitle;
  ArrayList<View> packLayoutBtn;
  int screenHeight;
  int screenWidth;
  
  private JSONArrayPoxy addToArray(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    JSONArrayPoxy localJSONArrayPoxy = new JSONArrayPoxy();
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("SkuId", this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(paramInt).get("MainSkuId"));
      localJSONObject.put("SkuPicUrl", this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(paramInt).get("MainSkuPicUrl"));
      localJSONObject.put("SkuName", this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(paramInt).get("MainSkuName"));
      localJSONArrayPoxy.put(localJSONObject);
      i = 0;
      if (i >= paramJSONArrayPoxy.length()) {
        return localJSONArrayPoxy;
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        int i;
        localJSONException.printStackTrace();
        continue;
        localJSONArrayPoxy.put(paramJSONArrayPoxy.getJSONObjectOrNull(i));
        i++;
      }
    }
  }
  
  private void buyPack(JSONObjectProxy paramJSONObjectProxy)
  {
    if (paramJSONObjectProxy == null) {
      return;
    }
    Pack localPack = new Pack(paramJSONObjectProxy, 0, null);
    localPack.setSourceEntity(this.mSource);
    ShoppingController.addOnePack(this, localPack);
  }
  
  private void fillLayout()
  {
    LayoutInflater.from(this);
    LinearLayout localLinearLayout1 = (LinearLayout)findViewById(2131494028);
    LinearLayout localLinearLayout2 = (LinearLayout)findViewById(2131494029);
    if ((this.jsonCartInfoContainer == null) || (this.jsonCartInfoContainer.toString() == "null") || (this.jsonCartInfoContainer.getJSONArrayOrNull("data") == null) || (this.jsonCartInfoContainer.getJSONArrayOrNull("data").length() <= 0)) {}
    do
    {
      return;
      this.bExtendFlag = new boolean[this.jsonCartInfoContainer.getJSONArrayOrNull("data").length()];
      this.bExtendFlag[0] = true;
      this.packLayoutBtn = null;
      this.packLayoutBtn = new ArrayList();
      if ((this.jsonCartInfoContainer.getJSONArrayOrNull("data").length() > 0) && (this.jsonCartInfoContainer.getJSONArrayOrNull("data").length() <= 1))
      {
        View localView3 = ImageUtil.inflate(2130903232, null);
        ListView localListView2 = (ListView)localView3.findViewById(2131494003);
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = this.jsonCartInfoContainer.getStringOrNull("imageDomain");
        if ((this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(0) != null) && (this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(0).getJSONArrayOrNull("ProductList") != null)) {}
        try
        {
          setPackButn(localView3, 0, this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(0).getString("PackName"));
          this.packLayoutBtn.add(localView3);
          setPackItemsData(localListView2, this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(0).getJSONArrayOrNull("ProductList"), arrayOfString2, 0);
          setMoneyInfo(localView3, this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(0), 0);
          LinearLayout localLinearLayout5 = (LinearLayout)localView3.findViewById(2131494004);
          LinearLayout localLinearLayout6 = (LinearLayout)localView3.findViewById(2131494002);
          localView3.findViewById(2131493344).setVisibility(0);
          localLinearLayout6.setVisibility(0);
          localLinearLayout5.setVisibility(0);
          this.bExtendFlag[0] = true;
          localLinearLayout1.removeAllViews();
          localLinearLayout1.addView(localView3, 0);
          localLinearLayout2.setVisibility(8);
          return;
        }
        catch (JSONException localJSONException2)
        {
          for (;;)
          {
            localJSONException2.printStackTrace();
          }
        }
      }
    } while (this.jsonCartInfoContainer.getJSONArrayOrNull("data").length() <= 1);
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = this.jsonCartInfoContainer.getStringOrNull("imageDomain");
    int i = 0;
    for (;;)
    {
      if (i >= this.jsonCartInfoContainer.getJSONArrayOrNull("data").length())
      {
        localLinearLayout2.setVisibility(0);
        return;
      }
      View localView1 = ImageUtil.inflate(2130903232, null);
      ListView localListView1 = (ListView)localView1.findViewById(2131494003);
      if ((this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(i) != null) && (this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(i).getJSONArrayOrNull("ProductList") != null)) {}
      try
      {
        setPackButn(localView1, i, this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(i).getString("PackName"));
        this.packLayoutBtn.add(localView1);
        setPackItemsData(localListView1, this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(i).getJSONArrayOrNull("ProductList"), arrayOfString1, i);
        setMoneyInfo(localView1, this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(i), i);
        localLinearLayout3 = (LinearLayout)localView1.findViewById(2131494004);
        localLinearLayout4 = (LinearLayout)localView1.findViewById(2131494002);
        localView2 = localView1.findViewById(2131493344);
        if (i == 0)
        {
          localView2.setVisibility(0);
          localLinearLayout4.setVisibility(0);
          localLinearLayout3.setVisibility(0);
          this.bExtendFlag[i] = true;
          localLinearLayout2.addView(localView1, i);
          i++;
        }
      }
      catch (JSONException localJSONException1)
      {
        for (;;)
        {
          LinearLayout localLinearLayout3;
          LinearLayout localLinearLayout4;
          View localView2;
          localJSONException1.printStackTrace();
          continue;
          localView2.setVisibility(8);
          localLinearLayout4.setVisibility(8);
          localLinearLayout3.setVisibility(8);
          this.bExtendFlag[i] = false;
        }
      }
    }
  }
  
  private void getScreenHW()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.screenHeight = localDisplayMetrics.heightPixels;
    this.screenWidth = localDisplayMetrics.widthPixels;
  }
  
  private void setMoneyInfo(View paramView, JSONObject paramJSONObject, final int paramInt)
  {
    TextView localTextView1 = (TextView)paramView.findViewById(2131494008);
    TextView localTextView2 = (TextView)paramView.findViewById(2131494010);
    TextView localTextView3 = (TextView)paramView.findViewById(2131494011);
    Button localButton = (Button)paramView.findViewById(2131494012);
    try
    {
      localTextView1.setText(paramJSONObject.getString("PackPrice"));
      localTextView1.setTextColor(Color.rgb(200, 10, 10));
      localTextView2.setText(paramJSONObject.getString("PackListPrice"));
      localTextView2.setTextColor(Color.rgb(153, 153, 153));
      localTextView3.setText(paramJSONObject.getString("Discount"));
      localTextView3.setTextColor(Color.rgb(10, 200, 10));
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          PacksListActivity.this.buyPack(PacksListActivity.this.jsonCartInfoContainer.getJSONArrayOrNull("data").getJSONObjectOrNull(paramInt));
        }
      });
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  private void setPackButn(final View paramView, final int paramInt, String paramString)
  {
    ((TextView)paramView.findViewById(2131493999)).setText("【优惠】" + paramString);
    final ImageView localImageView = (ImageView)paramView.findViewById(2131494001);
    if ((paramInt == 0) && (this.bExtendFlag[paramInt] != 0)) {
      localImageView.setBackgroundResource(2130837599);
    }
    for (;;)
    {
      View localView = paramView.findViewById(2131493998);
      localImageView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (PacksListActivity.this.bExtendFlag[paramInt] != 0)
          {
            localImageView.setBackgroundResource(2130837600);
            PacksListActivity.this.bExtendFlag[paramInt] = false;
            View localView3 = paramView.findViewById(2131494004);
            View localView4 = paramView.findViewById(2131494002);
            paramView.findViewById(2131493344).setVisibility(8);
            localView4.setVisibility(8);
            localView3.setVisibility(8);
            return;
          }
          localImageView.setBackgroundResource(2130837599);
          PacksListActivity.this.bExtendFlag[paramInt] = true;
          View localView1 = paramView.findViewById(2131494004);
          View localView2 = paramView.findViewById(2131494002);
          paramView.findViewById(2131493344).setVisibility(0);
          localView2.setVisibility(0);
          localView1.setVisibility(0);
        }
      });
      localView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (PacksListActivity.this.bExtendFlag[paramInt] != 0)
          {
            localImageView.setBackgroundResource(2130837600);
            PacksListActivity.this.bExtendFlag[paramInt] = false;
            View localView7 = paramView.findViewById(2131494004);
            View localView8 = paramView.findViewById(2131494002);
            paramView.findViewById(2131493344).setVisibility(8);
            localView8.setVisibility(8);
            localView7.setVisibility(8);
            return;
          }
          if ((PacksListActivity.this.packLayoutBtn.size() > 0) && (PacksListActivity.this.packLayoutBtn.size() <= 1))
          {
            localImageView.setBackgroundResource(2130837599);
            PacksListActivity.this.bExtendFlag[paramInt] = true;
            View localView5 = paramView.findViewById(2131494004);
            View localView6 = paramView.findViewById(2131494002);
            paramView.findViewById(2131493344).setVisibility(0);
            localView6.setVisibility(0);
            localView5.setVisibility(0);
            return;
          }
          for (int i = 0;; i++)
          {
            if (i >= PacksListActivity.this.packLayoutBtn.size())
            {
              localImageView.setBackgroundResource(2130837599);
              PacksListActivity.this.bExtendFlag[paramInt] = true;
              View localView3 = paramView.findViewById(2131494004);
              View localView4 = paramView.findViewById(2131494002);
              paramView.findViewById(2131493344).setVisibility(0);
              localView4.setVisibility(0);
              localView3.setVisibility(0);
              return;
            }
            if (PacksListActivity.this.bExtendFlag[i] != 0)
            {
              PacksListActivity.this.bExtendFlag[i] = false;
              View localView1 = ((View)PacksListActivity.this.packLayoutBtn.get(i)).findViewById(2131494004);
              View localView2 = ((View)PacksListActivity.this.packLayoutBtn.get(i)).findViewById(2131494002);
              ((View)PacksListActivity.this.packLayoutBtn.get(i)).findViewById(2131493344).setVisibility(8);
              localView2.setVisibility(8);
              localView1.setVisibility(8);
              ((ImageView)((View)PacksListActivity.this.packLayoutBtn.get(i)).findViewById(2131494001)).setBackgroundResource(2130837600);
            }
          }
        }
      });
      return;
      localImageView.setBackgroundResource(2130837600);
    }
  }
  
  private void setPackItemsData(ListView paramListView, JSONArrayPoxy paramJSONArrayPoxy, String[] paramArrayOfString, int paramInt)
  {
    ArrayList localArrayList = Product.toList(addToArray(paramJSONArrayPoxy, paramInt), 13, paramArrayOfString);
    this.adapter = null;
    this.adapter = new MySimpleAdapter(this, localArrayList, 2130903235, new String[] { "imageUrl", "name" }, new int[] { 2131493041, 2131493046 })
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        if (paramAnonymousInt % 2 == 1) {
          localView.setBackgroundResource(2130838108);
        }
        for (;;)
        {
          localView.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              StartActivityUtils.startProductDetailActivity(PacksListActivity.this, this.val$product.getId(), this.val$product.getName(), new SourceEntity("packs", null));
            }
          });
          return localView;
          localView.setBackgroundResource(2130838110);
        }
      }
    };
    paramListView.setAdapter(this.adapter);
    paramListView.getHeight();
    if ((this.screenHeight < 1024) && (this.screenHeight > 480) && (this.screenWidth > 320) && (this.screenWidth <= 600)) {
      if (paramListView.getCount() < 16) {
        paramListView.setLayoutParams(new LinearLayout.LayoutParams(this.screenWidth, DPIUtil.dip2px(97.0F) * paramListView.getCount()));
      }
    }
    do
    {
      return;
      paramListView.setLayoutParams(new LinearLayout.LayoutParams(this.screenWidth, DPIUtil.dip2px(98.0F) * paramListView.getCount()));
      return;
      if ((this.screenHeight >= 1024) && (this.screenWidth >= 600))
      {
        paramListView.setLayoutParams(new LinearLayout.LayoutParams(this.screenWidth, DPIUtil.dip2px(100.0F) * paramListView.getCount()));
        return;
      }
      if ((this.screenHeight == 480) && (this.screenWidth == 320))
      {
        paramListView.setLayoutParams(new LinearLayout.LayoutParams(this.screenWidth, DPIUtil.dip2px(95.0F) * paramListView.getCount()));
        return;
      }
      if ((this.screenHeight < 480) && (this.screenWidth <= 320))
      {
        paramListView.setLayoutParams(new LinearLayout.LayoutParams(this.screenWidth, DPIUtil.dip2px(97.0F) * paramListView.getCount()));
        return;
      }
      if ((this.screenHeight < 1024) && (this.screenHeight > 480) && (this.screenWidth >= 640))
      {
        if (paramListView.getCount() < 16)
        {
          paramListView.setLayoutParams(new LinearLayout.LayoutParams(this.screenWidth, DPIUtil.dip2px(97.0F) * paramListView.getCount()));
          return;
        }
        paramListView.setLayoutParams(new LinearLayout.LayoutParams(this.screenWidth, DPIUtil.dip2px(98.0F) * paramListView.getCount()));
        return;
      }
    } while ((this.screenHeight != 400) || (this.screenWidth != 360));
    paramListView.setLayoutParams(new LinearLayout.LayoutParams(this.screenWidth, DPIUtil.dip2px(95.0F) * paramListView.getCount()));
  }
  
  public void getPacksInfo(String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    if ((paramString != null) && (paramString != "") && (paramString != " ") && (localJSONObject != null)) {}
    try
    {
      localJSONObject.put("wareId", paramString);
      this.hs = null;
      this.hs = new HttpGroup.HttpSetting();
      this.hs.setPost(true);
      this.hs.setFunctionId(config.GET_PACKS);
      this.hs.setJsonParams(localJSONObject);
      this.hs.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          try
          {
            PacksListActivity.this.jsonCartInfoContainer = new JSONObjectProxy(paramAnonymousHttpResponse.getJSONObject());
            if (PacksListActivity.this.jsonCartInfoContainer != null) {
              PacksListActivity.this.post(new Runnable()
              {
                public void run()
                {
                  PacksListActivity.this.fillLayout();
                }
              });
            }
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      getHttpGroupaAsynPool().add(this.hs);
      this.hs = null;
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903240);
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText("套装系列");
    getScreenHW();
    getPacksInfo(String.valueOf(Constants.packMainProdId));
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      SourceEntity localSourceEntity = (SourceEntity)localBundle.get("source");
      if (localSourceEntity != null) {
        this.mSource = localSourceEntity;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.PacksListActivity
 * JD-Core Version:    0.7.0.1
 */