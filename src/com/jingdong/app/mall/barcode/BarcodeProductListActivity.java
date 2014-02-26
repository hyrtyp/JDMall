package com.jingdong.app.mall.barcode;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ProductShow;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.BarcodeRecord;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.MySimpleAdapter;
import java.util.ArrayList;
import java.util.List;

public class BarcodeProductListActivity
  extends MyActivity
{
  private BarcodeRecord barcodeRecord;
  private ListView listView;
  private ArrayList<Product> productList;
  
  private void findView()
  {
    this.listView = ((ListView)findViewById(2131493178));
  }
  
  private void init()
  {
    Bundle localBundle = getIntent().getExtras();
    this.productList = ((ArrayList)localBundle.getSerializable("productList"));
    this.barcodeRecord = ((BarcodeRecord)localBundle.getSerializable("barcodeRecord"));
    MySimpleAdapter local1 = new MySimpleAdapter(this, this.productList, 2130903087, new String[0], new int[0])
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        if (paramAnonymousInt % 2 == 1) {
          localView.setBackgroundResource(2130838108);
        }
        for (;;)
        {
          Product localProduct = (Product)getItem(paramAnonymousInt);
          ProductShow localProductShow = new ProductShow(BarcodeProductListActivity.this, localProduct);
          ((TextView)localView.findViewById(2131493180)).setText(localProductShow.getNameAndAdWord());
          return localView;
          localView.setBackgroundResource(2130838110);
        }
      }
    };
    this.listView.setAdapter(local1);
    this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        Product localProduct = (Product)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        StartActivityUtils.startProductDetailActivity(BarcodeProductListActivity.this, localProduct.getId(), localProduct.getName(), new SourceEntity("wareIdByBarCodeList", BarcodeProductListActivity.this.barcodeRecord.getContent()));
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903086);
    findView();
    init();
    ((TextView)findViewById(2131492990)).setText("条码“" + this.barcodeRecord.getContent() + "”的相关商品：");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.barcode.BarcodeProductListActivity
 * JD-Core Version:    0.7.0.1
 */