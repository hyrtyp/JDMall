package com.jingdong.app.mall.shopping;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.jingdong.common.entity.cart.CartResponseInfo;
import com.jingdong.common.entity.cart.CartResponseSku;
import com.jingdong.common.entity.cart.CartResponseSuit;
import com.jingdong.common.utils.ImageUtil;
import java.util.ArrayList;

public class ShoppingCartAdapter
  extends BaseAdapter
{
  private CartResponseInfo cartResponseInfo;
  private int gifts;
  private int resource;
  private int skus;
  private int suits;
  
  public ShoppingCartAdapter(int paramInt)
  {
    this.resource = paramInt;
  }
  
  public CartResponseInfo getCartResponseInfo()
  {
    return this.cartResponseInfo;
  }
  
  public int getCount()
  {
    return this.gifts + this.skus + this.suits;
  }
  
  public Object getItem(int paramInt)
  {
    if (paramInt < this.skus) {
      return this.cartResponseInfo.getSkus().get(paramInt);
    }
    if (paramInt < this.gifts + this.skus) {
      return this.cartResponseInfo.getGifts().get(paramInt - this.skus);
    }
    if (paramInt < this.skus + this.suits + this.gifts) {
      return this.cartResponseInfo.getSuits().get(paramInt - this.skus - this.gifts);
    }
    return Integer.valueOf(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemType(int paramInt)
  {
    if (paramInt < this.skus) {
      return 0;
    }
    if (paramInt < this.gifts + this.skus) {
      return 1;
    }
    if (paramInt < this.skus + this.suits + this.gifts) {
      return 2;
    }
    return -1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return ImageUtil.inflate(this.resource, null);
  }
  
  public boolean isExisSelectItem()
  {
    int i = 0;
    if (i >= this.skus) {}
    int k;
    for (int j = 0;; j++)
    {
      if (j >= this.gifts)
      {
        k = 0;
        if (k < this.suits) {
          break label105;
        }
        return false;
        CartResponseSku localCartResponseSku1 = (CartResponseSku)this.cartResponseInfo.getSkus().get(i);
        if ((localCartResponseSku1 != null) && (localCartResponseSku1.isChecked())) {
          return true;
        }
        i++;
        break;
      }
      CartResponseSku localCartResponseSku2 = (CartResponseSku)this.cartResponseInfo.getGifts().get(j);
      if ((localCartResponseSku2 != null) && (localCartResponseSku2.isChecked())) {
        return true;
      }
    }
    label105:
    CartResponseSuit localCartResponseSuit = (CartResponseSuit)this.cartResponseInfo.getSuits().get(k);
    if (localCartResponseSuit == null) {}
    for (;;)
    {
      k++;
      break;
      if ("4".equals(localCartResponseSuit.getsType()))
      {
        if (localCartResponseSuit.isChecked()) {
          return true;
        }
      }
      else
      {
        int m = localCartResponseSuit.getSkus().size();
        for (int n = 0; n < m; n++)
        {
          CartResponseSku localCartResponseSku3 = (CartResponseSku)localCartResponseSuit.getSkus().get(n);
          if ((localCartResponseSku3 != null) && (localCartResponseSku3.isChecked())) {
            return true;
          }
        }
      }
    }
  }
  
  public void setData(CartResponseInfo paramCartResponseInfo)
  {
    this.cartResponseInfo = paramCartResponseInfo;
    int i;
    int j;
    label34:
    int k;
    if (this.cartResponseInfo.getGifts() == null)
    {
      i = 0;
      this.gifts = i;
      if (this.cartResponseInfo.getSkus() != null) {
        break label77;
      }
      j = 0;
      this.skus = j;
      ArrayList localArrayList = this.cartResponseInfo.getSuits();
      k = 0;
      if (localArrayList != null) {
        break label91;
      }
    }
    for (;;)
    {
      this.suits = k;
      return;
      i = this.cartResponseInfo.getGifts().size();
      break;
      label77:
      j = this.cartResponseInfo.getSkus().size();
      break label34;
      label91:
      k = this.cartResponseInfo.getSuits().size();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.ShoppingCartAdapter
 * JD-Core Version:    0.7.0.1
 */