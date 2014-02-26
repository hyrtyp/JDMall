package com.jingdong.common.entity.cart;

import android.text.TextUtils;
import com.jingdong.common.database.table.DB_CartTable;
import com.jingdong.common.database.table.DB_PacksTable;
import com.jingdong.common.entity.Pack;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class CartResponseInfo
  implements Serializable
{
  private static final long serialVersionUID = 4640758424947559988L;
  private HashMap<CartResponseSuit, ArrayList<CartResponseSku>> checkedCartPackMap;
  private ArrayList<CartSkuSummary> checkedCartSkuList;
  private ArrayList<CartResonseYBSelected> checkedCartYBList;
  private ArrayList<CartSkuSummary> checkedSkuOfThePacks;
  private ArrayList<CartPackSummary> checkedStatisticsPackList;
  private ArrayList<CartSkuSummary> checkedStatisticsSkuList;
  private String discount;
  private ArrayList<CartResponseGift> gifts = new ArrayList();
  private Boolean hasDaJiaDian;
  private Boolean isEmpty;
  private Integer num;
  private String price;
  private String priceShow;
  private String rePrice;
  private ArrayList<CartResponseSku> skus = new ArrayList();
  private ArrayList<CartResponseSuit> suits = new ArrayList();
  
  public CartResponseInfo(JSONObjectProxy paramJSONObjectProxy, String paramString)
  {
    setNum(paramJSONObjectProxy.getIntOrNull("Num"));
    setRePrice(paramJSONObjectProxy.getStringOrNull("RePrice"));
    setHasDaJiaDian(paramJSONObjectProxy.getBooleanOrNull("HasDaJiaDian"));
    setPrice(paramJSONObjectProxy.getStringOrNull("Price"));
    setDiscount(paramJSONObjectProxy.getStringOrNull("Discount"));
    setPriceShow(paramJSONObjectProxy.getStringOrNull("PriceShow"));
    setIsEmpty(paramJSONObjectProxy.getBooleanOrNull("IsEmpty"));
    JSONArrayPoxy localJSONArrayPoxy1 = paramJSONObjectProxy.getJSONArrayOrNull("Skus");
    int k;
    JSONArrayPoxy localJSONArrayPoxy2;
    int j;
    label161:
    JSONArrayPoxy localJSONArrayPoxy3;
    if ((localJSONArrayPoxy1 != null) && (localJSONArrayPoxy1.length() > 0))
    {
      k = 0;
      if (k < localJSONArrayPoxy1.length()) {}
    }
    else
    {
      localJSONArrayPoxy2 = paramJSONObjectProxy.getJSONArrayOrNull("Gifts");
      if ((localJSONArrayPoxy2 != null) && (localJSONArrayPoxy2.length() > 0))
      {
        j = 0;
        if (j < localJSONArrayPoxy2.length()) {
          break label243;
        }
      }
      localJSONArrayPoxy3 = paramJSONObjectProxy.getJSONArrayOrNull("Suits");
      if ((localJSONArrayPoxy3 == null) || (localJSONArrayPoxy3.length() <= 0)) {}
    }
    for (int i = 0;; i++)
    {
      if (i >= localJSONArrayPoxy3.length())
      {
        return;
        JSONObjectProxy localJSONObjectProxy3 = localJSONArrayPoxy1.getJSONObjectOrNull(k);
        if (localJSONObjectProxy3 != null) {
          this.skus.add(new CartResponseSku(localJSONObjectProxy3, paramString));
        }
        k++;
        break;
        label243:
        JSONObjectProxy localJSONObjectProxy2 = localJSONArrayPoxy2.getJSONObjectOrNull(j);
        if ((localJSONObjectProxy2 != null) && (localJSONObjectProxy2.getJSONObjectOrNull("MainSku") != null)) {
          this.gifts.add(new CartResponseGift(localJSONObjectProxy2, "MainSku", paramString));
        }
        j++;
        break label161;
      }
      JSONObjectProxy localJSONObjectProxy1 = localJSONArrayPoxy3.getJSONObjectOrNull(i);
      if (localJSONObjectProxy1 != null) {
        this.suits.add(new CartResponseSuit(localJSONObjectProxy1, paramString));
      }
    }
  }
  
  private void makeCheckedSkusAndPacks()
  {
    this.checkedStatisticsSkuList = new ArrayList();
    this.checkedStatisticsPackList = new ArrayList();
    this.checkedCartSkuList = new ArrayList();
    this.checkedCartPackMap = new HashMap();
    this.checkedCartYBList = new ArrayList();
    this.checkedSkuOfThePacks = new ArrayList();
    Iterator localIterator1 = this.skus.iterator();
    Iterator localIterator2;
    label92:
    Iterator localIterator3;
    if (!localIterator1.hasNext())
    {
      localIterator2 = this.gifts.iterator();
      if (localIterator2.hasNext()) {
        break label189;
      }
      localIterator3 = this.suits.iterator();
    }
    label189:
    CartResponseSuit localCartResponseSuit;
    label413:
    do
    {
      for (;;)
      {
        if (!localIterator3.hasNext())
        {
          return;
          CartResponseSku localCartResponseSku1 = (CartResponseSku)localIterator1.next();
          if (!localCartResponseSku1.isChecked()) {
            break;
          }
          this.checkedStatisticsSkuList.add(localCartResponseSku1);
          this.checkedCartSkuList.add(localCartResponseSku1);
          if ((localCartResponseSku1.getYbSkus() == null) || (localCartResponseSku1.getYbSkus().size() <= 0)) {
            break;
          }
          this.checkedCartYBList.addAll(localCartResponseSku1.getYbSkus());
          break;
          CartResponseGift localCartResponseGift = (CartResponseGift)localIterator2.next();
          if (!localCartResponseGift.isChecked()) {
            break label92;
          }
          this.checkedStatisticsSkuList.add(localCartResponseGift);
          this.checkedCartSkuList.add(localCartResponseGift);
          if ((localCartResponseGift.getYbSkus() == null) || (localCartResponseGift.getYbSkus().size() <= 0)) {
            break label92;
          }
          this.checkedCartYBList.addAll(localCartResponseGift.getYbSkus());
          break label92;
        }
        localCartResponseSuit = (CartResponseSuit)localIterator3.next();
        if (!TextUtils.equals(localCartResponseSuit.getsType(), "4")) {
          break label413;
        }
        if (localCartResponseSuit.isChecked())
        {
          this.checkedStatisticsPackList.add(new CartPackSummary(localCartResponseSuit.getPackId(), localCartResponseSuit.getNum()));
          this.checkedCartPackMap.put(localCartResponseSuit, null);
          ArrayList localArrayList5 = localCartResponseSuit.getSkus();
          for (int k = 0; k < localArrayList5.size(); k++)
          {
            CartResponseSku localCartResponseSku4 = (CartResponseSku)localArrayList5.get(k);
            if ((localCartResponseSku4.getYbSkus() != null) && (localCartResponseSku4.getYbSkus().size() > 0)) {
              this.checkedCartYBList.addAll(localCartResponseSku4.getYbSkus());
            }
            this.checkedSkuOfThePacks.add(localCartResponseSku4);
          }
        }
      }
      if (TextUtils.equals(localCartResponseSuit.getsType(), "11"))
      {
        ArrayList localArrayList3 = localCartResponseSuit.getSkus();
        ArrayList localArrayList4 = new ArrayList();
        for (int j = 0;; j++)
        {
          if (j >= localArrayList3.size())
          {
            if (localArrayList4.size() <= 0) {
              break;
            }
            this.checkedCartPackMap.put(localCartResponseSuit, localArrayList4);
            break;
          }
          CartResponseSku localCartResponseSku3 = (CartResponseSku)localArrayList3.get(j);
          if (localCartResponseSku3.isChecked())
          {
            this.checkedStatisticsSkuList.add(localCartResponseSku3);
            this.checkedSkuOfThePacks.add(localCartResponseSku3);
            localArrayList4.add(localCartResponseSku3);
            if ((localCartResponseSku3.getYbSkus() != null) && (localCartResponseSku3.getYbSkus().size() > 0)) {
              this.checkedCartYBList.addAll(localCartResponseSku3.getYbSkus());
            }
          }
        }
      }
    } while (!TextUtils.equals(localCartResponseSuit.getsType(), "16"));
    ArrayList localArrayList1 = localCartResponseSuit.getSkus();
    ArrayList localArrayList2 = new ArrayList();
    for (int i = 0;; i++)
    {
      if (i >= localArrayList1.size())
      {
        if (localArrayList2.size() <= 0) {
          break;
        }
        this.checkedCartPackMap.put(localCartResponseSuit, localArrayList2);
        break;
      }
      CartResponseSku localCartResponseSku2 = (CartResponseSku)localArrayList1.get(i);
      if (localCartResponseSku2.isChecked())
      {
        this.checkedStatisticsSkuList.add(localCartResponseSku2);
        this.checkedSkuOfThePacks.add(localCartResponseSku2);
        localArrayList2.add(localCartResponseSku2);
        if ((localCartResponseSku2.getYbSkus() != null) && (localCartResponseSku2.getYbSkus().size() > 0)) {
          this.checkedCartYBList.addAll(localCartResponseSku2.getYbSkus());
        }
      }
    }
  }
  
  public ArrayList<Pack> getAllBuyPack()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.suits.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localArrayList;
      }
      CartResponseSuit localCartResponseSuit = (CartResponseSuit)localIterator.next();
      if (TextUtils.equals(localCartResponseSuit.getsType(), "4")) {
        localArrayList.add(localCartResponseSuit.toPack());
      }
    }
  }
  
  public ArrayList<Product> getAllBuyProduct()
  {
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = this.skus.iterator();
    Iterator localIterator2;
    label34:
    Iterator localIterator3;
    if (!localIterator1.hasNext())
    {
      localIterator2 = this.gifts.iterator();
      if (localIterator2.hasNext()) {
        break label85;
      }
      localIterator3 = this.suits.iterator();
    }
    for (;;)
    {
      if (!localIterator3.hasNext())
      {
        return localArrayList1;
        localArrayList1.add(((CartResponseSku)localIterator1.next()).toProduct());
        break;
        label85:
        localArrayList1.add(((CartResponseGift)localIterator2.next()).toProduct());
        break label34;
      }
      CartResponseSuit localCartResponseSuit = (CartResponseSuit)localIterator3.next();
      if (!TextUtils.equals(localCartResponseSuit.getsType(), "4"))
      {
        ArrayList localArrayList2 = localCartResponseSuit.getSkus();
        for (int i = 0; i < localArrayList2.size(); i++) {
          localArrayList1.add(((CartSkuSummary)localArrayList2.get(i)).toProduct());
        }
      }
    }
  }
  
  public HashMap<CartResponseSuit, ArrayList<CartResponseSku>> getCheckedCartPackMap()
  {
    if (this.checkedCartPackMap == null) {
      makeCheckedSkusAndPacks();
    }
    return this.checkedCartPackMap;
  }
  
  public ArrayList<CartSkuSummary> getCheckedCartSkuList()
  {
    if (this.checkedCartSkuList == null) {
      makeCheckedSkusAndPacks();
    }
    return this.checkedCartSkuList;
  }
  
  public ArrayList<CartResonseYBSelected> getCheckedCartYBList()
  {
    if (this.checkedCartYBList == null) {
      makeCheckedSkusAndPacks();
    }
    return this.checkedCartYBList;
  }
  
  public ArrayList<CartSkuSummary> getCheckedSkuOfThePacks()
  {
    if (this.checkedSkuOfThePacks == null) {
      makeCheckedSkusAndPacks();
    }
    return this.checkedSkuOfThePacks;
  }
  
  public ArrayList<CartPackSummary> getCheckedStatisticsPackList()
  {
    if (this.checkedStatisticsPackList == null) {
      makeCheckedSkusAndPacks();
    }
    return this.checkedStatisticsPackList;
  }
  
  public ArrayList<CartSkuSummary> getCheckedStatisticsSkuList()
  {
    if (this.checkedStatisticsSkuList == null) {
      makeCheckedSkusAndPacks();
    }
    return this.checkedStatisticsSkuList;
  }
  
  public String getDiscount()
  {
    if (this.discount == null) {
      return "";
    }
    return this.discount;
  }
  
  public ArrayList<CartResponseGift> getGifts()
  {
    return this.gifts;
  }
  
  public Boolean getHasDaJiaDian()
  {
    if (this.hasDaJiaDian == null) {
      return Boolean.valueOf(false);
    }
    return this.hasDaJiaDian;
  }
  
  public Boolean getIsEmpty()
  {
    if (this.isEmpty == null) {
      return Boolean.valueOf(false);
    }
    return this.isEmpty;
  }
  
  public Integer getNum()
  {
    if (this.num == null) {
      return Integer.valueOf(0);
    }
    return this.num;
  }
  
  public String getPrice()
  {
    if (this.price == null) {
      return "";
    }
    return this.price;
  }
  
  public String getPriceShow()
  {
    if (this.priceShow == null) {
      return "";
    }
    return this.priceShow;
  }
  
  public String getRePrice()
  {
    if (this.rePrice == null) {
      return "";
    }
    return this.rePrice;
  }
  
  public ArrayList<CartResponseSku> getSkus()
  {
    return this.skus;
  }
  
  public ArrayList<CartResponseSuit> getSuits()
  {
    return this.suits;
  }
  
  public ArrayList<CartResonseYBSelected> getUnOverlapCheckedCartYBList()
  {
    if (this.checkedCartYBList == null) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.checkedCartYBList.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return new ArrayList(localHashMap.values());
      }
      CartResonseYBSelected localCartResonseYBSelected1 = (CartResonseYBSelected)localIterator.next();
      CartResonseYBSelected localCartResonseYBSelected2 = (CartResonseYBSelected)localHashMap.get(localCartResonseYBSelected1.getYbId());
      if (localCartResonseYBSelected2 == null)
      {
        localHashMap.put(localCartResonseYBSelected1.getYbId(), (CartResonseYBSelected)localCartResonseYBSelected1.clone());
      }
      else if ((localCartResonseYBSelected2.getYbSku() != null) && (localCartResonseYBSelected1.getYbSku() != null))
      {
        int i = localCartResonseYBSelected2.getYbSku().getNum().intValue() + localCartResonseYBSelected1.getYbSku().getNum().intValue();
        localCartResonseYBSelected2.getYbSku().setNum(Integer.valueOf(i));
      }
    }
  }
  
  public void setDiscount(String paramString)
  {
    this.discount = paramString;
  }
  
  public void setGifts(ArrayList<CartResponseGift> paramArrayList)
  {
    this.gifts = paramArrayList;
  }
  
  public void setHasDaJiaDian(Boolean paramBoolean)
  {
    this.hasDaJiaDian = paramBoolean;
  }
  
  public void setIsEmpty(Boolean paramBoolean)
  {
    this.isEmpty = paramBoolean;
  }
  
  public void setNum(Integer paramInteger)
  {
    this.num = paramInteger;
  }
  
  public void setPrice(String paramString)
  {
    this.price = paramString;
  }
  
  public void setPriceShow(String paramString)
  {
    this.priceShow = paramString;
  }
  
  public void setRePrice(String paramString)
  {
    this.rePrice = paramString;
  }
  
  public void setSkus(ArrayList<CartResponseSku> paramArrayList)
  {
    this.skus = paramArrayList;
  }
  
  public void setSuits(ArrayList<CartResponseSuit> paramArrayList)
  {
    this.suits = paramArrayList;
  }
  
  public JSONObject toCheckedCartStr()
  {
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      JSONArray localJSONArray1 = new JSONArray();
      Iterator localIterator1 = getCheckedCartSkuList().iterator();
      Iterator localIterator2;
      label44:
      HashMap localHashMap;
      JSONArray localJSONArray2;
      Iterator localIterator3;
      JSONArray localJSONArray5;
      Iterator localIterator5;
      label153:
      JSONObject localJSONObject4;
      Iterator localIterator6;
      if (!localIterator1.hasNext())
      {
        localIterator2 = getUnOverlapCheckedCartYBList().iterator();
        if (localIterator2.hasNext()) {
          break label244;
        }
        if (localJSONArray1.length() > 0) {
          localJSONObject1.put("TheSkus", localJSONArray1);
        }
        localHashMap = getCheckedCartPackMap();
        localJSONArray2 = new JSONArray();
        localIterator3 = localHashMap.keySet().iterator();
        if (localIterator3.hasNext()) {
          break label280;
        }
        if (localJSONArray2.length() > 0) {
          localJSONObject1.put("ThePacks", localJSONArray2);
        }
        if (getCheckedSkuOfThePacks().size() > 0)
        {
          localJSONArray5 = new JSONArray();
          localIterator5 = getCheckedSkuOfThePacks().iterator();
          if (localIterator5.hasNext()) {
            break label611;
          }
          localJSONObject1.put("SkusOfThePacks", localJSONArray5);
        }
        if (getCheckedCartYBList().size() <= 0) {
          break label664;
        }
        localJSONObject4 = new JSONObject();
        localIterator6 = getCheckedCartYBList().iterator();
      }
      for (;;)
      {
        if (!localIterator6.hasNext())
        {
          localJSONObject1.put("YbInfo", localJSONObject4);
          return localJSONObject1;
          localJSONArray1.put(((CartSkuSummary)localIterator1.next()).toSummaryParams());
          break;
          label244:
          CartResonseYBSelected localCartResonseYBSelected1 = (CartResonseYBSelected)localIterator2.next();
          if (localCartResonseYBSelected1.getYbSku() == null) {
            break label44;
          }
          localJSONArray1.put(localCartResonseYBSelected1.getYbSku().toSummaryParams());
          break label44;
          label280:
          CartResponseSuit localCartResponseSuit = (CartResponseSuit)localIterator3.next();
          JSONObject localJSONObject2 = new JSONObject();
          localJSONObject2.put("Id", localCartResponseSuit.getPackId());
          localJSONObject2.put("num", localCartResponseSuit.getNum().toString());
          ArrayList localArrayList1 = (ArrayList)localHashMap.get(localCartResponseSuit);
          label384:
          JSONArray localJSONArray3;
          Iterator localIterator4;
          label400:
          ArrayList localArrayList2;
          JSONArray localJSONArray4;
          int i;
          if (localArrayList1 != null) {
            if (TextUtils.equals(localCartResponseSuit.getsType(), "16"))
            {
              localJSONObject2.put("suitType", 10);
              localJSONObject2.put("sType", 13);
              localJSONArray3 = new JSONArray();
              localIterator4 = localArrayList1.iterator();
              if (localIterator4.hasNext()) {
                break label525;
              }
              if (localJSONArray3.length() > 0) {
                localJSONObject2.put("TheSkus", localJSONArray3);
              }
              localArrayList2 = localCartResponseSuit.getGifts();
              localJSONArray4 = new JSONArray();
              i = 0;
              label448:
              if (i < localArrayList2.size()) {
                break label547;
              }
              if (localJSONArray4.length() > 0) {
                localJSONObject2.put("Gifts", localJSONArray4);
              }
            }
          }
          for (;;)
          {
            localJSONArray2.put(localJSONObject2);
            break;
            if (!TextUtils.equals(localCartResponseSuit.getsType(), "11")) {
              break label384;
            }
            localJSONObject2.put("suitType", 10);
            localJSONObject2.put("sType", "11");
            break label384;
            label525:
            localJSONArray3.put(((CartResponseSku)localIterator4.next()).toSummaryParams());
            break label400;
            label547:
            JSONObject localJSONObject3 = ((CartSkuSummary)localArrayList2.get(i)).toSummaryParams();
            localJSONObject3.put("awardType", 1);
            localJSONArray4.put(localJSONObject3);
            i++;
            break label448;
            localJSONObject2.put("suitType", 6);
            localJSONObject2.put("sType", "4");
          }
          label611:
          localJSONArray5.put(((CartSkuSummary)localIterator5.next()).getSkuId());
          break label153;
        }
        CartResonseYBSelected localCartResonseYBSelected2 = (CartResonseYBSelected)localIterator6.next();
        localJSONObject4.put(localCartResonseYBSelected2.toOrderParamsString(), localCartResonseYBSelected2.getYbNum());
      }
      label664:
      return localJSONObject1;
    }
    catch (Exception localException) {}
    return localJSONObject1;
  }
  
  public JSONObject toCheckedStatisticsStr()
  {
    localJSONObject1 = new JSONObject();
    try
    {
      HashMap localHashMap1 = DB_CartTable.getCartListForProduct();
      ArrayList localArrayList1 = getCheckedStatisticsSkuList();
      JSONArray localJSONArray1 = new JSONArray();
      Iterator localIterator1 = localArrayList1.iterator();
      HashMap localHashMap2;
      JSONArray localJSONArray2;
      Iterator localIterator2;
      if (!localIterator1.hasNext())
      {
        localJSONObject1.put("TheSkus", localJSONArray1);
        localHashMap2 = DB_PacksTable.getPacksListForPack();
        ArrayList localArrayList2 = getCheckedStatisticsPackList();
        localJSONArray2 = new JSONArray();
        localIterator2 = localArrayList2.iterator();
        if (!localIterator2.hasNext())
        {
          localJSONObject1.put("ThePacks", localJSONArray2);
          return localJSONObject1;
        }
      }
      else
      {
        CartSkuSummary localCartSkuSummary = (CartSkuSummary)localIterator1.next();
        JSONObject localJSONObject2 = new JSONObject();
        localJSONObject2.put("Id", localCartSkuSummary.getSkuId());
        Product localProduct = (Product)localHashMap1.get(localCartSkuSummary.getSkuId());
        if (localProduct != null) {}
        for (SourceEntity localSourceEntity1 = localProduct.getSourceEntity();; localSourceEntity1 = new SourceEntity("shoppingCart_webSite", null))
        {
          localJSONObject2.put("source_type", localSourceEntity1.getSourceType());
          localJSONObject2.put("source_value", localSourceEntity1.getSourceValue());
          localJSONArray1.put(localJSONObject2);
          break;
        }
      }
      CartPackSummary localCartPackSummary = (CartPackSummary)localIterator2.next();
      JSONObject localJSONObject3 = new JSONObject();
      localJSONObject3.put("Id", localCartPackSummary.getPackId());
      Pack localPack = (Pack)localHashMap2.get(localCartPackSummary.getPackId());
      if (localPack != null) {}
      for (SourceEntity localSourceEntity2 = localPack.getSourceEntity();; localSourceEntity2 = new SourceEntity("shoppingCart_webSite", null))
      {
        localJSONObject3.put("source_type", localSourceEntity2.getSourceType());
        localJSONObject3.put("source_value", localSourceEntity2.getSourceValue());
        localJSONArray2.put(localJSONObject3);
        break;
      }
      return localJSONObject1;
    }
    catch (Exception localException) {}
  }
  
  public String toString()
  {
    return "CartResponseInfo [num=" + this.num + ", skus=" + this.skus + ", rePrice=" + this.rePrice + ", hasDaJiaDian=" + this.hasDaJiaDian + ", price=" + this.price + ", gifts=" + this.gifts + ", suits=" + this.suits + ", discount=" + this.discount + ", priceShow=" + this.priceShow + ", isEmpty=" + this.isEmpty + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartResponseInfo
 * JD-Core Version:    0.7.0.1
 */