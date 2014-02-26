package com.jingdong.app.mall.personel;

import android.content.Intent;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.Product;
import com.jingdong.common.utils.pay.PayUtils;

public class MyOrderPaymentUtils
{
  private MyActivity mActivity;
  private Product mProduct;
  
  public MyOrderPaymentUtils(MyActivity paramMyActivity, Product paramProduct)
  {
    this.mActivity = paramMyActivity;
    this.mProduct = paramProduct;
  }
  
  public void doCheckLogistics()
  {
    Intent localIntent = new Intent(this.mActivity.getApplicationContext(), CheckMyOrderDetail.class);
    if (this.mProduct != null)
    {
      localIntent.putExtra("product", this.mProduct);
      localIntent.putExtra("title", this.mActivity.getString(2131166303));
    }
    this.mActivity.startActivityInFrame(localIntent);
  }
  
  public void doOnlinePay()
  {
    PayUtils.doPay(MyApplication.getInstance().getCurrentMyActivity(), this.mProduct.getOrderId());
  }
  
  public void doPostPayConfirm()
  {
    Intent localIntent = new Intent(this.mActivity.getApplicationContext(), MyOrderPostPayConfirm.class);
    localIntent.putExtra("orderId", this.mProduct.getOrderId());
    this.mActivity.putBooleanToPreference("post_order_confrim_flag", Boolean.valueOf(false));
    this.mActivity.startActivityInFrame(localIntent);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MyOrderPaymentUtils
 * JD-Core Version:    0.7.0.1
 */