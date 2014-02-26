package com.jingdong.common.entity;

import android.content.Intent;
import android.text.TextUtils;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NewCurrentOrder
  implements Serializable
{
  public static final int NEW_CURRENT_ORDER = 1;
  public static final int PAY_CASH_DELIVERY = 1;
  public static final int PAY_ONLINE = 4;
  public static final int PAY_POST = 2;
  public static final int PAY_SELF = 3;
  private static final String TAG = NewCurrentOrder.class.getSimpleName();
  private static final long serialVersionUID = -6973939040420555356L;
  private String addressDetail;
  private String bigItemCodDateName;
  private String bigItemCodDateValue;
  private String changeAreaMessage;
  private String cityName;
  private Integer codTime;
  private String codTimeName;
  private String companyName;
  private String countryName;
  private Integer couponDiscount;
  private ArrayList<CouponInfo> couponInfo = new ArrayList();
  private UsedBalance currBalance;
  private UsedJdbean currJdbean;
  private Integer discount;
  private Integer discountLipinka;
  private String email;
  private ArrayList<GiftCartInfo> giftInfo = new ArrayList();
  private Boolean hasTang9;
  private Integer idArea;
  private Integer idCity;
  private Integer idCompanyBranch;
  private Integer idInvoiceContentTypeBook;
  private Integer idInvoiceContentsType;
  private Integer idInvoiceHeaderType;
  private Integer idInvoicePutType;
  private Integer idInvoiceType;
  private Integer idPaymentType;
  private Integer idPickSite;
  private Integer idProvince;
  private Integer idShipmentType;
  private Integer idTown;
  private String invoiceContentTypeBookName;
  private String invoiceContentsTypeName;
  private String invoiceTitle;
  private String invoiceTypeName;
  private boolean isChangeJingOrDongQuan = false;
  private boolean isChangeLipin = false;
  private Boolean isCodInform;
  private Boolean isIdTown;
  private Boolean isOpenPaymentPassword;
  private Boolean isPutBookInvoice;
  private Boolean isUseBalance;
  private Boolean isUseJdBean;
  private Boolean isUsedVirtualPay;
  private Boolean miaoSha;
  private String mobile;
  private String name;
  private Boolean needRemark;
  private String openPasswordTip;
  private Integer orderBulk;
  private String otherMessage;
  private String param;
  private String payOnlineMessage;
  private String payPasswordKey;
  private String payPasswordValue;
  private Integer payWayId;
  private String paymentType;
  private Integer paymentWay;
  private String paymentWayName;
  private String phone;
  private String pickSiteAddress;
  private String pickSiteName;
  private String pin;
  private String postCustomerId;
  private String postPayee;
  private Integer price;
  private ArrayList<NewCurrentOrderPriceItem> priceItemList;
  private Integer primitivePrice;
  private String promiseDate;
  private String promiseSendPay;
  private String promiseTimeRange;
  private Integer promiseType;
  private Integer promotionPrice;
  private String provinceName;
  private Integer rePrice;
  private String remark;
  private String shipmentTypeName;
  private String show311Text;
  private String show411Text;
  private String showSecurityFunctionId;
  private String showSecurityMessage;
  private String showSecuritySubmitKey;
  private String showSecurityTitle;
  private String showSecurityUrl;
  private SubmitOrderInfo submitOrderInfo = new SubmitOrderInfo();
  private Integer totalFee;
  private String totalPrice;
  private String townName;
  private Integer userLevel;
  private String usid;
  private VirtualPayAvailable virtualPayAvailable;
  private String where;
  private String zip;
  
  public NewCurrentOrder() {}
  
  public NewCurrentOrder(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    update(paramJSONObjectProxy, paramInt);
  }
  
  public String getAddressDetail()
  {
    return this.addressDetail;
  }
  
  public String getBigItemCodDateName()
  {
    return this.bigItemCodDateName;
  }
  
  public String getBigItemCodDateValue()
  {
    return this.bigItemCodDateValue;
  }
  
  public String getChangeAreaMessage()
  {
    return this.changeAreaMessage;
  }
  
  public String getCityName()
  {
    return this.cityName;
  }
  
  public Integer getCodTime()
  {
    return this.codTime;
  }
  
  public String getCodTimeName()
  {
    return this.codTimeName;
  }
  
  public String getCompanyName()
  {
    return this.companyName;
  }
  
  public String getCountryName()
  {
    if (this.countryName == null) {
      return "";
    }
    return this.countryName;
  }
  
  public Integer getCouponDiscount()
  {
    return this.couponDiscount;
  }
  
  public ArrayList<CouponInfo> getCouponInfo()
  {
    return this.couponInfo;
  }
  
  public UsedBalance getCurrBalance()
  {
    return this.currBalance;
  }
  
  public UsedJdbean getCurrJdbean()
  {
    return this.currJdbean;
  }
  
  public Integer getDiscount()
  {
    return this.discount;
  }
  
  public Integer getDiscountLipinka()
  {
    return this.discountLipinka;
  }
  
  public String getDisplayCouponGiftContent()
  {
    String str = "";
    ArrayList localArrayList1 = CouponInfo.lookupSelectedForList(this.couponInfo);
    ArrayList localArrayList2 = GiftCartInfo.lookupSelectedForList(this.giftInfo);
    if ((localArrayList1.size() == 0) && (localArrayList2.size() == 0)) {
      return "您没有选择优惠券或礼品卡";
    }
    ArrayList localArrayList3 = CouponInfo.lookupJingForList(localArrayList1);
    ArrayList localArrayList4 = CouponInfo.lookupDongForList(localArrayList1);
    double d2;
    Iterator localIterator2;
    if (localArrayList4.size() > 0)
    {
      str = "使用1张东券, 面额" + ((CouponInfo)localArrayList4.get(0)).getDiscount() + "元";
      if (localArrayList2.size() > 0)
      {
        d2 = 0.0D;
        localIterator2 = localArrayList2.iterator();
      }
    }
    for (;;)
    {
      if (!localIterator2.hasNext())
      {
        if (!TextUtils.isEmpty(str)) {
          str = str + "\n";
        }
        str = str + "使用" + localArrayList2.size() + "张礼品卡, 余额" + d2 + "元";
        return str;
        if (localArrayList3.size() <= 0) {
          break;
        }
        double d1 = 0.0D;
        Iterator localIterator1 = localArrayList3.iterator();
        for (;;)
        {
          if (!localIterator1.hasNext())
          {
            str = "使用" + localArrayList3.size() + "张京券, 面额" + d1 + "元";
            break;
          }
          d1 += ((CouponInfo)localIterator1.next()).getDiscount().doubleValue();
        }
      }
      d2 += ((GiftCartInfo)localIterator2.next()).getLeaveMoney().doubleValue();
    }
  }
  
  public String getEmail()
  {
    if (this.email == null) {
      return "";
    }
    return this.email;
  }
  
  public ArrayList<GiftCartInfo> getGiftInfo()
  {
    return this.giftInfo;
  }
  
  public Boolean getHasTang9()
  {
    if (this.hasTang9 == null) {
      return Boolean.valueOf(false);
    }
    return this.hasTang9;
  }
  
  public Integer getIdArea()
  {
    if (this.idArea == null) {
      return Integer.valueOf(0);
    }
    return this.idArea;
  }
  
  public Integer getIdCity()
  {
    if (this.idCity == null) {
      return Integer.valueOf(0);
    }
    return this.idCity;
  }
  
  public Integer getIdCompanyBranch()
  {
    return this.idCompanyBranch;
  }
  
  public Integer getIdInvoiceContentTypeBook()
  {
    return this.idInvoiceContentTypeBook;
  }
  
  public Integer getIdInvoiceContentsType()
  {
    return this.idInvoiceContentsType;
  }
  
  public Integer getIdInvoiceHeaderType()
  {
    return this.idInvoiceHeaderType;
  }
  
  public Integer getIdInvoicePutType()
  {
    return this.idInvoicePutType;
  }
  
  public Integer getIdInvoiceType()
  {
    return this.idInvoiceType;
  }
  
  public Integer getIdPaymentType()
  {
    if (this.idPaymentType == null) {
      return Integer.valueOf(-1);
    }
    return this.idPaymentType;
  }
  
  public Integer getIdPickSite()
  {
    return this.idPickSite;
  }
  
  public Integer getIdProvince()
  {
    if (this.idProvince == null) {
      return Integer.valueOf(0);
    }
    return this.idProvince;
  }
  
  public Integer getIdShipmentType()
  {
    return this.idShipmentType;
  }
  
  public Integer getIdTown()
  {
    if (this.idTown == null) {
      return Integer.valueOf(0);
    }
    return this.idTown;
  }
  
  public String getInvoiceContentTypeBookName()
  {
    if (this.invoiceContentTypeBookName == null) {
      return "";
    }
    return this.invoiceContentTypeBookName;
  }
  
  public String getInvoiceContentsTypeName()
  {
    if (this.invoiceContentsTypeName == null) {
      return "";
    }
    return this.invoiceContentsTypeName;
  }
  
  public String getInvoiceTitle()
  {
    return this.invoiceTitle;
  }
  
  public String getInvoiceTypeName()
  {
    return this.invoiceTypeName;
  }
  
  public Boolean getIsCodInform()
  {
    return this.isCodInform;
  }
  
  public Boolean getIsIdTown()
  {
    if (this.isIdTown == null) {
      return Boolean.valueOf(false);
    }
    return this.isIdTown;
  }
  
  public Boolean getIsOpenPaymentPassword()
  {
    if (this.isOpenPaymentPassword == null) {
      return Boolean.valueOf(false);
    }
    return this.isOpenPaymentPassword;
  }
  
  public Boolean getIsPutBookInvoice()
  {
    return this.isPutBookInvoice;
  }
  
  public Boolean getIsUseBalance()
  {
    if (this.isUseBalance == null) {
      return Boolean.valueOf(true);
    }
    return this.isUseBalance;
  }
  
  public Boolean getIsUseJdBean()
  {
    if (this.isUseJdBean == null) {
      return Boolean.valueOf(true);
    }
    return this.isUseJdBean;
  }
  
  public Boolean getIsUsedVirtualPay()
  {
    if (this.isUsedVirtualPay == null) {
      return Boolean.valueOf(false);
    }
    return this.isUsedVirtualPay;
  }
  
  public Boolean getMiaoSha()
  {
    if (this.miaoSha == null) {
      return Boolean.valueOf(false);
    }
    return this.miaoSha;
  }
  
  public String getMobile()
  {
    if (this.mobile == null) {
      return "";
    }
    return this.mobile;
  }
  
  public String getName()
  {
    if (this.name == null) {
      return "";
    }
    return this.name;
  }
  
  public Boolean getNeedRemark()
  {
    if (this.needRemark == null) {
      return Boolean.valueOf(false);
    }
    return this.needRemark;
  }
  
  public String getOpenPasswordTip()
  {
    return this.openPasswordTip;
  }
  
  public Integer getOrderBulk()
  {
    return this.orderBulk;
  }
  
  public String getOtherMessage()
  {
    return this.otherMessage;
  }
  
  public String getParam()
  {
    return this.param;
  }
  
  public String getPayOnlineMessage()
  {
    return this.payOnlineMessage;
  }
  
  public String getPayPasswordKey()
  {
    return this.payPasswordKey;
  }
  
  public String getPayPasswordValue()
  {
    return this.payPasswordValue;
  }
  
  public Integer getPayWayId()
  {
    return this.payWayId;
  }
  
  public String getPaymentType()
  {
    return this.paymentType;
  }
  
  public Integer getPaymentWay()
  {
    if (this.paymentWay == null) {
      return Integer.valueOf(0);
    }
    return this.paymentWay;
  }
  
  public String getPaymentWayName()
  {
    return this.paymentWayName;
  }
  
  public String getPhone()
  {
    if (this.phone == null) {
      return "";
    }
    return this.phone;
  }
  
  public String getPickSiteAddress()
  {
    return this.pickSiteAddress;
  }
  
  public String getPickSiteName()
  {
    return this.pickSiteName;
  }
  
  public String getPin()
  {
    if (this.pin == null) {
      return "";
    }
    return this.pin;
  }
  
  public String getPostCustomerId()
  {
    return this.postCustomerId;
  }
  
  public String getPostPayee()
  {
    return this.postPayee;
  }
  
  public Integer getPrice()
  {
    return this.price;
  }
  
  public ArrayList<NewCurrentOrderPriceItem> getPriceItemList()
  {
    return this.priceItemList;
  }
  
  public Integer getPrimitivePrice()
  {
    return this.primitivePrice;
  }
  
  public String getPromiseDate()
  {
    return this.promiseDate;
  }
  
  public String getPromiseSendPay()
  {
    return this.promiseSendPay;
  }
  
  public String getPromiseTimeRange()
  {
    return this.promiseTimeRange;
  }
  
  public Integer getPromiseType()
  {
    return this.promiseType;
  }
  
  public Integer getPromotionPrice()
  {
    return this.promotionPrice;
  }
  
  public String getProvinceName()
  {
    return this.provinceName;
  }
  
  public Integer getRePrice()
  {
    return this.rePrice;
  }
  
  public String getRemark()
  {
    return this.remark;
  }
  
  public String getShipmentTypeName()
  {
    return this.shipmentTypeName;
  }
  
  public String getShow311Text()
  {
    return this.show311Text;
  }
  
  public String getShow411Text()
  {
    return this.show411Text;
  }
  
  public String getShowSecurityFunctionId()
  {
    return this.showSecurityFunctionId;
  }
  
  public String getShowSecurityMessage()
  {
    return this.showSecurityMessage;
  }
  
  public String getShowSecuritySubmitKey()
  {
    return this.showSecuritySubmitKey;
  }
  
  public String getShowSecurityTitle()
  {
    return this.showSecurityTitle;
  }
  
  public String getShowSecurityUrl()
  {
    return this.showSecurityUrl;
  }
  
  public SubmitOrderInfo getSubmitOrderInfo()
  {
    return this.submitOrderInfo;
  }
  
  public Integer getTotalFee()
  {
    return this.totalFee;
  }
  
  public String getTotalPrice()
  {
    return this.totalPrice;
  }
  
  public String getTownName()
  {
    return this.townName;
  }
  
  public Integer getUserLevel()
  {
    if (this.userLevel == null) {
      return Integer.valueOf(0);
    }
    return this.userLevel;
  }
  
  public String getUsid()
  {
    return this.usid;
  }
  
  public VirtualPayAvailable getVirtualPayAvailable()
  {
    return this.virtualPayAvailable;
  }
  
  public String getWhere()
  {
    if (this.where == null) {
      return "";
    }
    return this.where;
  }
  
  public String getZip()
  {
    if (this.zip == null) {
      return "";
    }
    return this.zip;
  }
  
  public boolean isChangeJingOrDongQuan()
  {
    return this.isChangeJingOrDongQuan;
  }
  
  public boolean isChangeLipin()
  {
    return this.isChangeLipin;
  }
  
  public void parseNewModelForInvoicePage(NewCurrentOrder paramNewCurrentOrder)
  {
    if (paramNewCurrentOrder == null) {
      return;
    }
    setIdInvoiceType(paramNewCurrentOrder.getIdInvoiceType());
    setIdInvoiceContentTypeBook(paramNewCurrentOrder.getIdInvoiceContentTypeBook());
    setIdInvoiceContentsType(paramNewCurrentOrder.getIdInvoiceContentsType());
    setInvoiceTitle(paramNewCurrentOrder.getInvoiceTitle());
    setCompanyName(paramNewCurrentOrder.getCompanyName());
    setIdInvoiceHeaderType(paramNewCurrentOrder.getIdInvoiceHeaderType());
  }
  
  public void parseNewModelForYouHuiLipinPage(NewCurrentOrder paramNewCurrentOrder)
  {
    if (paramNewCurrentOrder == null) {
      return;
    }
    setChangeJingOrDongQuan(paramNewCurrentOrder.isChangeJingOrDongQuan);
    setChangeLipin(paramNewCurrentOrder.isChangeLipin());
    setCouponInfo(paramNewCurrentOrder.getCouponInfo());
    setGiftInfo(paramNewCurrentOrder.getGiftInfo());
  }
  
  public void parseOldModelForPaymentInfo(Intent paramIntent)
  {
    PaymentInfo localPaymentInfo = new PaymentInfo();
    JSONObject localJSONObject;
    try
    {
      Constants.mModifiedPaymentInfo = new PaymentInfo();
      localJSONObject = new JSONObject();
      int i = paramIntent.getIntExtra("IdPaymentType", 1);
      localJSONObject.put("IdPaymentType", i);
      setIdPaymentType(Integer.valueOf(i));
      if (i == 3)
      {
        localJSONObject.put("IdPickSite", paramIntent.getIntExtra("IdPickSite", 0));
        setIdPickSite(Integer.valueOf(paramIntent.getIntExtra("IdPickSite", 0)));
      }
      for (;;)
      {
        LastOrderInfo.mPaymentInfo.nSelected = i;
        Constants.mModifiedPaymentInfo.setPayMentType(i, localJSONObject);
        if ((LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected) != null) && (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).toString() != "{}") && (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).toString() != "{ }") && (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).toString() != "") && (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).length() >= 1) && (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).toString() != " ")) {
          break;
        }
        LastOrderInfo.mPaymentInfo.setPayMentType(LastOrderInfo.mPaymentInfo.nSelected, localJSONObject);
        localPaymentInfo.setPayMentType(LastOrderInfo.mPaymentInfo.nSelected, localJSONObject);
        return;
        localJSONObject.put("IdShipmentType", paramIntent.getIntExtra("IdShipmentType", 0));
        localJSONObject.put("CODTime", paramIntent.getIntExtra("CODTime", 0));
        localJSONObject.put("IsCodInform", paramIntent.getBooleanExtra("IsCodInform", false));
        setIdShipmentType(Integer.valueOf(paramIntent.getIntExtra("IdShipmentType", 0)));
        setCodTime(Integer.valueOf(paramIntent.getIntExtra("CODTime", 0)));
        setIsCodInform(Boolean.valueOf(paramIntent.getBooleanExtra("IsCodInform", false)));
        if (i == 1)
        {
          localJSONObject.put("PaymentWay", paramIntent.getIntExtra("PaymentWay", 0));
          setPaymentWay(Integer.valueOf(paramIntent.getIntExtra("PaymentWay", 0)));
        }
      }
      if (LastOrderInfo.mPaymentInfo.nSelected != 3) {
        break label591;
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      return;
    }
    if ((localJSONObject.get("IdPaymentType") != null) && (localJSONObject.get("IdPaymentType") != "") && (localJSONObject.get("IdPaymentType") != " "))
    {
      LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPaymentType", localJSONObject.get("IdPaymentType"));
      localPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPaymentType", localJSONObject.get("IdPaymentType"));
    }
    if ((localJSONObject.get("IdPickSite") != null) && (localJSONObject.get("IdPickSite") != "") && (localJSONObject.get("IdPickSite") != " "))
    {
      LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPickSite", localJSONObject.get("IdPickSite"));
      localPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPickSite", localJSONObject.get("IdPickSite"));
      return;
      label591:
      if ((localJSONObject.get("IdPaymentType") != null) && (localJSONObject.get("IdPaymentType") != "") && (localJSONObject.get("IdPaymentType") != " "))
      {
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPaymentType", localJSONObject.get("IdPaymentType"));
        localPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdPaymentType", localJSONObject.get("IdPaymentType"));
      }
      if ((localJSONObject.get("IdShipmentType") != null) && (localJSONObject.get("IdShipmentType") != "") && (localJSONObject.get("IdShipmentType") != " "))
      {
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdShipmentType", localJSONObject.get("IdShipmentType"));
        localPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IdShipmentType", localJSONObject.get("IdShipmentType"));
      }
      if ((localJSONObject.toString().contains("CODTime")) && (localJSONObject.get("CODTime") != null) && (localJSONObject.get("CODTime").toString() != "null") && (localJSONObject.get("CODTime").toString() != "") && (localJSONObject.get("CODTime").toString() != " "))
      {
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("CODTime", localJSONObject.get("CODTime"));
        localPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("CODTime", localJSONObject.get("CODTime"));
        if ((!localJSONObject.toString().contains("PaymentWay")) || (localJSONObject.get("PaymentWay").toString() == "null") || (localJSONObject.get("PaymentWay") == null) || (localJSONObject.get("PaymentWay").toString() == "") || (localJSONObject.get("PaymentWay").toString() == " ")) {
          break label1236;
        }
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("PaymentWay", localJSONObject.get("PaymentWay"));
        localPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("PaymentWay", localJSONObject.get("PaymentWay"));
        label1025:
        if ((!localJSONObject.toString().contains("IsCodInform")) || (localJSONObject.get("IsCodInform").toString() == "null") || (localJSONObject.get("IsCodInform") == null) || (localJSONObject.get("IsCodInform").toString() == "") || (localJSONObject.get("IsCodInform").toString() == " ")) {
          break label1275;
        }
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IsCodInform", localJSONObject.get("IsCodInform"));
        localPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).put("IsCodInform", localJSONObject.get("IsCodInform"));
      }
      for (;;)
      {
        BigHouseholdappliancesInfo localBigHouseholdappliancesInfo = (BigHouseholdappliancesInfo)paramIntent.getSerializableExtra("selectBigitem");
        if (localBigHouseholdappliancesInfo == null) {
          localBigHouseholdappliancesInfo = new BigHouseholdappliancesInfo();
        }
        setBigItemCodDateValue(localBigHouseholdappliancesInfo.getValue());
        setBigItemCodDateName(localBigHouseholdappliancesInfo.getName());
        return;
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("CODTime");
        localPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("CODTime");
        break;
        label1236:
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("PaymentWay");
        localPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("PaymentWay");
        break label1025;
        label1275:
        LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("IsCodInform");
        localPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.nSelected).remove("IsCodInform");
      }
    }
  }
  
  public void parseOldModelForUserInfo(UserInfo paramUserInfo)
  {
    if (paramUserInfo == null) {
      return;
    }
    if (!TextUtils.isEmpty(paramUserInfo.getUserName())) {
      setName(paramUserInfo.getUserName());
    }
    if (!TextUtils.isEmpty(paramUserInfo.getUserMobile())) {
      setMobile(paramUserInfo.getUserMobile());
    }
    if (!TextUtils.isEmpty(paramUserInfo.getUserZip())) {
      setZip(paramUserInfo.getUserZip());
    }
    JSONObjectProxy localJSONObjectProxy = new JSONObjectProxy(paramUserInfo.getUserAddr());
    setIdProvince(localJSONObjectProxy.getIntOrNull("IdProvince"));
    setIdCity(localJSONObjectProxy.getIntOrNull("IdCity"));
    setIdArea(localJSONObjectProxy.getIntOrNull("IdArea"));
    if (localJSONObjectProxy.getIntOrNull("IdTown") != null) {
      setIdTown(localJSONObjectProxy.getIntOrNull("IdTown"));
    }
    for (;;)
    {
      setWhere(localJSONObjectProxy.getStringOrNull("Where"));
      setEmail(localJSONObjectProxy.getStringOrNull("Email"));
      setAddressDetail(localJSONObjectProxy.getStringOrNull("addressDetail"));
      return;
      setIdTown(null);
      setTownName(null);
    }
  }
  
  public void setAddressDetail(String paramString)
  {
    this.addressDetail = paramString;
  }
  
  public void setBigItemCodDateName(String paramString)
  {
    this.bigItemCodDateName = paramString;
  }
  
  public void setBigItemCodDateValue(String paramString)
  {
    this.bigItemCodDateValue = paramString;
  }
  
  public void setChangeAreaMessage(String paramString)
  {
    this.changeAreaMessage = paramString;
  }
  
  public void setChangeJingOrDongQuan(boolean paramBoolean)
  {
    this.isChangeJingOrDongQuan = paramBoolean;
  }
  
  public void setChangeLipin(boolean paramBoolean)
  {
    this.isChangeLipin = paramBoolean;
  }
  
  public void setCityName(String paramString)
  {
    this.cityName = paramString;
  }
  
  public void setCodTime(Integer paramInteger)
  {
    this.codTime = paramInteger;
  }
  
  public void setCodTimeName(String paramString)
  {
    this.codTimeName = paramString;
  }
  
  public void setCompanyName(String paramString)
  {
    this.companyName = paramString;
  }
  
  public void setCountryName(String paramString)
  {
    this.countryName = paramString;
  }
  
  public void setCouponDiscount(Integer paramInteger)
  {
    this.couponDiscount = paramInteger;
  }
  
  public void setCouponInfo(ArrayList<CouponInfo> paramArrayList)
  {
    this.couponInfo = paramArrayList;
  }
  
  public void setCurrBalance(UsedBalance paramUsedBalance)
  {
    this.currBalance = paramUsedBalance;
  }
  
  public void setCurrJdbean(UsedJdbean paramUsedJdbean)
  {
    this.currJdbean = paramUsedJdbean;
  }
  
  public void setDiscount(Integer paramInteger)
  {
    this.discount = paramInteger;
  }
  
  public void setDiscountLipinka(Integer paramInteger)
  {
    this.discountLipinka = paramInteger;
  }
  
  public void setEmail(String paramString)
  {
    this.email = paramString;
  }
  
  public void setGiftInfo(ArrayList<GiftCartInfo> paramArrayList)
  {
    this.giftInfo = paramArrayList;
  }
  
  public void setHasTang9(Boolean paramBoolean)
  {
    this.hasTang9 = paramBoolean;
  }
  
  public void setIdArea(Integer paramInteger)
  {
    this.idArea = paramInteger;
  }
  
  public void setIdCity(Integer paramInteger)
  {
    this.idCity = paramInteger;
  }
  
  public void setIdCompanyBranch(Integer paramInteger)
  {
    this.idCompanyBranch = paramInteger;
  }
  
  public void setIdInvoiceContentTypeBook(Integer paramInteger)
  {
    this.idInvoiceContentTypeBook = paramInteger;
  }
  
  public void setIdInvoiceContentsType(Integer paramInteger)
  {
    this.idInvoiceContentsType = paramInteger;
  }
  
  public void setIdInvoiceHeaderType(Integer paramInteger)
  {
    this.idInvoiceHeaderType = paramInteger;
  }
  
  public void setIdInvoicePutType(Integer paramInteger)
  {
    this.idInvoicePutType = paramInteger;
  }
  
  public void setIdInvoiceType(Integer paramInteger)
  {
    this.idInvoiceType = paramInteger;
  }
  
  public void setIdPaymentType(Integer paramInteger)
  {
    this.idPaymentType = paramInteger;
  }
  
  public void setIdPickSite(Integer paramInteger)
  {
    this.idPickSite = paramInteger;
  }
  
  public void setIdProvince(Integer paramInteger)
  {
    this.idProvince = paramInteger;
  }
  
  public void setIdShipmentType(Integer paramInteger)
  {
    this.idShipmentType = paramInteger;
  }
  
  public void setIdTown(Integer paramInteger)
  {
    this.idTown = paramInteger;
  }
  
  public void setInvoiceContentTypeBookName(String paramString)
  {
    this.invoiceContentTypeBookName = paramString;
  }
  
  public void setInvoiceContentsTypeName(String paramString)
  {
    this.invoiceContentsTypeName = paramString;
  }
  
  public void setInvoiceTitle(String paramString)
  {
    this.invoiceTitle = paramString;
  }
  
  public void setInvoiceTypeName(String paramString)
  {
    this.invoiceTypeName = paramString;
  }
  
  public void setIsCodInform(Boolean paramBoolean)
  {
    this.isCodInform = paramBoolean;
  }
  
  public void setIsIdTown(Boolean paramBoolean)
  {
    this.isIdTown = paramBoolean;
  }
  
  public void setIsOpenPaymentPassword(Boolean paramBoolean)
  {
    this.isOpenPaymentPassword = paramBoolean;
  }
  
  public void setIsPutBookInvoice(Boolean paramBoolean)
  {
    this.isPutBookInvoice = paramBoolean;
  }
  
  public void setIsUseBalance(Boolean paramBoolean)
  {
    this.isUseBalance = paramBoolean;
  }
  
  public void setIsUseJdBean(Boolean paramBoolean)
  {
    this.isUseJdBean = paramBoolean;
  }
  
  public void setIsUsedVirtualPay(Boolean paramBoolean)
  {
    this.isUsedVirtualPay = paramBoolean;
  }
  
  public void setMiaoSha(Boolean paramBoolean)
  {
    this.miaoSha = paramBoolean;
  }
  
  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNeedRemark(Boolean paramBoolean)
  {
    this.needRemark = paramBoolean;
  }
  
  public void setOpenPasswordTip(String paramString)
  {
    this.openPasswordTip = paramString;
  }
  
  public void setOrderBulk(Integer paramInteger)
  {
    this.orderBulk = paramInteger;
  }
  
  public void setOtherMessage(String paramString)
  {
    this.otherMessage = paramString;
  }
  
  public void setParam(String paramString)
  {
    this.param = paramString;
  }
  
  public void setPayOnlineMessage(String paramString)
  {
    this.payOnlineMessage = paramString;
  }
  
  public void setPayPasswordKey(String paramString)
  {
    this.payPasswordKey = paramString;
  }
  
  public void setPayPasswordValue(String paramString)
  {
    this.payPasswordValue = paramString;
  }
  
  public void setPayWayId(Integer paramInteger)
  {
    this.payWayId = paramInteger;
  }
  
  public void setPaymentType(String paramString)
  {
    this.paymentType = paramString;
  }
  
  public void setPaymentWay(Integer paramInteger)
  {
    this.paymentWay = paramInteger;
  }
  
  public void setPaymentWayName(String paramString)
  {
    this.paymentWayName = paramString;
  }
  
  public void setPhone(String paramString)
  {
    this.phone = paramString;
  }
  
  public void setPickSiteAddress(String paramString)
  {
    this.pickSiteAddress = paramString;
  }
  
  public void setPickSiteName(String paramString)
  {
    this.pickSiteName = paramString;
  }
  
  public void setPin(String paramString)
  {
    this.pin = paramString;
  }
  
  public void setPostCustomerId(String paramString)
  {
    this.postCustomerId = paramString;
  }
  
  public void setPostPayee(String paramString)
  {
    this.postPayee = paramString;
  }
  
  public void setPrice(Integer paramInteger)
  {
    this.price = paramInteger;
  }
  
  public void setPriceItemList(ArrayList<NewCurrentOrderPriceItem> paramArrayList)
  {
    this.priceItemList = paramArrayList;
  }
  
  public void setPrimitivePrice(Integer paramInteger)
  {
    this.primitivePrice = paramInteger;
  }
  
  public void setPromiseDate(String paramString)
  {
    this.promiseDate = paramString;
  }
  
  public void setPromiseSendPay(String paramString)
  {
    this.promiseSendPay = paramString;
  }
  
  public void setPromiseTimeRange(String paramString)
  {
    this.promiseTimeRange = paramString;
  }
  
  public void setPromiseType(Integer paramInteger)
  {
    this.promiseType = paramInteger;
  }
  
  public void setPromotionPrice(Integer paramInteger)
  {
    this.promotionPrice = paramInteger;
  }
  
  public void setProvinceName(String paramString)
  {
    this.provinceName = paramString;
  }
  
  public void setRePrice(Integer paramInteger)
  {
    this.rePrice = paramInteger;
  }
  
  public void setRemark(String paramString)
  {
    this.remark = paramString;
  }
  
  public void setShipmentTypeName(String paramString)
  {
    this.shipmentTypeName = paramString;
  }
  
  public void setShow311Text(String paramString)
  {
    this.show311Text = paramString;
  }
  
  public void setShow411Text(String paramString)
  {
    this.show411Text = paramString;
  }
  
  public void setShowSecurityFunctionId(String paramString)
  {
    this.showSecurityFunctionId = paramString;
  }
  
  public void setShowSecurityMessage(String paramString)
  {
    this.showSecurityMessage = paramString;
  }
  
  public void setShowSecuritySubmitKey(String paramString)
  {
    this.showSecuritySubmitKey = paramString;
  }
  
  public void setShowSecurityTitle(String paramString)
  {
    this.showSecurityTitle = paramString;
  }
  
  public void setShowSecurityUrl(String paramString)
  {
    this.showSecurityUrl = paramString;
  }
  
  public void setSubmitOrderInfo(SubmitOrderInfo paramSubmitOrderInfo)
  {
    this.submitOrderInfo = paramSubmitOrderInfo;
  }
  
  public void setTotalFee(Integer paramInteger)
  {
    this.totalFee = paramInteger;
  }
  
  public void setTotalPrice(String paramString)
  {
    this.totalPrice = paramString;
  }
  
  public void setTownName(String paramString)
  {
    this.townName = paramString;
  }
  
  public void setUserLevel(Integer paramInteger)
  {
    this.userLevel = paramInteger;
  }
  
  public void setUsid(String paramString)
  {
    this.usid = paramString;
  }
  
  public void setVirtualPayAvailable(VirtualPayAvailable paramVirtualPayAvailable)
  {
    this.virtualPayAvailable = paramVirtualPayAvailable;
  }
  
  public void setWhere(String paramString)
  {
    this.where = paramString;
  }
  
  public void setZip(String paramString)
  {
    this.zip = paramString;
  }
  
  public PaymentInfo toOldModelForPaymentInfo()
  {
    localPaymentInfo = new PaymentInfo();
    try
    {
      JSONObject localJSONObject = new JSONObject();
      int i = getIdPaymentType().intValue();
      localJSONObject.put("IdPaymentType", i);
      if (i == 3) {
        localJSONObject.put("IdPickSite", getIdPickSite());
      }
      for (;;)
      {
        localPaymentInfo.type = i;
        localPaymentInfo.nSelected = i;
        localPaymentInfo.setPayMentType(i, localJSONObject);
        return localPaymentInfo;
        localJSONObject.put("IdShipmentType", getIdShipmentType());
        localJSONObject.put("CODTime", getCodTime());
        Boolean localBoolean = getIsCodInform();
        boolean bool1 = false;
        if (localBoolean != null)
        {
          boolean bool2 = getIsCodInform().booleanValue();
          bool1 = false;
          if (bool2) {
            bool1 = true;
          }
        }
        localJSONObject.put("IsCodInform", bool1);
        Constants.bPhone = bool1;
        if (i == 1) {
          localJSONObject.put("PaymentWay", getPaymentWay());
        }
      }
      return localPaymentInfo;
    }
    catch (JSONException localJSONException) {}
  }
  
  public UserInfo toOldModelForUserInfo()
  {
    localUserInfo = new UserInfo();
    localUserInfo.setUserName(getName());
    localUserInfo.setUserPhone(getPhone());
    localUserInfo.setUserMobile(getMobile());
    localUserInfo.setUserZip(getZip());
    try
    {
      localUserInfo.getUserAddr().put("IdProvince", getIdProvince());
      localUserInfo.getUserAddr().put("IdCity", getIdCity());
      if (getIdTown() != null) {
        localUserInfo.getUserAddr().put("IdTown", getIdTown());
      }
      for (;;)
      {
        localUserInfo.getUserAddr().put("IdArea", getIdArea());
        localUserInfo.getUserAddr().put("Where", getWhere());
        localUserInfo.getUserAddr().put("Email", getEmail());
        localUserInfo.getUserAddr().put("UserLevel", getUserLevel());
        localUserInfo.getUserAddr().put("addressDetail", getAddressDetail());
        return localUserInfo;
        localUserInfo.getUserAddr().remove("IdTown");
      }
      return localUserInfo;
    }
    catch (JSONException localJSONException) {}
  }
  
  public JSONObject toOrderStr()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("pin", getPin());
      if (!TextUtils.isEmpty(getName())) {
        localJSONObject.put("Name", getName());
      }
      if (!TextUtils.isEmpty(getMobile())) {
        localJSONObject.put("Mobile", getMobile());
      }
      if (!TextUtils.isEmpty(getPhone())) {
        localJSONObject.put("Phone", getPhone());
      }
      localJSONObject.put("Zip", getZip());
      if (getIdProvince() != null) {
        localJSONObject.put("IdProvince", getIdProvince());
      }
      if (getIdCity() != null) {
        localJSONObject.put("IdCity", getIdCity());
      }
      if (getIdArea() != null) {
        localJSONObject.put("IdArea", getIdArea());
      }
      if (getIdTown() != null) {
        localJSONObject.put("IdTown", getIdTown());
      }
      if (!TextUtils.isEmpty(getWhere())) {
        localJSONObject.put("Where", getWhere());
      }
      if (!TextUtils.isEmpty(getAddressDetail())) {
        localJSONObject.put("addressDetail", getAddressDetail());
      }
      if (!TextUtils.isEmpty(getEmail())) {
        localJSONObject.put("Email", getEmail());
      }
      if (getUserLevel() != null) {
        localJSONObject.put("UserLevel", getUserLevel());
      }
      if (!TextUtils.isEmpty(getCompanyName())) {
        localJSONObject.put("CompanyName", getCompanyName());
      }
      if (!TextUtils.isEmpty(getInvoiceTitle())) {
        localJSONObject.put("InvoiceTitle", getInvoiceTitle());
      }
      if (getIdInvoiceType() != null) {
        localJSONObject.put("IdInvoiceType", getIdInvoiceType());
      }
      if (getIdInvoiceHeaderType() != null) {
        localJSONObject.put("IdInvoiceHeaderType", getIdInvoiceHeaderType());
      }
      if (getIdInvoiceContentTypeBook() != null) {
        localJSONObject.put("IdInvoiceContentTypeBook", getIdInvoiceContentTypeBook());
      }
      if (getIdCompanyBranch() != null) {
        localJSONObject.put("IdCompanyBranch", getIdCompanyBranch());
      }
      if (getIdInvoiceContentsType() != null) {
        localJSONObject.put("IdInvoiceContentsType", getIdInvoiceContentsType());
      }
      if (getIdPaymentType() != null) {
        localJSONObject.put("IdPaymentType", getIdPaymentType());
      }
      if (getPaymentWay() != null) {
        localJSONObject.put("PaymentWay", getPaymentWay());
      }
      if (getIdShipmentType() != null) {
        localJSONObject.put("IdShipmentType", getIdShipmentType());
      }
      if (getCodTime() != null) {
        localJSONObject.put("CODTime", getCodTime());
      }
      if (!TextUtils.isEmpty(getCodTimeName())) {
        localJSONObject.put("CodDate", getCodTimeName());
      }
      if (getIdPickSite() != null) {
        localJSONObject.put("IdPickSite", getIdPickSite());
      }
      localJSONObject.put("IsCodInform", getIsCodInform());
      if (getPromotionPrice() != null) {
        localJSONObject.put("PromotionPrice", getPromotionPrice());
      }
      if (getPrice() != null) {
        localJSONObject.put("Price", getPrice());
      }
      if (!TextUtils.isEmpty(getRemark())) {
        localJSONObject.put("Remark", getRemark());
      }
      if (!TextUtils.isEmpty(getParam())) {
        localJSONObject.put("param", new JSONObject(getParam()));
      }
      localJSONObject.put("isUseJdBean", getIsUseJdBean());
      localJSONObject.put("SupportJdBean", true);
      if (getCurrJdbean() != null)
      {
        localJSONObject.put("canUseJdBeanCount", getCurrJdbean().getCanUseJdBeanCount());
        localJSONObject.put("totalJdBeanCount", getCurrJdbean().getTotalJdBeanCount());
      }
      ArrayList localArrayList1 = CouponInfo.lookupSelectedOrModifyForList(this.couponInfo);
      JSONArray localJSONArray1;
      Iterator localIterator1;
      JSONArray localJSONArray2;
      Iterator localIterator2;
      if ((localArrayList1 != null) && (localArrayList1.size() > 0))
      {
        localJSONArray1 = new JSONArray();
        localIterator1 = localArrayList1.iterator();
        if (!localIterator1.hasNext()) {
          localJSONObject.put("TheCoupons", localJSONArray1);
        }
      }
      else
      {
        ArrayList localArrayList2 = GiftCartInfo.lookupSelectedOrModifyForList(this.giftInfo);
        if ((localArrayList2 != null) && (localArrayList2.size() > 0))
        {
          localJSONArray2 = new JSONArray();
          localIterator2 = localArrayList2.iterator();
        }
      }
      for (;;)
      {
        if (!localIterator2.hasNext())
        {
          localJSONObject.put("TheLipinkas", localJSONArray2);
          localJSONObject.put("IsUseBalance", getIsUseBalance());
          localJSONObject.put("BigItemCodDate", getBigItemCodDateValue());
          localJSONObject.put("promiseType", getPromiseType());
          if (!TextUtils.isEmpty(getPromiseSendPay())) {
            localJSONObject.put("promiseSendPay", new JSONObject(getPromiseSendPay()));
          }
          localJSONObject.put("promiseDate", getPromiseDate());
          localJSONObject.put("promiseTimeRange", getPromiseTimeRange());
          localJSONObject.put("isOpenPaymentPassword", getIsOpenPaymentPassword());
          localJSONObject.put("needRemark", getNeedRemark());
          if ((TextUtils.isEmpty(getPayPasswordKey())) || (TextUtils.isEmpty(getPayPasswordValue()))) {
            break label982;
          }
          localJSONObject.put(getPayPasswordKey(), getPayPasswordValue());
          return localJSONObject;
          localJSONArray1.put(((CouponInfo)localIterator1.next()).toOrderJson());
          break;
        }
        localJSONArray2.put(((GiftCartInfo)localIterator2.next()).toOrderJson());
      }
      label982:
      return localJSONObject;
    }
    catch (Exception localException) {}
    return localJSONObject;
  }
  
  public void update(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    if (paramJSONObjectProxy == null) {
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    }
    JSONObjectProxy localJSONObjectProxy1 = paramJSONObjectProxy.getJSONObjectOrNull("lastOderInfo");
    if (localJSONObjectProxy1 != null)
    {
      setCouponDiscount(localJSONObjectProxy1.getIntOrNull("CouponDiscount"));
      setTotalFee(localJSONObjectProxy1.getIntOrNull("TotalFee"));
      setPromiseType(localJSONObjectProxy1.getIntOrNull("PromiseType"));
      setIsCodInform(localJSONObjectProxy1.getBooleanOrNull("IsCodInform"));
      setCountryName(localJSONObjectProxy1.getStringOrNull("CountryName"));
      setPin(localJSONObjectProxy1.getStringOrNull("Pin"));
      setPhone(localJSONObjectProxy1.getStringOrNull("Phone"));
      setIsIdTown(localJSONObjectProxy1.getBooleanOrNull("IsIdTown"));
      setUserLevel(localJSONObjectProxy1.getIntOrNull("UserLevel"));
      setCityName(localJSONObjectProxy1.getStringOrNull("CityName"));
      setInvoiceTitle(localJSONObjectProxy1.getStringOrNull("InvoiceTitle"));
      setCompanyName(localJSONObjectProxy1.getStringOrNull("CompanyName"));
      setIdCompanyBranch(localJSONObjectProxy1.getIntOrNull("IdCompanyBranch"));
      setCodTime(localJSONObjectProxy1.getIntOrNull("CODTime"));
      setCodTimeName(localJSONObjectProxy1.getStringOrNull("CODTimeName"));
      setBigItemCodDateName(localJSONObjectProxy1.getStringOrNull("BigItemCodDateName"));
      setBigItemCodDateValue(localJSONObjectProxy1.getStringOrNull("BigItemCodDate"));
      setIdTown(localJSONObjectProxy1.getIntOrNull("IdTown"));
      setIsPutBookInvoice(localJSONObjectProxy1.getBooleanOrNull("IsPutBookInvoice"));
      setIdPaymentType(localJSONObjectProxy1.getIntOrNull("IdPaymentType"));
      setPaymentType(localJSONObjectProxy1.getStringOrNull("PaymentType"));
      setWhere(localJSONObjectProxy1.getStringOrNull("Where"));
      setAddressDetail(localJSONObjectProxy1.getStringOrNull("addressDetail"));
      setZip(localJSONObjectProxy1.getStringOrNull("Zip"));
      setOrderBulk(localJSONObjectProxy1.getIntOrNull("OrderBulk"));
      setPrimitivePrice(localJSONObjectProxy1.getIntOrNull("PrimitivePrice"));
      setHasTang9(localJSONObjectProxy1.getBooleanOrNull("HasTang9"));
      setAddressDetail(localJSONObjectProxy1.getStringOrNull("AddressDetail"));
      setRePrice(localJSONObjectProxy1.getIntOrNull("RePrice"));
      setMobile(localJSONObjectProxy1.getStringOrNull("Mobile"));
      setIdProvince(localJSONObjectProxy1.getIntOrNull("IdProvince"));
      setDiscount(localJSONObjectProxy1.getIntOrNull("Discount"));
      setProvinceName(localJSONObjectProxy1.getStringOrNull("ProvinceName"));
      setIdCity(localJSONObjectProxy1.getIntOrNull("IdCity"));
      setPromiseDate(localJSONObjectProxy1.getStringOrNull("PromiseDate"));
      setDiscountLipinka(localJSONObjectProxy1.getIntOrNull("DiscountLipinka"));
      setPayWayId(localJSONObjectProxy1.getIntOrNull("PayWayId"));
      setIdShipmentType(localJSONObjectProxy1.getIntOrNull("IdShipmentType"));
      setShipmentTypeName(localJSONObjectProxy1.getStringOrNull("ShipmentType"));
      setIsUseBalance(localJSONObjectProxy1.getBooleanOrNull("IsUseBalance"));
      setIsUseJdBean(localJSONObjectProxy1.getBooleanOrNull("IsUseJdBean"));
      setPromotionPrice(localJSONObjectProxy1.getIntOrNull("PromotionPrice"));
      setName(localJSONObjectProxy1.getStringOrNull("Name"));
      setIdInvoiceContentsType(localJSONObjectProxy1.getIntOrNull("IdInvoiceContentsType"));
      setPromiseTimeRange(localJSONObjectProxy1.getStringOrNull("PromiseTimeRange"));
      setTownName(localJSONObjectProxy1.getStringOrNull("TownName"));
      setNeedRemark(localJSONObjectProxy1.getBooleanOrNull("needRemark"));
      setIdInvoiceContentTypeBook(localJSONObjectProxy1.getIntOrNull("IdInvoiceContentTypeBook"));
      setIdInvoicePutType(localJSONObjectProxy1.getIntOrNull("IdInvoicePutType"));
      setPrice(localJSONObjectProxy1.getIntOrNull("Price"));
      setIdArea(localJSONObjectProxy1.getIntOrNull("IdArea"));
      setIdInvoiceType(localJSONObjectProxy1.getIntOrNull("IdInvoiceType"));
      setInvoiceTypeName(localJSONObjectProxy1.getStringOrNull("InvoiceTypeName"));
      setPaymentWay(localJSONObjectProxy1.getIntOrNull("PaymentWay"));
      setPaymentWayName(localJSONObjectProxy1.getStringOrNull("PaymentWayName"));
      setIdInvoiceHeaderType(localJSONObjectProxy1.getIntOrNull("IdInvoiceHeaderType"));
      setIdPickSite(localJSONObjectProxy1.getIntOrNull("IdPickSite"));
      setPickSiteName(localJSONObjectProxy1.getStringOrNull("PickSiteName"));
      setPickSiteAddress(localJSONObjectProxy1.getStringOrNull("PickSiteAddress"));
      setPostCustomerId(localJSONObjectProxy1.getStringOrNull("PostCustomerId"));
      setPostPayee(localJSONObjectProxy1.getStringOrNull("PostPayee"));
      setInvoiceContentTypeBookName(localJSONObjectProxy1.getStringOrNull("InvoiceContentsTypeBook"));
      setInvoiceContentsTypeName(localJSONObjectProxy1.getStringOrNull("InvoiceContentsType"));
      setIsUsedVirtualPay(localJSONObjectProxy1.getBooleanOrNull("isUsedVirtualPay"));
      setShow311Text(localJSONObjectProxy1.getStringOrNull("show311Text"));
      setShow411Text(localJSONObjectProxy1.getStringOrNull("show411Text"));
      JSONObjectProxy localJSONObjectProxy2 = localJSONObjectProxy1.getJSONObjectOrNull("param");
      if (localJSONObjectProxy2 != null) {
        setParam(localJSONObjectProxy2.toString());
      }
      if (localJSONObjectProxy1.getJSONObjectOrNull("usedJdBeanMap") != null) {
        this.currJdbean = new UsedJdbean(localJSONObjectProxy1, 0);
      }
      UsedBalance localUsedBalance = new UsedBalance();
      localUsedBalance.setBalanceValue(localJSONObjectProxy1.getDoubleOrNull("MoneyBalance"));
      localUsedBalance.setBalanceName(localJSONObjectProxy1.getStringOrNull("BalanceMessage"));
      setCurrBalance(localUsedBalance);
      setIsOpenPaymentPassword(localJSONObjectProxy1.getBooleanOrNull("isOpenPaymentPassword"));
      JSONObjectProxy localJSONObjectProxy3 = paramJSONObjectProxy.getJSONObjectOrNull("securityPasswordBlock");
      if (localJSONObjectProxy3 != null)
      {
        setOpenPasswordTip(localJSONObjectProxy3.getStringOrNull("openPasswordTip"));
        setShowSecurityTitle(localJSONObjectProxy3.getStringOrNull("title"));
        setShowSecuritySubmitKey(localJSONObjectProxy3.getStringOrNull("submitKey"));
        setShowSecurityFunctionId(localJSONObjectProxy3.getStringOrNull("functionId"));
        setShowSecurityUrl(localJSONObjectProxy3.getStringOrNull("url"));
        setShowSecurityMessage(localJSONObjectProxy3.getStringOrNull("message"));
      }
    }
    setChangeAreaMessage(paramJSONObjectProxy.getStringOrNull("changeAreaMessage"));
    setOtherMessage(paramJSONObjectProxy.getStringOrNull("message"));
    setPayOnlineMessage(paramJSONObjectProxy.getStringOrNull("onlineMessage"));
    setPriceItemList(NewCurrentOrderPriceItem.toList(paramJSONObjectProxy));
    Iterator localIterator;
    if ((this.priceItemList != null) && (this.priceItemList.size() > 0))
    {
      localIterator = this.priceItemList.iterator();
      if (localIterator.hasNext()) {
        break label1034;
      }
    }
    for (;;)
    {
      setMiaoSha(paramJSONObjectProxy.getBooleanOrNull("miaoSha"));
      return;
      label1034:
      NewCurrentOrderPriceItem localNewCurrentOrderPriceItem = (NewCurrentOrderPriceItem)localIterator.next();
      if (!TextUtils.equals(localNewCurrentOrderPriceItem.getLabel(), "商品金额")) {
        break;
      }
      this.totalPrice = localNewCurrentOrderPriceItem.getValue();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.NewCurrentOrder
 * JD-Core Version:    0.7.0.1
 */