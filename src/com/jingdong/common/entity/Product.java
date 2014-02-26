package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.utils.CommonUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;

public class Product
  implements Serializable
{
  public static final int CART_LIST = 9;
  public static final int CMS_ACTIVITY = 22;
  public static final int COLLECT_LIST = 7;
  private static final String CONST_NO_PRICE = "暂无报价";
  public static final int CRAZY = 0;
  public static final int DELIVER = 19;
  public static final int EASY_LIST = 12;
  public static final int HOT_SALES = 21;
  public static final int LIMIT_TIMEBUY = 14;
  public static final int MATCH_WARE_INFO_LIST = 16;
  public static final int MIAO_SHA_LIST = 17;
  public static final int M_PROMOTION = 20;
  public static final int ORDER_LIST = 6;
  public static final int PACKS = 24;
  public static final int PACKS_LIST = 13;
  public static final int PACKS_MAIN = 25;
  public static final int PHOTO_SHOPPING_WARE_INFO_LIST = 26;
  public static final int PRODUCT_DETAIL = 3;
  public static final int PRODUCT_DETAIL_CRUX = 28;
  public static final int PROMOTION = 10;
  public static final int PROMOTION_INFO = 18;
  public static final int RECOMAND_PRODECT = 4;
  public static final int SEARCH_CATEGORY = 1;
  public static final int SHAKE = 27;
  public static final int SHOPPING = 23;
  public static final int SKU_COLOR_SIZE = 15;
  private static final String TAG = "Product";
  public static final int USER_INFO = 5;
  public static final int WARE_ID_BY_BAR_CODE_LIST = 11;
  private static boolean isValid = true;
  private static final long serialVersionUID = -6454309392186382154L;
  private String adWord;
  private String addFavoriteMsg;
  private Long averageScore;
  private Boolean canBuy;
  private Boolean canConsultFlag;
  private boolean canEasyBuy = false;
  private Boolean canFreeRead = Boolean.valueOf(false);
  private String cityId;
  private Integer cityIdMode1;
  private HashMap<Long, CityMode1> cityMode1Map;
  private ArrayList<AddressBaseMode> cityModeList;
  private String cityName;
  private ArrayList<CommentCount> commentCountList;
  private String consultationCount;
  private String countyId;
  private ArrayList<AddressBaseMode> countyModeList;
  private String countyName;
  private ArrayList<Coupon> couponList;
  private DefaultAddressMode defaultAddressMode;
  private ArrayList<DefaultAddressMode> defaultAddressModeList;
  private String deliver;
  private String deliveryCommentFlag;
  private String deliveryFlag;
  private String discount;
  private Long endTime;
  private String fid;
  private String freeReadUrl;
  private ArrayList<Product> giftList;
  private String good;
  private String hasComment;
  private String hasDiscuss;
  private boolean hasPacks = false;
  private Long id;
  private List<Image> imageList = new LinkedList();
  private String imgPrice;
  private Boolean isBook;
  private boolean isCheckNext = false;
  private boolean isFavorited;
  private Integer isFlashSale;
  private Boolean isPhoneVipPrice;
  private Boolean isPromotion;
  private Boolean isPromotionJiang;
  private Boolean isPromotionZeng;
  private String jdPrice;
  private String mPaymentType;
  private ArrayList<Product> mProductList;
  private String marketPrice;
  private String marketPriceDescription;
  private String message;
  private Boolean miaoSha;
  private String miaoShaPrice;
  private String msgTypeName;
  private int nIndex = 0;
  private int nItemCount;
  private String name;
  private Integer num;
  private String orderCommentCount;
  private Boolean postByjd = Boolean.valueOf(false);
  private Boolean priceReport = Boolean.valueOf(false);
  private ProductDetailBasicInfo productDetailBasicInfo;
  private ProductDetailCruxBasicInfo productDetailCruxBasicInfo;
  private DefaultAddressMode productDetailDefaultAddress;
  private ProductDetailPrice productDetailJprice;
  private ProductDetailPrice productDetailMprice;
  private ArrayList<ProductDetailSkuColor> productDetailSkuColor;
  private ArrayList<ProductDetailSkuSize> productDetailSkuSize;
  private String promotionInfo;
  private String promotionTitle;
  private String provinceID;
  private Integer provinceIdMode1;
  private ArrayList<Province> provinceList;
  private ArrayList<ProvinceMode1> provinceMode1List;
  private HashMap<Integer, Integer> provinceMode1Map;
  private ArrayList<AddressBaseMode> provinceModeList;
  private String provinceName;
  private Integer provinceStockCode;
  private String provinceStockContent;
  private Boolean provinceStockFlag;
  private Integer provinceStockMode = Integer.valueOf(0);
  private String rate;
  private List<String> sImgUrlList = new LinkedList();
  private String sItemPrice;
  private String sMsgBody;
  private String sMsgFlag;
  private String sMsgId;
  private String sMsgTime;
  private String sMsgType;
  private String sMsgUpdateTime;
  private String sOrderId;
  private String sOrderStatus;
  private String sPriceShow;
  private String sSkuID;
  private String sSkuName;
  private String sSubmitTime;
  private String sTotalPrice;
  private String sUerScore;
  private String sUserBalance;
  private String sUserClass;
  private String sUserName;
  private Long showId;
  private Boolean showMarketPrice = null;
  private ArrayList<SkuColor> skuColorList;
  private String skuId;
  private ArrayList<SkuSize> skuSizeList;
  private SourceEntity sourceEntity;
  private Long startTime;
  private String stockFunction;
  private Boolean subOrderFlag;
  private Integer totalCount;
  private String townId;
  private ArrayList<AddressBaseMode> townModeList;
  private String townName;
  private String userPriceContent;
  private String userPriceLabel;
  
  public Product() {}
  
  public Product(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    this(paramJSONObjectProxy, null, paramInt);
  }
  
  public Product(JSONObjectProxy paramJSONObjectProxy, int paramInt, Object[] paramArrayOfObject)
  {
    this(paramJSONObjectProxy, null, paramInt, paramArrayOfObject);
  }
  
  public Product(JSONObjectProxy paramJSONObjectProxy, JSONArray paramJSONArray, int paramInt)
  {
    this(paramJSONObjectProxy, paramJSONArray, paramInt, null);
  }
  
  private Product(JSONObjectProxy paramJSONObjectProxy, JSONArray paramJSONArray, int paramInt, Object[] paramArrayOfObject)
  {
    update(paramJSONObjectProxy, paramJSONArray, paramInt, paramArrayOfObject);
  }
  
  public static ArrayList<Product> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    return toList(paramJSONArrayPoxy, paramInt, null);
  }
  
  /* Error */
  public static ArrayList<Product> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt, Object[] paramArrayOfObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aconst_null
    //   7: astore_3
    //   8: new 277	java/util/ArrayList
    //   11: dup
    //   12: invokespecial 278	java/util/ArrayList:<init>	()V
    //   15: astore 4
    //   17: iconst_0
    //   18: istore 5
    //   20: iload 5
    //   22: aload_0
    //   23: invokevirtual 284	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   26: if_icmplt +6 -> 32
    //   29: aload 4
    //   31: areturn
    //   32: new 2	com/jingdong/common/entity/Product
    //   35: dup
    //   36: aload_0
    //   37: iload 5
    //   39: invokevirtual 288	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   42: iload_1
    //   43: aload_2
    //   44: invokespecial 290	com/jingdong/common/entity/Product:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V
    //   47: astore 7
    //   49: getstatic 218	com/jingdong/common/entity/Product:isValid	Z
    //   52: ifeq +11 -> 63
    //   55: aload 4
    //   57: aload 7
    //   59: invokevirtual 294	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   62: pop
    //   63: iinc 5 1
    //   66: goto -46 -> 20
    //   69: astore 6
    //   71: aload 6
    //   73: invokevirtual 297	org/json/JSONException:printStackTrace	()V
    //   76: aload_3
    //   77: areturn
    //   78: astore 6
    //   80: aload 4
    //   82: astore_3
    //   83: goto -12 -> 71
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	paramJSONArrayPoxy	JSONArrayPoxy
    //   0	86	1	paramInt	int
    //   0	86	2	paramArrayOfObject	Object[]
    //   7	76	3	localObject	Object
    //   15	66	4	localArrayList	ArrayList
    //   18	46	5	i	int
    //   69	3	6	localJSONException1	JSONException
    //   78	1	6	localJSONException2	JSONException
    //   47	11	7	localProduct	Product
    // Exception table:
    //   from	to	target	type
    //   8	17	69	org/json/JSONException
    //   20	29	78	org/json/JSONException
    //   32	63	78	org/json/JSONException
  }
  
  public void addProductListScore(JSONObjectProxy paramJSONObjectProxy)
  {
    setAverageScore(paramJSONObjectProxy.getLongOrNull("averageScore"));
    setTotalCount(paramJSONObjectProxy.getIntOrNull("totalCount"));
    try
    {
      JSONObjectProxy localJSONObjectProxy = paramJSONObjectProxy.getJSONObjectOrNull("promotionFlag");
      if (localJSONObjectProxy.getStringOrNull("5") != null) {
        setIsPromotionZeng(Boolean.valueOf(true));
      }
      while (localJSONObjectProxy.getStringOrNull("1") != null)
      {
        setIsPromotionJiang(Boolean.valueOf(true));
        return;
        setIsPromotionZeng(Boolean.valueOf(false));
      }
      setIsPromotionJiang(Boolean.valueOf(false));
    }
    catch (Exception localException)
    {
      setIsPromotionZeng(Boolean.valueOf(false));
      setIsPromotionJiang(Boolean.valueOf(false));
      return;
    }
  }
  
  public void appendImgUrl(String paramString, int paramInt)
  {
    if (paramInt < 0)
    {
      this.sImgUrlList.add(paramString.toString());
      return;
    }
    this.sImgUrlList.add(paramInt, paramString.toString());
  }
  
  public int geItemCount()
  {
    if (this.nItemCount <= 0) {
      return Integer.valueOf("1").intValue();
    }
    return this.nItemCount;
  }
  
  public String getAdWord()
  {
    if (this.adWord == null) {
      return "";
    }
    return this.adWord;
  }
  
  public String getAddFavoriteMsg()
  {
    return this.addFavoriteMsg;
  }
  
  public Long getAverageScore()
  {
    return this.averageScore;
  }
  
  public Boolean getCanBuy()
  {
    if (this.canBuy != null) {}
    for (boolean bool = this.canBuy.booleanValue();; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public Boolean getCanConsultFlag()
  {
    if (this.canConsultFlag == null) {
      return Boolean.valueOf(false);
    }
    return this.canConsultFlag;
  }
  
  public Boolean getCanFreeRead()
  {
    if (this.canFreeRead == null) {
      return Boolean.valueOf(false);
    }
    return this.canFreeRead;
  }
  
  public boolean getCheckNext()
  {
    return this.isCheckNext;
  }
  
  public String getCityId()
  {
    return this.cityId;
  }
  
  public Integer getCityIdMode1()
  {
    return this.cityIdMode1;
  }
  
  public CityMode1 getCityMode1BySkuId(Long paramLong)
  {
    if (this.cityMode1Map != null) {
      return (CityMode1)this.cityMode1Map.get(paramLong);
    }
    return null;
  }
  
  public ArrayList<AddressBaseMode> getCityModeList()
  {
    return this.cityModeList;
  }
  
  public String getCityName()
  {
    return this.cityName;
  }
  
  public ArrayList<CommentCount> getCommentCountList()
  {
    return this.commentCountList;
  }
  
  public String getConsultationCount()
  {
    return this.consultationCount;
  }
  
  public String getCountyID()
  {
    return this.countyId;
  }
  
  public ArrayList<AddressBaseMode> getCountyModeList()
  {
    return this.countyModeList;
  }
  
  public String getCountyName()
  {
    return this.countyName;
  }
  
  public ArrayList<Coupon> getCouponList()
  {
    return this.couponList;
  }
  
  public DefaultAddressMode getDefaultAddressMode()
  {
    return this.defaultAddressMode;
  }
  
  public ArrayList<DefaultAddressMode> getDefaultAddressModeList()
  {
    return this.defaultAddressModeList;
  }
  
  public String getDeliver()
  {
    return this.deliver;
  }
  
  public String getDeliveryCommentFlag()
  {
    return this.deliveryCommentFlag;
  }
  
  public String getDeliveryFlag()
  {
    return this.deliveryFlag;
  }
  
  public Long getEndTime()
  {
    return this.endTime;
  }
  
  public String getFid()
  {
    return this.fid;
  }
  
  public String getFreeReadUrl()
  {
    return this.freeReadUrl;
  }
  
  public ArrayList<Product> getGiftList()
  {
    return this.giftList;
  }
  
  public String getGood()
  {
    return this.good;
  }
  
  public String getHasComment()
  {
    if (this.hasComment == null) {
      return "";
    }
    return this.hasComment;
  }
  
  public String getHasDiscuss()
  {
    if (this.hasDiscuss == null) {
      return "";
    }
    return this.hasDiscuss;
  }
  
  public Long getId()
  {
    return this.id;
  }
  
  public Image getImage()
  {
    if (this.imageList.size() > 0) {
      return (Image)this.imageList.get(0);
    }
    return null;
  }
  
  public List<Image> getImageList()
  {
    return this.imageList;
  }
  
  public String getImageUrl()
  {
    if (this.imageList.size() > 0) {
      return ((Image)this.imageList.get(0)).getSmall();
    }
    return null;
  }
  
  public String getImgPrice()
  {
    return this.imgPrice;
  }
  
  public Integer getIsFlashSale()
  {
    if (this.isFlashSale == null) {}
    for (int i = 0;; i = this.isFlashSale.intValue()) {
      return Integer.valueOf(i);
    }
  }
  
  public Boolean getIsPhoneVipPrice()
  {
    if (this.isPhoneVipPrice == null) {}
    for (boolean bool = false;; bool = this.isPhoneVipPrice.booleanValue()) {
      return Boolean.valueOf(bool);
    }
  }
  
  public Boolean getIsPromotionJiang()
  {
    if (this.isPromotionJiang == null) {}
    for (boolean bool = false;; bool = this.isPromotionJiang.booleanValue()) {
      return Boolean.valueOf(bool);
    }
  }
  
  public Boolean getIsPromotionZeng()
  {
    if (this.isPromotionZeng == null) {}
    for (boolean bool = false;; bool = this.isPromotionZeng.booleanValue()) {
      return Boolean.valueOf(bool);
    }
  }
  
  public boolean getIsValid()
  {
    return isValid;
  }
  
  public String getJdDixcount()
  {
    try
    {
      if (this.discount != null)
      {
        Double localDouble = Double.valueOf(this.discount);
        if (localDouble != null)
        {
          if (localDouble.doubleValue() < 0.0D) {
            return "暂无折扣";
          }
          String str = new DecimalFormat("0.00").format(localDouble);
          return str;
        }
      }
    }
    catch (Exception localException) {}
    return "暂无折扣";
  }
  
  public String getJdPrice()
  {
    try
    {
      if (this.jdPrice != null)
      {
        Double localDouble = Double.valueOf(this.jdPrice);
        if (localDouble != null)
        {
          if (localDouble.doubleValue() <= 0.0D) {
            return "暂无报价";
          }
          String str = new DecimalFormat("0.00").format(localDouble);
          return str;
        }
      }
    }
    catch (Exception localException) {}
    return "暂无报价";
  }
  
  public String getJdPriceRMB()
  {
    String str = getJdPrice();
    if (!TextUtils.equals(str, "暂无报价")) {
      str = Constants.REN_MIN_BI + str;
    }
    return str;
  }
  
  public String getMarketPrice()
  {
    String str = CommonUtil.getMarketPriceFlag();
    if ((str != null) && ("0".equals(str)))
    {
      i = 1;
      if (getShowMarketPrice() != null) {
        if (!getShowMarketPrice().booleanValue()) {
          break label50;
        }
      }
    }
    label50:
    for (int i = 0;; i = 1)
    {
      if (i == 0) {
        break label55;
      }
      return null;
      i = 0;
      break;
    }
    label55:
    return getMarketPriceValues();
  }
  
  public String getMarketPriceDescription()
  {
    if ((this.marketPriceDescription == null) || ("".equals(this.marketPriceDescription)))
    {
      if (isBook().booleanValue()) {
        return "定价";
      }
      return "市场价";
    }
    return this.marketPriceDescription;
  }
  
  public String getMarketPriceValues()
  {
    try
    {
      if (this.marketPrice != null)
      {
        Double localDouble = Double.valueOf(this.marketPrice);
        if (localDouble != null)
        {
          if (localDouble.doubleValue() <= 0.0D) {
            return "暂无报价";
          }
          String str = new DecimalFormat("0.00").format(localDouble);
          return str;
        }
      }
    }
    catch (Exception localException) {}
    return "暂无报价";
  }
  
  public String getMessage()
  {
    return this.message;
  }
  
  public Boolean getMiaoSha()
  {
    if (this.miaoSha != null) {}
    for (boolean bool = this.miaoSha.booleanValue();; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public String getMiaoShaPrice()
  {
    if (TextUtils.isEmpty(this.miaoShaPrice)) {
      return "暂无报价";
    }
    return this.miaoShaPrice;
  }
  
  public String getMsgBody()
  {
    if (this.sMsgBody.length() <= 0) {
      return String.valueOf(" ");
    }
    return this.sMsgBody;
  }
  
  public String getMsgFlag()
  {
    if (this.sMsgFlag.length() <= 0) {
      return String.valueOf(" ");
    }
    return this.sMsgFlag;
  }
  
  public String getMsgTime()
  {
    if (this.sMsgTime.length() <= 0) {
      return String.valueOf(" ");
    }
    return this.sMsgTime;
  }
  
  public String getMsgType()
  {
    if (this.sMsgType.length() <= 0) {
      return String.valueOf(" ");
    }
    return this.sMsgType;
  }
  
  public String getMsgTypeName()
  {
    return this.msgTypeName;
  }
  
  public String getName()
  {
    if (this.name != null) {
      return this.name;
    }
    return "暂无名称";
  }
  
  public Integer getNum()
  {
    if ((this.num == null) || (this.num.intValue() <= 0)) {
      return Integer.valueOf(0);
    }
    return this.num;
  }
  
  public String getOrderCommentCount()
  {
    return this.orderCommentCount;
  }
  
  public String getOrderId()
  {
    if ((this.sOrderId == null) || (this.sOrderId.length() <= 0)) {
      return String.valueOf(" ");
    }
    return this.sOrderId;
  }
  
  public String getOrderPrice()
  {
    if (this.sTotalPrice.length() <= 0) {
      return String.valueOf(" ");
    }
    return this.sTotalPrice;
  }
  
  public String getOrderStatus()
  {
    if (this.sOrderStatus.length() <= 0) {
      return String.valueOf(" ");
    }
    return this.sOrderStatus;
  }
  
  public String getOrderSubtime()
  {
    if (this.sSubmitTime.length() <= 0) {
      return String.valueOf(" ");
    }
    return this.sSubmitTime;
  }
  
  public Boolean getPostByJd()
  {
    if (this.postByjd == null) {}
    for (boolean bool = false;; bool = this.postByjd.booleanValue()) {
      return Boolean.valueOf(bool);
    }
  }
  
  public String getPriceForAfterDiscount()
  {
    try
    {
      double d = Double.valueOf(this.jdPrice).doubleValue() - Double.valueOf(this.discount).doubleValue();
      if (d <= 0.0D) {
        return "暂无报价";
      }
      String str = Constants.REN_MIN_BI + new DecimalFormat("0.00").format(d);
      return str;
    }
    catch (Exception localException) {}
    return "暂无报价";
  }
  
  public Boolean getPriceReport()
  {
    if (this.priceReport == null) {}
    for (boolean bool = false;; bool = this.priceReport.booleanValue()) {
      return Boolean.valueOf(bool);
    }
  }
  
  public ProductDetailBasicInfo getProductDetailBasicInfo()
  {
    if (this.productDetailBasicInfo == null) {
      return new ProductDetailBasicInfo();
    }
    return this.productDetailBasicInfo;
  }
  
  public ProductDetailCruxBasicInfo getProductDetailCruxBasicInfo()
  {
    if (this.productDetailCruxBasicInfo == null) {
      return new ProductDetailCruxBasicInfo();
    }
    return this.productDetailCruxBasicInfo;
  }
  
  public DefaultAddressMode getProductDetailDefaultAddress()
  {
    if (this.productDetailDefaultAddress == null) {
      return new DefaultAddressMode();
    }
    return this.productDetailDefaultAddress;
  }
  
  public ProductDetailPrice getProductDetailJprice()
  {
    if (this.productDetailJprice == null) {
      return new ProductDetailPrice();
    }
    return this.productDetailJprice;
  }
  
  public ProductDetailPrice getProductDetailMprice()
  {
    if (this.productDetailMprice == null) {
      return new ProductDetailPrice();
    }
    return this.productDetailMprice;
  }
  
  public ArrayList<ProductDetailSkuColor> getProductDetailSkuColor()
  {
    if ((this.productDetailSkuColor == null) || (this.productDetailSkuColor.size() == 0)) {
      return new ArrayList();
    }
    return this.productDetailSkuColor;
  }
  
  public ArrayList<ProductDetailSkuSize> getProductDetailSkuSize()
  {
    if ((this.productDetailSkuSize == null) || (this.productDetailSkuSize.size() == 0)) {
      return new ArrayList();
    }
    return this.productDetailSkuSize;
  }
  
  public ArrayList<Product> getProductList()
  {
    return this.mProductList;
  }
  
  public String getPromotionInfo()
  {
    return this.promotionInfo;
  }
  
  public String getPromotionTitle()
  {
    return this.promotionTitle;
  }
  
  public String getProvinceID()
  {
    return this.provinceID;
  }
  
  public Integer getProvinceIdMode1()
  {
    return this.provinceIdMode1;
  }
  
  public ArrayList<Province> getProvinceList()
  {
    return this.provinceList;
  }
  
  public Integer getProvinceMode1IndexById(int paramInt)
  {
    return (Integer)this.provinceMode1Map.get(Integer.valueOf(paramInt));
  }
  
  public ArrayList<ProvinceMode1> getProvinceMode1List()
  {
    return this.provinceMode1List;
  }
  
  public ArrayList<AddressBaseMode> getProvinceModeList()
  {
    return this.provinceModeList;
  }
  
  public String getProvinceName()
  {
    return this.provinceName;
  }
  
  public String getProvinceStockContent()
  {
    if ((TextUtils.isEmpty(this.provinceStockContent)) || ("null".equals(this.provinceStockContent)) || ("NULL".equals(this.provinceStockContent))) {
      return "";
    }
    return this.provinceStockContent;
  }
  
  public Boolean getProvinceStockFlag()
  {
    return this.provinceStockFlag;
  }
  
  public Integer getProvinceStockMode()
  {
    return this.provinceStockMode;
  }
  
  public String getRate()
  {
    return this.rate;
  }
  
  public Long getShowId()
  {
    if (this.showId == null) {
      return getId();
    }
    return this.showId;
  }
  
  public Boolean getShowMarketPrice()
  {
    return this.showMarketPrice;
  }
  
  public ArrayList<SkuColor> getSkuColorList()
  {
    return this.skuColorList;
  }
  
  public String getSkuId()
  {
    if (TextUtils.isEmpty(this.skuId)) {
      return "";
    }
    return this.skuId;
  }
  
  public ArrayList<SkuSize> getSkuSizeList()
  {
    return this.skuSizeList;
  }
  
  public SourceEntity getSourceEntity()
  {
    return this.sourceEntity;
  }
  
  public Long getStartTime()
  {
    if (this.startTime == null) {
      return Long.valueOf(0L);
    }
    return this.startTime;
  }
  
  public String getStockFunction()
  {
    return this.stockFunction;
  }
  
  public Boolean getSubOrderFlag()
  {
    return this.subOrderFlag;
  }
  
  public Integer getTotalCount()
  {
    return this.totalCount;
  }
  
  public String getTownID()
  {
    return this.townId;
  }
  
  public ArrayList<AddressBaseMode> getTownModeList()
  {
    return this.townModeList;
  }
  
  public String getTownName()
  {
    return this.townName;
  }
  
  public String getUserBalance()
  {
    if (this.sUserBalance == null) {
      return "";
    }
    return this.sUserBalance;
  }
  
  public String getUserClass()
  {
    if (this.sUserClass == null) {
      return "";
    }
    return this.sUserClass;
  }
  
  public String getUserPriceContent()
  {
    return this.userPriceContent;
  }
  
  public String getUserPriceLabel()
  {
    return this.userPriceLabel;
  }
  
  public String getUserScore()
  {
    if (this.sUerScore.length() > 0) {
      return this.sUerScore;
    }
    return "0";
  }
  
  public String getUsername()
  {
    if (this.sUserName.length() <= 0) {
      return String.valueOf("Customer");
    }
    return this.sUserName;
  }
  
  public String getmPaymentType()
  {
    return this.mPaymentType;
  }
  
  public String getsMsgId()
  {
    return this.sMsgId;
  }
  
  public String getsMsgUpdateTime()
  {
    return this.sMsgUpdateTime;
  }
  
  public Boolean isBook()
  {
    if (this.isBook != null) {}
    for (boolean bool = this.isBook.booleanValue();; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public boolean isCanEasyBuy()
  {
    return this.canEasyBuy;
  }
  
  public boolean isFavorited()
  {
    return this.isFavorited;
  }
  
  public Boolean isFiledExist(JSONObjectProxy paramJSONObjectProxy, String paramString)
  {
    if (paramJSONObjectProxy.toString().contains(paramString)) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public boolean isHasPacks()
  {
    return this.hasPacks;
  }
  
  public Boolean isPromotion()
  {
    if (this.isPromotion != null) {}
    for (boolean bool = this.isPromotion.booleanValue();; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public String popImgUrl(int paramInt)
  {
    if ((paramInt > -1) && (this.sImgUrlList.size() > 0) && (paramInt < this.sImgUrlList.size())) {
      return ((String)this.sImgUrlList.get(paramInt)).toString();
    }
    return null;
  }
  
  protected void putInCityMode1Map(Long paramLong, CityMode1 paramCityMode1)
  {
    if (this.cityMode1Map == null) {
      this.cityMode1Map = new HashMap();
    }
    if (!this.cityMode1Map.containsKey(paramLong)) {
      this.cityMode1Map.put(paramLong, paramCityMode1);
    }
  }
  
  public void setAdWord(String paramString)
  {
    this.adWord = paramString;
  }
  
  public void setAddFavoriteMsg(String paramString)
  {
    this.addFavoriteMsg = paramString;
  }
  
  public void setAverageScore(Long paramLong)
  {
    this.averageScore = paramLong;
  }
  
  public void setBook(Boolean paramBoolean)
  {
    this.isBook = paramBoolean;
  }
  
  public void setCanBuy(Boolean paramBoolean)
  {
    this.canBuy = paramBoolean;
  }
  
  public void setCanConsultFlag(Boolean paramBoolean)
  {
    this.canConsultFlag = paramBoolean;
  }
  
  public void setCanEasyBuy(boolean paramBoolean)
  {
    this.canEasyBuy = paramBoolean;
  }
  
  public void setCanFreeRead(Boolean paramBoolean)
  {
    this.canFreeRead = paramBoolean;
  }
  
  public void setCheckNext(boolean paramBoolean)
  {
    this.isCheckNext = paramBoolean;
  }
  
  public void setCityId(String paramString)
  {
    this.cityId = paramString;
  }
  
  public void setCityIdMode1(Integer paramInteger)
  {
    this.cityIdMode1 = paramInteger;
  }
  
  public void setCityModeList(ArrayList<AddressBaseMode> paramArrayList)
  {
    this.cityModeList = paramArrayList;
  }
  
  public void setCityName(String paramString)
  {
    this.cityName = paramString;
  }
  
  public void setCommentCountList(ArrayList<CommentCount> paramArrayList)
  {
    this.commentCountList = paramArrayList;
  }
  
  public void setConsultationCount(String paramString)
  {
    this.consultationCount = paramString;
  }
  
  public void setCountyID(String paramString)
  {
    this.countyId = paramString;
  }
  
  public void setCountyModeList(ArrayList<AddressBaseMode> paramArrayList)
  {
    this.countyModeList = paramArrayList;
  }
  
  public void setCountyName(String paramString)
  {
    this.countyName = paramString;
  }
  
  public void setCouponList(ArrayList<Coupon> paramArrayList)
  {
    this.couponList = paramArrayList;
  }
  
  public void setDefaultAddressMode(DefaultAddressMode paramDefaultAddressMode)
  {
    this.defaultAddressMode = paramDefaultAddressMode;
  }
  
  public void setDefaultAddressModeList(ArrayList<DefaultAddressMode> paramArrayList)
  {
    this.defaultAddressModeList = paramArrayList;
  }
  
  public void setDeliver(String paramString)
  {
    this.deliver = paramString;
  }
  
  public void setDeliveryCommentFlag(String paramString)
  {
    this.deliveryCommentFlag = paramString;
  }
  
  public void setDeliveryFlag(String paramString)
  {
    this.deliveryFlag = paramString;
  }
  
  public void setEndTime(Long paramLong)
  {
    this.endTime = Long.valueOf(1000L * paramLong.longValue());
  }
  
  public void setFavorited(boolean paramBoolean)
  {
    this.isFavorited = paramBoolean;
  }
  
  public void setFid(String paramString)
  {
    this.fid = paramString;
  }
  
  public void setFreeReadUrl(String paramString)
  {
    this.freeReadUrl = paramString;
  }
  
  public void setGiftList(ArrayList<Product> paramArrayList)
  {
    this.giftList = paramArrayList;
  }
  
  public void setGood(String paramString)
  {
    this.good = paramString;
  }
  
  public void setHasComment(String paramString)
  {
    this.hasComment = paramString;
  }
  
  public void setHasDiscuss(String paramString)
  {
    this.hasDiscuss = paramString;
  }
  
  public void setHasPacks(boolean paramBoolean)
  {
    this.hasPacks = paramBoolean;
  }
  
  public void setId(Long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setImage(String paramString1, String paramString2)
  {
    this.imageList.add(new Image(paramString1, paramString2));
  }
  
  public void setImgPrice(String paramString)
  {
    this.imgPrice = paramString;
  }
  
  public void setIsFlashSale(Integer paramInteger)
  {
    this.isFlashSale = paramInteger;
  }
  
  public void setIsPhoneVipPrice(Boolean paramBoolean)
  {
    this.isPhoneVipPrice = paramBoolean;
  }
  
  public void setIsPromotionJiang(Boolean paramBoolean)
  {
    this.isPromotionJiang = paramBoolean;
  }
  
  public void setIsPromotionZeng(Boolean paramBoolean)
  {
    this.isPromotionZeng = paramBoolean;
  }
  
  public void setIsValid(boolean paramBoolean)
  {
    isValid = paramBoolean;
  }
  
  public void setItemCount(int paramInt)
  {
    this.nItemCount = paramInt;
  }
  
  public void setJdDixcount(String paramString)
  {
    this.discount = paramString;
  }
  
  public void setJdPrice(String paramString)
  {
    this.jdPrice = paramString;
  }
  
  public void setMarketPrice(String paramString)
  {
    this.marketPrice = paramString;
  }
  
  public void setMarketPriceDescription(String paramString)
  {
    this.marketPriceDescription = paramString;
  }
  
  public void setMessage(String paramString)
  {
    this.message = paramString;
  }
  
  public void setMessageBody(String paramString)
  {
    this.sMsgBody = paramString;
  }
  
  public void setMessageFlag(String paramString)
  {
    this.sMsgFlag = paramString;
  }
  
  public void setMessageTime(String paramString)
  {
    this.sMsgTime = paramString;
  }
  
  public void setMessageType(String paramString)
  {
    this.sMsgType = paramString;
  }
  
  public void setMiaoSha(Boolean paramBoolean)
  {
    this.miaoSha = paramBoolean;
  }
  
  public void setMiaoShaPrice(String paramString)
  {
    this.miaoShaPrice = paramString;
  }
  
  public void setMsgTypeName(String paramString)
  {
    this.msgTypeName = paramString;
  }
  
  public void setName(String paramString)
  {
    if (paramString == null)
    {
      this.name = paramString;
      return;
    }
    Matcher localMatcher;
    StringBuffer localStringBuffer1;
    try
    {
      localMatcher = Pattern.compile("([^a-zA-Z0-9（）\\(\\) ])([a-zA-Z（\\(])|([^ ])([（\\(])|([（\\(])([^ ])|([A-Z0-9])(\\-)|(\\-)([A-Z0-9])|([0-9]*[A-Z]+[0-9]*)([^a-zA-Z0-9（）\\(\\) ])").matcher(paramString);
      localStringBuffer1 = new StringBuffer();
      if (!localMatcher.find())
      {
        localMatcher.appendTail(localStringBuffer1);
        localStringBuffer1.append(" ");
        this.name = localStringBuffer1.toString();
        return;
      }
    }
    catch (Exception localException)
    {
      this.name = paramString;
      return;
    }
    StringBuffer localStringBuffer2 = new StringBuffer();
    label147:
    for (int i = 1;; i++)
    {
      if (i > localMatcher.groupCount()) {}
      for (;;)
      {
        localMatcher.appendReplacement(localStringBuffer1, localStringBuffer2.toString());
        break;
        if (localMatcher.group(i) == null) {
          break label147;
        }
        localStringBuffer2.append(localMatcher.group(i)).append(" ").append(localMatcher.group(i + 1));
      }
    }
  }
  
  public void setNum(Integer paramInteger)
  {
    this.num = paramInteger;
  }
  
  public void setOrderCommentCount(String paramString)
  {
    this.orderCommentCount = paramString;
  }
  
  public void setOrderId(String paramString)
  {
    this.sOrderId = paramString;
  }
  
  public void setOrderPrice(String paramString)
  {
    this.sTotalPrice = paramString;
  }
  
  public void setOrderStatus(String paramString)
  {
    this.sOrderStatus = paramString;
  }
  
  public void setOrderSubtime(String paramString)
  {
    this.sSubmitTime = paramString;
  }
  
  public void setPostByJd(Boolean paramBoolean)
  {
    this.postByjd = paramBoolean;
  }
  
  public void setPriceReport(Boolean paramBoolean)
  {
    this.priceReport = paramBoolean;
  }
  
  public void setProductDetailBasicInfo(ProductDetailBasicInfo paramProductDetailBasicInfo)
  {
    this.productDetailBasicInfo = paramProductDetailBasicInfo;
  }
  
  public void setProductDetailCruxBasicInfo(ProductDetailCruxBasicInfo paramProductDetailCruxBasicInfo)
  {
    this.productDetailCruxBasicInfo = paramProductDetailCruxBasicInfo;
  }
  
  public void setProductDetailDefaultAddress(DefaultAddressMode paramDefaultAddressMode)
  {
    this.productDetailDefaultAddress = paramDefaultAddressMode;
  }
  
  public void setProductDetailJprice(ProductDetailPrice paramProductDetailPrice)
  {
    this.productDetailJprice = paramProductDetailPrice;
  }
  
  public void setProductDetailMprice(ProductDetailPrice paramProductDetailPrice)
  {
    this.productDetailMprice = paramProductDetailPrice;
  }
  
  public void setProductDetailSkuColor(ArrayList<ProductDetailSkuColor> paramArrayList)
  {
    this.productDetailSkuColor = paramArrayList;
  }
  
  public void setProductDetailSkuSize(ArrayList<ProductDetailSkuSize> paramArrayList)
  {
    this.productDetailSkuSize = paramArrayList;
  }
  
  public void setProductList(ArrayList<Product> paramArrayList)
  {
    this.mProductList = paramArrayList;
  }
  
  public void setPromotion(Boolean paramBoolean)
  {
    this.isPromotion = paramBoolean;
  }
  
  public void setPromotionInfo(String paramString)
  {
    this.promotionInfo = paramString;
  }
  
  public void setPromotionTitle(String paramString)
  {
    this.promotionTitle = paramString;
  }
  
  public void setProvinceID(String paramString)
  {
    this.provinceID = paramString;
  }
  
  public void setProvinceIdMode1(Integer paramInteger)
  {
    this.provinceIdMode1 = paramInteger;
  }
  
  public void setProvinceList(ArrayList<Province> paramArrayList)
  {
    this.provinceList = paramArrayList;
  }
  
  public void setProvinceMode1List(ArrayList<ProvinceMode1> paramArrayList)
  {
    this.provinceMode1List = paramArrayList;
    this.provinceMode1Map = new HashMap();
    for (int i = 0;; i++)
    {
      if (i >= paramArrayList.size()) {
        return;
      }
      ProvinceMode1 localProvinceMode1 = (ProvinceMode1)paramArrayList.get(i);
      this.provinceMode1Map.put(Integer.valueOf(localProvinceMode1.getId()), Integer.valueOf(i));
    }
  }
  
  public void setProvinceModeList(ArrayList<AddressBaseMode> paramArrayList)
  {
    this.provinceModeList = paramArrayList;
  }
  
  public void setProvinceName(String paramString)
  {
    this.provinceName = paramString;
  }
  
  public void setProvinceStockContent(String paramString)
  {
    this.provinceStockContent = paramString;
  }
  
  public void setProvinceStockFlag(Boolean paramBoolean)
  {
    this.provinceStockFlag = paramBoolean;
  }
  
  public void setProvinceStockMode(Integer paramInteger)
  {
    this.provinceStockMode = paramInteger;
  }
  
  public void setRate(String paramString)
  {
    this.rate = paramString;
  }
  
  public void setShowId(Long paramLong)
  {
    this.showId = paramLong;
  }
  
  public void setShowMarketPrice(Boolean paramBoolean)
  {
    this.showMarketPrice = paramBoolean;
  }
  
  public void setSkuColorList(ArrayList<SkuColor> paramArrayList)
  {
    this.skuColorList = paramArrayList;
  }
  
  public void setSkuId(String paramString)
  {
    this.skuId = paramString;
  }
  
  public void setSkuSizeList(ArrayList<SkuSize> paramArrayList)
  {
    this.skuSizeList = paramArrayList;
  }
  
  public void setSourceEntity(SourceEntity paramSourceEntity)
  {
    this.sourceEntity = paramSourceEntity;
  }
  
  public void setStartTime(Long paramLong)
  {
    if (paramLong != null) {
      this.startTime = Long.valueOf(1000L * paramLong.longValue());
    }
  }
  
  public void setStockFunction(String paramString)
  {
    this.stockFunction = paramString;
  }
  
  public void setSubOrderFlag(Boolean paramBoolean)
  {
    this.subOrderFlag = paramBoolean;
  }
  
  public void setTotalCount(Integer paramInteger)
  {
    this.totalCount = paramInteger;
  }
  
  public void setTownID(String paramString)
  {
    this.townId = paramString;
  }
  
  public void setTownModeList(ArrayList<AddressBaseMode> paramArrayList)
  {
    this.townModeList = paramArrayList;
  }
  
  public void setTownName(String paramString)
  {
    this.townName = paramString;
  }
  
  public void setUserBalance(String paramString)
  {
    this.sUserBalance = paramString;
  }
  
  public void setUserClass(String paramString)
  {
    this.sUserClass = paramString;
  }
  
  public void setUserPriceContent(String paramString)
  {
    this.userPriceContent = paramString;
  }
  
  public void setUserPriceLabel(String paramString)
  {
    this.userPriceLabel = paramString;
  }
  
  public void setUserScore(String paramString)
  {
    this.sUerScore = paramString;
  }
  
  public void setUsername(String paramString)
  {
    this.sUserName = paramString;
  }
  
  public void setmPaymentType(String paramString)
  {
    this.mPaymentType = paramString;
  }
  
  public void setsMsgId(String paramString)
  {
    this.sMsgId = paramString;
  }
  
  public void setsMsgUpdateTime(String paramString)
  {
    this.sMsgUpdateTime = paramString;
  }
  
  public void update(JSONObjectProxy paramJSONObjectProxy, JSONArray paramJSONArray, int paramInt)
  {
    update(paramJSONObjectProxy, paramJSONArray, paramInt, null);
  }
  
  public void update(JSONObjectProxy paramJSONObjectProxy, JSONArray paramJSONArray, int paramInt, Object[] paramArrayOfObject)
  {
    setGood(paramJSONObjectProxy.getStringOrNull("good"));
    switch (paramInt)
    {
    case 2: 
    case 8: 
    case 22: 
    default: 
    case 0: 
    case 1: 
    case 13: 
    case 7: 
    case 3: 
    case 28: 
    case 4: 
    case 5: 
    case 6: 
    case 9: 
    case 10: 
    case 11: 
    case 12: 
    case 14: 
    case 15: 
    case 16: 
    case 26: 
    case 17: 
    case 18: 
    case 19: 
    case 20: 
    case 21: 
      do
      {
        do
        {
          return;
          setId(paramJSONObjectProxy.getLongOrNull("wareId"));
          setName(paramJSONObjectProxy.getStringOrNull("wname"));
          setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
          setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
          setImgPrice(paramJSONObjectProxy.getStringOrNull("wmaprice"));
          setMarketPrice(paramJSONObjectProxy.getStringOrNull("marketPrice"));
          if (isFiledExist(paramJSONObjectProxy, "adword").booleanValue()) {
            setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
          }
          addProductListScore(paramJSONObjectProxy);
          setGood(paramJSONObjectProxy.getStringOrNull("good"));
          return;
          setId(paramJSONObjectProxy.getLongOrNull("wareId"));
          setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
          setName(paramJSONObjectProxy.getStringOrNull("wname"));
          setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
          setMarketPrice(paramJSONObjectProxy.getStringOrNull("martPrice"));
          setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
          addProductListScore(paramJSONObjectProxy);
          setIsFlashSale(paramJSONObjectProxy.getIntOrNull("flashSale"));
          return;
          setId(paramJSONObjectProxy.getLongOrNull("SkuId"));
          if (paramArrayOfObject[0] != null) {
            setImage((String)paramArrayOfObject[0] + paramJSONObjectProxy.getStringOrNull("SkuPicUrl"), null);
          }
          for (;;)
          {
            setName(paramJSONObjectProxy.getStringOrNull("SkuName"));
            return;
            setImage(paramJSONObjectProxy.getStringOrNull("SkuPicUrl"), null);
          }
          setId(paramJSONObjectProxy.getLongOrNull("wareId"));
          setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
          setName(paramJSONObjectProxy.getStringOrNull("wname"));
          setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
          setMarketPrice(paramJSONObjectProxy.getStringOrNull("martPrice"));
          setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
          setOrderId(paramJSONObjectProxy.getStringOrNull("orderId"));
          setBook(paramJSONObjectProxy.getBooleanOrNull("book"));
          this.fid = paramJSONObjectProxy.getStringOrNull("fid");
          addProductListScore(paramJSONObjectProxy);
          setHasComment(paramJSONObjectProxy.getStringOrNull("comment"));
          setHasDiscuss(paramJSONObjectProxy.getStringOrNull("discuss"));
          return;
          for (;;)
          {
            try
            {
              localJSONArrayPoxy2 = paramJSONObjectProxy.getJSONArrayOrNull("image");
              this.imageList.clear();
              i = 0;
              int j = localJSONArrayPoxy2.length();
              if (i < j) {
                continue;
              }
            }
            catch (JSONException localJSONException2)
            {
              JSONArrayPoxy localJSONArrayPoxy2;
              int i;
              JSONObjectProxy localJSONObjectProxy2;
              JSONObjectProxy localJSONObjectProxy1;
              JSONArrayPoxy localJSONArrayPoxy1;
              String str;
              continue;
            }
            setProductDetailJprice(new ProductDetailPrice(paramJSONObjectProxy.getJSONObjectOrNull("jprice"), paramInt));
            setProductDetailMprice(new ProductDetailPrice(paramJSONObjectProxy.getJSONObjectOrNull("mprice"), paramInt));
            setProductDetailBasicInfo(new ProductDetailBasicInfo(paramJSONObjectProxy.getJSONObjectOrNull("basicInfo"), paramInt));
            setProductDetailSkuColor(ProductDetailSkuColor.toList(paramJSONObjectProxy.getJSONArrayOrNull("skuColor"), paramInt));
            setProductDetailSkuSize(ProductDetailSkuSize.toList(paramJSONObjectProxy.getJSONArrayOrNull("skuSize"), paramInt));
            setProductDetailDefaultAddress(new DefaultAddressMode(paramJSONObjectProxy.getJSONObjectOrNull("defaultAddr"), paramInt, paramArrayOfObject));
            setIsPhoneVipPrice(paramJSONObjectProxy.getBooleanOrNull("specialPrice"));
            return;
            localJSONObjectProxy2 = localJSONArrayPoxy2.getJSONObject(i);
            this.imageList.add(new Image(localJSONObjectProxy2, 1));
            i++;
          }
          setProductDetailCruxBasicInfo(new ProductDetailCruxBasicInfo(paramJSONObjectProxy, paramInt));
          return;
          setId(paramJSONObjectProxy.getLongOrNull("wareId"));
          setName(paramJSONObjectProxy.getStringOrNull("wname"));
          if (isFiledExist(paramJSONObjectProxy, "adword").booleanValue()) {
            setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
          }
          setMarketPrice(paramJSONObjectProxy.getStringOrNull("martPrice"));
          setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
          setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
          return;
          setUsername(paramJSONObjectProxy.getStringOrNull("unickName"));
          setImage(paramJSONObjectProxy.getStringOrNull("imgUrl"), null);
          setUserClass(paramJSONObjectProxy.getStringOrNull("uclass"));
          return;
          setOrderId(paramJSONObjectProxy.getStringOrNull("orderId"));
          setOrderStatus(paramJSONObjectProxy.getStringOrNull("orderStatus"));
          setOrderPrice(paramJSONObjectProxy.getStringOrNull("price"));
          setOrderSubtime(paramJSONObjectProxy.getStringOrNull("dataSubmit"));
          setNum(paramJSONObjectProxy.getIntOrNull("num"));
          setId(paramJSONObjectProxy.getLongOrNull("wareId"));
          setName(paramJSONObjectProxy.getStringOrNull("wname"));
          setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
          setmPaymentType(paramJSONObjectProxy.getStringOrNull("paymentType"));
          setSubOrderFlag(paramJSONObjectProxy.getBooleanOrNull("subOrder"));
          localJSONObjectProxy1 = paramJSONObjectProxy.getJSONObjectOrNull("orderMsg");
          if (localJSONObjectProxy1 != null)
          {
            localJSONArrayPoxy1 = localJSONObjectProxy1.getJSONArrayOrNull("wareInfoList");
            if ((localJSONArrayPoxy1 != null) && (localJSONArrayPoxy1.length() > 0)) {
              setProductList(toList(localJSONArrayPoxy1, 6));
            }
          }
          setHasComment(paramJSONObjectProxy.getStringOrNull("comment"));
          setHasDiscuss(paramJSONObjectProxy.getStringOrNull("discuss"));
          return;
          setId(paramJSONObjectProxy.getLongOrNull("Id"));
          setName(paramJSONObjectProxy.getStringOrNull("Name"));
          setJdPrice(paramJSONObjectProxy.getStringOrNull("Price"));
          setJdDixcount(paramJSONObjectProxy.getStringOrNull("Discount"));
          setImgPrice(paramJSONObjectProxy.getStringOrNull("PriceImg"));
          setItemCount(paramJSONObjectProxy.getIntOrNull("Num").intValue());
          setNum(paramJSONObjectProxy.getIntOrNull("Num"));
          if ((paramArrayOfObject != null) && (paramArrayOfObject[0] != null))
          {
            setImage((String)paramArrayOfObject[0] + paramJSONObjectProxy.getStringOrNull("ImgUrl"), null);
            return;
          }
          setImage(paramJSONObjectProxy.getStringOrNull("ImgUrl"), null);
          return;
          setId(paramJSONObjectProxy.getLongOrNull("wareId"));
          setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
          setBook(paramJSONObjectProxy.getBooleanOrNull("book"));
          setName(paramJSONObjectProxy.getStringOrNull("wname"));
          setNum(paramJSONObjectProxy.getIntOrNull("num"));
          return;
          setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
          setBook(paramJSONObjectProxy.getBooleanOrNull("book"));
          setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
          setMarketPrice(paramJSONObjectProxy.getStringOrNull("martPrice"));
          setId(paramJSONObjectProxy.getLongOrNull("wareId"));
          setName(paramJSONObjectProxy.getStringOrNull("wname"));
          return;
          setName(paramJSONObjectProxy.getStringOrNull("Name"));
          return;
          setId(paramJSONObjectProxy.getLongOrNull("wareId"));
          setName(paramJSONObjectProxy.getStringOrNull("wname"));
          setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
          setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
          setImgPrice(paramJSONObjectProxy.getStringOrNull("wmaprice"));
          setMarketPrice(paramJSONObjectProxy.getStringOrNull("marketPrice"));
          setEndTime(paramJSONObjectProxy.getLongOrNull("endTime"));
        } while (!isFiledExist(paramJSONObjectProxy, "adword").booleanValue());
        setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
        return;
        setSkuColorList(SkuColor.toList(paramJSONObjectProxy.getJSONArrayOrNull("skuColor"), 0));
        setSkuSizeList(SkuSize.toList(paramJSONObjectProxy.getJSONArrayOrNull("skuSize"), 0));
        return;
        setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
        setBook(paramJSONObjectProxy.getBooleanOrNull("book"));
        setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
        setId(paramJSONObjectProxy.getLongOrNull("wareId"));
        setName(paramJSONObjectProxy.getStringOrNull("wname"));
        setMarketPrice(paramJSONObjectProxy.getStringOrNull("martPrice"));
        setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
        return;
        setId(paramJSONObjectProxy.getLongOrNull("wareId"));
        setName(paramJSONObjectProxy.getStringOrNull("wname"));
        setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
        setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
        setImgPrice(paramJSONObjectProxy.getStringOrNull("wmaprice"));
        setMarketPrice(paramJSONObjectProxy.getStringOrNull("marketPrice"));
        if (isFiledExist(paramJSONObjectProxy, "adword").booleanValue()) {
          setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
        }
        addProductListScore(paramJSONObjectProxy);
        setGood(paramJSONObjectProxy.getStringOrNull("good"));
        return;
        setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
        setBook(paramJSONObjectProxy.getBooleanOrNull("book"));
        setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
        setId(paramJSONObjectProxy.getLongOrNull("wareId"));
        setName(paramJSONObjectProxy.getStringOrNull("wname"));
        setMiaoShaPrice(paramJSONObjectProxy.getStringOrNull("miaoShaPrice"));
        setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
        setStartTime(paramJSONObjectProxy.getLongOrNull("startRemainTime"));
        setEndTime(paramJSONObjectProxy.getLongOrNull("endRemainTime"));
        setRate(paramJSONObjectProxy.getStringOrNull("rate"));
        setMiaoSha(paramJSONObjectProxy.getBooleanOrNull("miaoSha"));
        setCanBuy(paramJSONObjectProxy.getBooleanOrNull("canBuy"));
        setJdDixcount(paramJSONObjectProxy.getStringOrNull("discount"));
        setMessage(paramJSONObjectProxy.getStringOrNull("message"));
        return;
        setPromotionTitle(paramJSONObjectProxy.getStringOrNull("promotionInfoTitle"));
        setPromotionInfo(paramJSONObjectProxy.getStringOrNull("promotionInfo"));
        return;
        str = paramJSONObjectProxy.getStringOrNull("deliver");
        if ((TextUtils.isEmpty(str)) || (TextUtils.equals(str, "null"))) {
          str = null;
        }
        setDeliver(str);
        setPostByJd(paramJSONObjectProxy.getBooleanOrNull("isPostByJd"));
        return;
        try
        {
          setId(Long.valueOf(Long.parseLong(paramJSONObjectProxy.getString("wareId"))));
          if ((this.id == null) || (TextUtils.isEmpty(this.id.toString())))
          {
            setIsValid(false);
            setName(paramJSONObjectProxy.getStringOrNull("wname"));
            setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
            setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
            return;
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;)
          {
            localNumberFormatException.printStackTrace();
          }
        }
        catch (JSONException localJSONException1)
        {
          for (;;)
          {
            localJSONException1.printStackTrace();
            continue;
            setIsValid(true);
          }
        }
        setId(paramJSONObjectProxy.getLongOrNull("wareId"));
        setName(paramJSONObjectProxy.getStringOrNull("wname"));
        setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
        setMarketPrice(paramJSONObjectProxy.getStringOrNull("martPrice"));
        setStartTime(paramJSONObjectProxy.getLongOrNull("startRemainTime"));
        setEndTime(paramJSONObjectProxy.getLongOrNull("endRemainTime"));
        setBook(paramJSONObjectProxy.getBooleanOrNull("book"));
        setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
      } while (!isFiledExist(paramJSONObjectProxy, "adword").booleanValue());
      setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
      return;
    case 23: 
      setAdWord(paramJSONObjectProxy.getStringOrNull("adword"));
      setBook(paramJSONObjectProxy.getBooleanOrNull("book"));
      setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
      setId(paramJSONObjectProxy.getLongOrNull("wareId"));
      setName(paramJSONObjectProxy.getStringOrNull("wname"));
      setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
      setStartTime(paramJSONObjectProxy.getLongOrNull("startRemainTime"));
      setEndTime(paramJSONObjectProxy.getLongOrNull("endRemainTime"));
      setMarketPrice(paramJSONObjectProxy.getStringOrNull("martPrice"));
      setCanFreeRead(paramJSONObjectProxy.getBooleanOrNull("canFreeRead"));
      return;
    case 24: 
      setId(paramJSONObjectProxy.getLongOrNull("SkuId"));
      setName(paramJSONObjectProxy.getStringOrNull("SkuName"));
      setImage(paramJSONObjectProxy.getStringOrNull("SkuPicUrl"), null);
      return;
    case 25: 
      setName(paramJSONObjectProxy.getStringOrNull("MainSkuName"));
      setId(paramJSONObjectProxy.getLongOrNull("MainSkuId"));
      setImage(paramJSONObjectProxy.getStringOrNull("MainSkuPicUrl"), null);
      return;
    }
    setName(paramJSONObjectProxy.getStringOrNull("wname"));
    setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
    setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
    setId(paramJSONObjectProxy.getLongOrNull("wareId"));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.Product
 * JD-Core Version:    0.7.0.1
 */