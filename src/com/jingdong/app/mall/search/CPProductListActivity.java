package com.jingdong.app.mall.search;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ProductShow;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.MySimpleAdapter;
import java.util.ArrayList;
import java.util.List;

public class CPProductListActivity
  extends MyActivity
{
  private static final String TAG = CPProductListActivity.class.getSimpleName();
  private Button correctionBtn;
  private ArrayList<Object> itemList;
  private TextView searchCateText;
  private ListView wareInfoList;
  
  private void findView()
  {
    setContentView(2130903056);
    this.wareInfoList = ((ListView)findViewById(2131493005));
    this.searchCateText = ((TextView)findViewById(2131492990));
    this.correctionBtn = ((Button)findViewById(2131494684));
    this.correctionBtn.setText(2131166195);
    this.correctionBtn.setVisibility(0);
  }
  
  private MySimpleAdapter getSimpleAdapter(List<?> paramList)
  {
    new MySimpleAdapter(this, paramList, 2130903251, new String[] { "imageurl", "name", "adWord", "jdPrice", "martPrice" }, new int[] { 2131493041, 2131493046, 2131493236 })
    {
      private static final int CONTENT_VIEW = 1;
      private static final int TITLE_VIEW;
      
      public int getItemViewType(int paramAnonymousInt)
      {
        if ((getItem(paramAnonymousInt) instanceof String)) {
          return 0;
        }
        return 1;
      }
      
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        if (getItemViewType(paramAnonymousInt) == 0)
        {
          CPProductListActivity localCPProductListActivity3;
          if (paramAnonymousView == null) {
            localCPProductListActivity3 = CPProductListActivity.this;
          }
          for (TextView localTextView5 = new TextView(localCPProductListActivity3);; localTextView5 = (TextView)paramAnonymousView)
          {
            String str4 = getItem(paramAnonymousInt).toString();
            localTextView5.setText(str4);
            localTextView5.setTextSize(16.0F);
            int i = CPProductListActivity.this.getResources().getColor(2131296352);
            localTextView5.setTextColor(i);
            localTextView5.setGravity(16);
            int j = DPIUtil.dip2px(10.0F);
            int k = DPIUtil.dip2px(0.0F);
            int m = DPIUtil.dip2px(10.0F);
            int n = DPIUtil.dip2px(0.0F);
            localTextView5.setPadding(j, k, m, n);
            localTextView5.setBackgroundResource(2130838118);
            return localTextView5;
          }
        }
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        Product localProduct;
        ProductShow localProductShow;
        TextView localTextView2;
        String str1;
        label236:
        TextView localTextView3;
        label262:
        TextView localTextView4;
        ImageView localImageView1;
        ImageView localImageView2;
        Integer localInteger;
        String str2;
        if (paramAnonymousInt == 1)
        {
          localView.setBackgroundResource(2130838110);
          localProduct = (Product)getItem(paramAnonymousInt);
          localProductShow = new ProductShow(CPProductListActivity.this, localProduct);
          TextView localTextView1 = (TextView)localView.findViewById(2131493237);
          localTextView2 = (TextView)localView.findViewById(2131493048);
          localView.findViewById(2131493240).setVisibility(8);
          if (!TextUtils.isEmpty(localProduct.getJdPrice())) {
            break label429;
          }
          str1 = "";
          localTextView1.setText(str1);
          if (!"暂无报价".equals(localProduct.getMarketPrice())) {
            break label464;
          }
          localTextView2.setVisibility(4);
          localTextView3 = (TextView)localView.findViewById(2131493240);
          localTextView4 = (TextView)localView.findViewById(2131493241);
          localImageView1 = (ImageView)localView.findViewById(2131493239);
          localImageView2 = (ImageView)localView.findViewById(2131493238);
          localInteger = localProduct.getTotalCount();
          str2 = localProduct.getGood();
          if ((localInteger != null) && (!TextUtils.isEmpty(str2))) {
            break label483;
          }
          localTextView4.setVisibility(8);
          localTextView3.setVisibility(8);
        }
        for (;;)
        {
          if (localProduct.getIsPromotionJiang().booleanValue())
          {
            localImageView2.setVisibility(0);
            if (localProduct.getIsPromotionZeng().booleanValue())
            {
              localImageView2.setImageResource(2130837615);
              localImageView1.setVisibility(0);
              localImageView1.setImageResource(2130837610);
              return localView;
              if (paramAnonymousInt % 2 == 1)
              {
                localView.setBackgroundResource(2130838108);
                break;
              }
              localView.setBackgroundResource(2130838110);
              break;
              label429:
              CPProductListActivity localCPProductListActivity1 = CPProductListActivity.this;
              Object[] arrayOfObject1 = new Object[1];
              arrayOfObject1[0] = localProduct.getJdPrice();
              str1 = localCPProductListActivity1.getString(2131165822, arrayOfObject1);
              break label236;
              label464:
              localTextView2.setVisibility(0);
              localTextView2.setText(localProductShow.getMarketPrice());
              break label262;
              label483:
              String str3 = CPProductListActivity.this.getString(2131166486);
              SpannableString localSpannableString1 = new SpannableString(str3 + str2);
              localSpannableString1.setSpan(new StyleSpan(1), str3.length(), localSpannableString1.length(), 33);
              localTextView4.setVisibility(0);
              CPProductListActivity localCPProductListActivity2 = CPProductListActivity.this;
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = String.valueOf(localInteger);
              SpannableString localSpannableString2 = new SpannableString(localCPProductListActivity2.getString(2131166410, arrayOfObject2));
              localSpannableString2.setSpan(new StyleSpan(1), 0, localSpannableString2.length(), 33);
              localTextView4.setText(localSpannableString2);
              localTextView3.setVisibility(0);
              localTextView3.setText(localSpannableString1);
              continue;
            }
            localImageView2.setImageResource(2130837610);
            localImageView1.setVisibility(8);
            return localView;
          }
        }
        localImageView1.setVisibility(8);
        if (localProduct.getIsPromotionZeng().booleanValue())
        {
          localImageView2.setVisibility(0);
          localImageView2.setImageResource(2130837615);
          return localView;
        }
        localImageView2.setVisibility(8);
        return localView;
      }
      
      public int getViewTypeCount()
      {
        return 2;
      }
    };
  }
  
  private void initData()
  {
    this.itemList.add(0, getResources().getString(2131166207));
    if (this.itemList.size() > 2) {
      this.itemList.add(2, getResources().getString(2131166208));
    }
    this.searchCateText.setText(2131166182);
    this.correctionBtn.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(CPProductListActivity.this, CorrectionActivity.class);
        localIntent.putExtra("imgPath", CPProductListActivity.this.getIntent().getStringExtra("imgPath"));
        localIntent.putExtra("resultList", CPProductListActivity.this.getIntent().getStringExtra("resultList"));
        CPProductListActivity.this.startActivity(localIntent);
      }
    });
    this.wareInfoList.setHeaderDividersEnabled(false);
    MySimpleAdapter localMySimpleAdapter = getSimpleAdapter(this.itemList);
    this.wareInfoList.setAdapter(localMySimpleAdapter);
    this.wareInfoList.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        Object localObject = ((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        if ((localObject instanceof Product))
        {
          Product localProduct = (Product)localObject;
          if (localProduct != null) {
            StartActivityUtils.startProductDetailActivity(CPProductListActivity.this, localProduct.getId(), localProduct.getName(), new SourceEntity("visualSearch", null));
          }
        }
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.itemList = ((ArrayList)getIntent().getExtras().getSerializable("picSearch"));
    if ((this.itemList != null) && (this.itemList.size() > 0))
    {
      findView();
      initData();
      return;
    }
    Toast.makeText(this, 2131166209, 0).show();
    post(new Runnable()
    {
      public void run()
      {
        CPProductListActivity.this.finish();
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.search.CPProductListActivity
 * JD-Core Version:    0.7.0.1
 */