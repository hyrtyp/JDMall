package com.jingdong.app.mall.shopping;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.InvoiceInfo;
import com.jingdong.common.entity.LastOrderInfo;
import com.jingdong.common.entity.PaymentInfo;
import com.jingdong.common.entity.UserInfo;
import com.jingdong.common.entity.cart.CartResponseInfo;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ReceiptInfoEditActivity
  extends MyActivity
  implements UpdateOrderInfoInterface
{
  public static final int GET_INVOINCE_BOOK = 2;
  public static final int GET_INVOINCE_GENERAL = 3;
  public static final int GET_INVOINCE_TYPES = 1;
  private String TAG = "ReceiptInfoEditActivity";
  boolean bCompany = false;
  boolean bPersonel = true;
  private boolean isNoRegisterOrder = false;
  String[] items = null;
  JSONObject jbBody;
  JSONObject jbBooks;
  JSONObject jbCartStr;
  JSONObject jbGeneral;
  JSONObject jbOrderStr;
  JSONObject jbTypes;
  TextView mBook;
  ImageButton mBook2;
  TextView mBookFlag;
  RadioButton mCompanyBtn;
  EditText mCompanyEdt;
  Button mConfirm;
  TextView mGeneral;
  ImageButton mGeneral2;
  TextView mGeneralFlag;
  RadioButton mPersonel;
  TextView mReceiptType;
  TextView mTitle;
  int nBookSelected = 0;
  int nBookSelectedID = 4;
  int nGeneralSelected = 0;
  int nGeneralSelectedID = 1;
  boolean noBook = false;
  boolean onlyBook = false;
  String sCompanyName;
  
  private void compositeOrderStr()
  {
    this.jbOrderStr = new JSONObject();
    for (;;)
    {
      try
      {
        this.jbOrderStr.put("pin", LoginUserBase.getLoginUserName());
        if (LastOrderInfo.mUserInfo.getUserMobile() != null)
        {
          this.jbOrderStr.put("Mobile", LastOrderInfo.mUserInfo.getUserMobile());
          if (LastOrderInfo.mUserInfo.getUserPhone() != null)
          {
            this.jbOrderStr.put("Phone", LastOrderInfo.mUserInfo.getUserPhone());
            if (LastOrderInfo.mUserInfo.getUserZip() == null) {
              break label799;
            }
            this.jbOrderStr.put("Zip", LastOrderInfo.mUserInfo.getUserZip());
            if (LastOrderInfo.mUserInfo.getUserAddr().get("IdProvince") == null) {
              break label814;
            }
            this.jbOrderStr.put("IdProvince", LastOrderInfo.mUserInfo.getUserAddr().get("IdProvince"));
            if (LastOrderInfo.mUserInfo.getUserAddr().get("IdCity") == null) {
              break label828;
            }
            this.jbOrderStr.put("IdCity", LastOrderInfo.mUserInfo.getUserAddr().get("IdCity"));
            if (LastOrderInfo.mUserInfo.getUserAddr().get("IdArea") == null) {
              break label843;
            }
            this.jbOrderStr.put("IdArea", LastOrderInfo.mUserInfo.getUserAddr().get("IdArea"));
            if (!LastOrderInfo.mUserInfo.getUserAddr().toString().contains("Where")) {
              break label859;
            }
            this.jbOrderStr.put("Where", LastOrderInfo.mUserInfo.getUserAddr().get("Where"));
            if ((!LastOrderInfo.mUserInfo.getUserAddr().toString().contains("Email")) || (LastOrderInfo.mUserInfo.getUserAddr().get("Email") == null)) {
              break label874;
            }
            this.jbOrderStr.put("Email", LastOrderInfo.mUserInfo.getUserAddr().get("Email"));
            if ((!LastOrderInfo.mUserInfo.getUserAddr().toString().contains("UserLevel")) || (LastOrderInfo.mUserInfo.getUserAddr().get("UserLevel") == null)) {
              break label889;
            }
            this.jbOrderStr.put("UserLevel", LastOrderInfo.mUserInfo.getUserAddr().get("UserLevel"));
            if (LastOrderInfo.mInvoiceInfo.getInvoiceInfo() != null)
            {
              if ((!LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString().contains("IdInvoiceType")) || (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceType") == null)) {
                break label903;
              }
              this.jbOrderStr.put("IdInvoiceType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceType"));
              if ((!LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString().contains("IdInvoiceHeaderType")) || (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceHeaderType") == null)) {
                break label917;
              }
              this.jbOrderStr.put("IdInvoiceHeaderType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceHeaderType"));
              if ((LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString().contains("IdInvoiceContentTypeBook")) && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceContentTypeBook") != null)) {
                this.jbOrderStr.put("IdInvoiceContentTypeBook", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceContentTypeBook"));
              }
              if ((!LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString().contains("IdCompanyBranch")) || (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdCompanyBranch") == null)) {
                break label931;
              }
              this.jbOrderStr.put("IdCompanyBranch", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdCompanyBranch"));
              if ((!LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString().contains("IdInvoiceContentsType")) || (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceContentsType") == null)) {
                break label945;
              }
              this.jbOrderStr.put("IdInvoiceContentsType", LastOrderInfo.mInvoiceInfo.getInvoiceInfo().get("IdInvoiceContentsType"));
            }
            if ((LastOrderInfo.mPaymentInfo.type >= 5) || (LastOrderInfo.mPaymentInfo.type <= 0)) {
              break label959;
            }
            this.jbOrderStr.put("IdPaymentType", LastOrderInfo.mPaymentInfo.type);
            if ((!LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).toString().contains("PaymentWay")) || (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("PaymentWay") == null)) {
              break label973;
            }
            this.jbOrderStr.put("PaymentWay", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("PaymentWay"));
            if (LastOrderInfo.dPromotionPrice < 0.0D) {
              break label987;
            }
            this.jbOrderStr.put("PromotionPrice", LastOrderInfo.dPromotionPrice);
            if (LastOrderInfo.dPrice < 0.0D) {
              break;
            }
            this.jbOrderStr.put("Price", LastOrderInfo.dPrice);
          }
        }
        else
        {
          this.jbOrderStr.put("Mobile", "");
          continue;
        }
        this.jbOrderStr.put("Phone", "");
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
      continue;
      label799:
      this.jbOrderStr.put("Zip", "");
      continue;
      label814:
      this.jbOrderStr.put("IdProvince", 1);
      continue;
      label828:
      this.jbOrderStr.put("IdCity", 72);
      continue;
      label843:
      this.jbOrderStr.put("IdArea", 2819);
      continue;
      label859:
      this.jbOrderStr.put("Where", "");
      continue;
      label874:
      this.jbOrderStr.put("Email", "");
      continue;
      label889:
      this.jbOrderStr.put("UserLevel", 0);
      continue;
      label903:
      this.jbOrderStr.put("IdInvoiceType", 0);
      continue;
      label917:
      this.jbOrderStr.put("IdInvoiceHeaderType", 0);
      continue;
      label931:
      this.jbOrderStr.put("IdCompanyBranch", 0);
      continue;
      label945:
      this.jbOrderStr.put("IdInvoiceContentsType", 0);
      continue;
      label959:
      this.jbOrderStr.put("IdPaymentType", 1);
      continue;
      label973:
      this.jbOrderStr.put("PaymentWay", 0);
      continue;
      label987:
      this.jbOrderStr.put("PromotionPrice", 0);
    }
    this.jbOrderStr.put("Price", 0);
  }
  
  private void compositeOrderStrByAddEasyBuy()
  {
    this.jbOrderStr = new JSONObject();
    for (;;)
    {
      try
      {
        if (!LoginUserBase.hasLogin()) {
          return;
        }
        this.jbOrderStr.put("pin", LoginUserBase.getLoginUserName());
        if (LastOrderInfo.mUserInfo.getUserMobile() != null)
        {
          this.jbOrderStr.put("Mobile", LastOrderInfo.mUserInfo.getUserMobile());
          if (LastOrderInfo.mUserInfo.getUserPhone() != null)
          {
            this.jbOrderStr.put("Phone", LastOrderInfo.mUserInfo.getUserPhone());
            if (LastOrderInfo.mUserInfo.getUserZip() == null) {
              break label494;
            }
            this.jbOrderStr.put("Zip", LastOrderInfo.mUserInfo.getUserZip());
            if (LastOrderInfo.mUserInfo.getUserAddr().get("IdProvince") == null) {
              break label509;
            }
            this.jbOrderStr.put("IdProvince", LastOrderInfo.mUserInfo.getUserAddr().get("IdProvince"));
            if (LastOrderInfo.mUserInfo.getUserAddr().get("IdCity") == null) {
              break label523;
            }
            this.jbOrderStr.put("IdCity", LastOrderInfo.mUserInfo.getUserAddr().get("IdCity"));
            if (LastOrderInfo.mUserInfo.getUserAddr().get("IdArea") == null) {
              break label538;
            }
            this.jbOrderStr.put("IdArea", LastOrderInfo.mUserInfo.getUserAddr().get("IdArea"));
            if (!LastOrderInfo.mUserInfo.getUserAddr().toString().contains("Where")) {
              break label554;
            }
            this.jbOrderStr.put("Where", LastOrderInfo.mUserInfo.getUserAddr().get("Where"));
            if ((!LastOrderInfo.mUserInfo.getUserAddr().toString().contains("Email")) || (LastOrderInfo.mUserInfo.getUserAddr().get("Email") == null)) {
              break label569;
            }
            this.jbOrderStr.put("Email", LastOrderInfo.mUserInfo.getUserAddr().get("Email"));
            if ((!LastOrderInfo.mUserInfo.getUserAddr().toString().contains("UserLevel")) || (LastOrderInfo.mUserInfo.getUserAddr().get("UserLevel") == null)) {
              break label584;
            }
            this.jbOrderStr.put("UserLevel", LastOrderInfo.mUserInfo.getUserAddr().get("UserLevel"));
            if ((LastOrderInfo.mPaymentInfo.type >= 5) || (LastOrderInfo.mPaymentInfo.type <= 0)) {
              break label598;
            }
            this.jbOrderStr.put("IdPaymentType", LastOrderInfo.mPaymentInfo.type);
            if ((!LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).toString().contains("PaymentWay")) || (LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("PaymentWay") == null)) {
              break;
            }
            this.jbOrderStr.put("PaymentWay", LastOrderInfo.mPaymentInfo.getPayMentType(LastOrderInfo.mPaymentInfo.type).get("PaymentWay"));
          }
        }
        else
        {
          this.jbOrderStr.put("Mobile", "");
          continue;
        }
        this.jbOrderStr.put("Phone", "");
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
      continue;
      label494:
      this.jbOrderStr.put("Zip", "");
      continue;
      label509:
      this.jbOrderStr.put("IdProvince", 1);
      continue;
      label523:
      this.jbOrderStr.put("IdCity", 72);
      continue;
      label538:
      this.jbOrderStr.put("IdArea", 2819);
      continue;
      label554:
      this.jbOrderStr.put("Where", "");
      continue;
      label569:
      this.jbOrderStr.put("Email", "");
      continue;
      label584:
      this.jbOrderStr.put("UserLevel", 0);
      continue;
      label598:
      this.jbOrderStr.put("IdPaymentType", 1);
    }
    this.jbOrderStr.put("PaymentWay", 0);
  }
  
  private void createBookAlertDiglog(String paramString)
  {
    new JSONArray();
    final String str = this.mBook.getText().toString();
    for (;;)
    {
      try
      {
        if ((this.jbBooks == null) || (this.jbBooks.get("InvoiceContents").toString() == "null")) {
          return;
        }
        if (this.jbBooks.get("InvoiceContents") == null) {
          return;
        }
        localJSONArray = this.jbBooks.getJSONArray("InvoiceContents");
        this.items = new String[localJSONArray.length()];
        i = 0;
        int j = localJSONArray.length();
        if (i < j) {
          continue;
        }
      }
      catch (JSONException localJSONException)
      {
        JSONArray localJSONArray;
        int i;
        AlertDialog.Builder localBuilder;
        continue;
      }
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setTitle(paramString);
      if (this.nBookSelected == -1) {
        this.nBookSelected = 4;
      }
      localBuilder.setSingleChoiceItems(this.items, this.nBookSelected, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (str.compareTo(ReceiptInfoEditActivity.this.items[paramAnonymousInt]) == 0)
          {
            ReceiptInfoEditActivity.this.mBook.setText(ReceiptInfoEditActivity.this.items[paramAnonymousInt]);
            ReceiptInfoEditActivity.this.nBookSelected = paramAnonymousInt;
            paramAnonymousDialogInterface.dismiss();
            return;
          }
          ReceiptInfoEditActivity.this.nBookSelected = paramAnonymousInt;
          ReceiptInfoEditActivity.this.setNewBook(paramAnonymousInt);
          paramAnonymousDialogInterface.dismiss();
        }
      }).show();
      return;
      this.items[i] = localJSONArray.getJSONObject(i).getString("Name");
      i++;
    }
  }
  
  private void createGeneralAlertDiglog(String paramString)
  {
    new JSONArray();
    final String str = this.mGeneral.getText().toString();
    for (;;)
    {
      try
      {
        if ((this.jbGeneral == null) || (this.jbGeneral.get("InvoiceContents").toString() == "null")) {
          return;
        }
        if (this.jbGeneral.get("InvoiceContents") == null) {
          return;
        }
        localJSONArray = this.jbGeneral.getJSONArray("InvoiceContents");
        this.items = new String[localJSONArray.length()];
        i = 0;
        int j = localJSONArray.length();
        if (i < j) {
          continue;
        }
      }
      catch (JSONException localJSONException)
      {
        JSONArray localJSONArray;
        int i;
        AlertDialog.Builder localBuilder;
        continue;
      }
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setTitle(paramString);
      localBuilder.setSingleChoiceItems(this.items, this.nGeneralSelected, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (str.compareTo(ReceiptInfoEditActivity.this.items[paramAnonymousInt]) == 0)
          {
            ReceiptInfoEditActivity.this.mGeneral.setText(ReceiptInfoEditActivity.this.items[paramAnonymousInt]);
            ReceiptInfoEditActivity.this.nGeneralSelected = paramAnonymousInt;
            paramAnonymousDialogInterface.dismiss();
            return;
          }
          ReceiptInfoEditActivity.this.nGeneralSelected = paramAnonymousInt;
          ReceiptInfoEditActivity.this.setNewGeneral(paramAnonymousInt);
          paramAnonymousDialogInterface.dismiss();
        }
      }).show();
      return;
      this.items[i] = localJSONArray.getJSONObject(i).getString("Name");
      i++;
    }
  }
  
  private void getCartItemInfo()
  {
    if (Constants.bEasyBuy)
    {
      localJSONObject = new JSONObject();
      localJSONArray = new JSONArray();
    }
    while (FillOrderActivity.cartResponseInfo == null) {
      try
      {
        JSONObject localJSONObject;
        JSONArray localJSONArray;
        localJSONObject.put("Id", Constants.easyBuyProdId);
        localJSONObject.put("num", String.valueOf(1));
        localJSONArray.put(localJSONObject);
        this.jbCartStr.put("TheSkus", localJSONArray);
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
    }
    this.jbCartStr = FillOrderActivity.cartResponseInfo.toCheckedCartStr();
  }
  
  private void getInvoincesContentBook()
  {
    updatCcomositeBody();
    setUpConnAndGetData("invoiceContentsBook", this.jbBody, "invoiceContentsBook");
  }
  
  private void getInvoincesContentGeneral()
  {
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy)) {
      updatCcomositeBodyByAddEasyBuy();
    }
    for (String str = "easyBuyInvoiceContentsGeneral";; str = "invoiceContentsGeneral")
    {
      try
      {
        this.jbOrderStr.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
        this.jbBody.put("OrderStr", this.jbOrderStr);
        setUpConnAndGetData(str, this.jbBody, "invoiceContentsGeneral");
        return;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          localJSONException.printStackTrace();
        }
      }
      updatCcomositeBody();
    }
  }
  
  private void getInvoincesTypes()
  {
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy)) {
      updatCcomositeBodyByAddEasyBuy();
    }
    for (String str = "easyBuyInvoiceTypes";; str = "invoiceTypes")
    {
      try
      {
        this.jbOrderStr.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
        this.jbBody.put("OrderStr", this.jbOrderStr);
        setUpConnAndGetData(str, this.jbBody, "invoiceTypesInfo");
        return;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          localJSONException.printStackTrace();
        }
      }
      updatCcomositeBody();
    }
  }
  
  private int getType(String paramString)
  {
    if (paramString.compareTo("invoiceTypesInfo") == 0) {
      return 1;
    }
    if (paramString.compareTo("invoiceContentsBook") == 0) {
      return 2;
    }
    if (paramString.compareTo("invoiceContentsGeneral") == 0) {
      return 3;
    }
    return -1;
  }
  
  private void handleClickEvent()
  {
    this.mBook.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ReceiptInfoEditActivity.this.mBook2.performClick();
      }
    });
    this.mBook2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ReceiptInfoEditActivity.this.createBookAlertDiglog("图书类型");
      }
    });
    this.mGeneral.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ReceiptInfoEditActivity.this.mGeneral2.performClick();
      }
    });
    this.mGeneral2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ReceiptInfoEditActivity.this.createGeneralAlertDiglog("非图书类型");
      }
    });
    this.mPersonel.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          ReceiptInfoEditActivity.this.mCompanyEdt.setVisibility(8);
          ReceiptInfoEditActivity.this.bPersonel = true;
          return;
        }
        ReceiptInfoEditActivity.this.bPersonel = true;
      }
    });
    this.mCompanyBtn.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          ReceiptInfoEditActivity.this.mCompanyEdt.setVisibility(0);
          ReceiptInfoEditActivity.this.bCompany = true;
          return;
        }
        ReceiptInfoEditActivity.this.bCompany = false;
      }
    });
    this.mConfirm.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (ReceiptInfoEditActivity.this.bCompany)
        {
          ReceiptInfoEditActivity.this.sCompanyName = ReceiptInfoEditActivity.this.mCompanyEdt.getText().toString();
          if ((TextUtils.isEmpty(ReceiptInfoEditActivity.this.sCompanyName)) || (ReceiptInfoEditActivity.this.sCompanyName.trim().length() <= 0))
          {
            Toast.makeText(ReceiptInfoEditActivity.this, "请输入单位名称", 0).show();
            return;
          }
        }
        ReceiptInfoEditActivity.this.updateInvoinceInfo();
        ReceiptInfoEditActivity.this.setResult(4);
        ReceiptInfoEditActivity.this.finish();
      }
    });
  }
  
  /* Error */
  private void handleDatas(HttpGroup.HttpResponse paramHttpResponse, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: invokespecial 445	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:getType	(Ljava/lang/String;)I
    //   5: istore 4
    //   7: iload 4
    //   9: tableswitch	default:+27 -> 36, 1:+28->37, 2:+47->56, 3:+131->140
    //   37: aload_0
    //   38: aload_1
    //   39: invokevirtual 450	com/jingdong/common/utils/HttpGroup$HttpResponse:getJSONObject	()Lcom/jingdong/common/utils/JSONObjectProxy;
    //   42: putfield 452	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:jbTypes	Lorg/json/JSONObject;
    //   45: aload_0
    //   46: invokespecial 455	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:setInvoinceTypesView	()V
    //   49: aload_0
    //   50: invokespecial 457	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:getInvoincesContentGeneral	()V
    //   53: return
    //   54: astore_3
    //   55: return
    //   56: aload_0
    //   57: aload_1
    //   58: invokevirtual 450	com/jingdong/common/utils/HttpGroup$HttpResponse:getJSONObject	()Lcom/jingdong/common/utils/JSONObjectProxy;
    //   61: putfield 257	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:jbBooks	Lorg/json/JSONObject;
    //   64: aload_0
    //   65: getfield 257	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:jbBooks	Lorg/json/JSONObject;
    //   68: invokevirtual 166	org/json/JSONObject:toString	()Ljava/lang/String;
    //   71: ldc_w 459
    //   74: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   77: ifne +58 -> 135
    //   80: new 111	org/json/JSONObject
    //   83: dup
    //   84: invokespecial 112	org/json/JSONObject:<init>	()V
    //   87: astore 7
    //   89: aload 7
    //   91: ldc_w 298
    //   94: ldc_w 459
    //   97: invokevirtual 126	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   100: pop
    //   101: aload 7
    //   103: ldc_w 317
    //   106: ldc_w 461
    //   109: invokevirtual 126	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   112: pop
    //   113: aload_0
    //   114: getfield 257	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:jbBooks	Lorg/json/JSONObject;
    //   117: ldc_w 259
    //   120: invokevirtual 464	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   123: ldc_w 259
    //   126: invokevirtual 268	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   129: aload 7
    //   131: invokevirtual 333	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   134: pop
    //   135: aload_0
    //   136: invokespecial 467	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:setInvoinceBookView	()V
    //   139: return
    //   140: aload_0
    //   141: aload_1
    //   142: invokevirtual 450	com/jingdong/common/utils/HttpGroup$HttpResponse:getJSONObject	()Lcom/jingdong/common/utils/JSONObjectProxy;
    //   145: ldc_w 259
    //   148: invokevirtual 473	com/jingdong/common/utils/JSONObjectProxy:getJSONObjectOrNull	(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   151: putfield 306	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:jbGeneral	Lorg/json/JSONObject;
    //   154: aload_0
    //   155: aload_1
    //   156: invokevirtual 450	com/jingdong/common/utils/HttpGroup$HttpResponse:getJSONObject	()Lcom/jingdong/common/utils/JSONObjectProxy;
    //   159: ldc_w 475
    //   162: invokevirtual 473	com/jingdong/common/utils/JSONObjectProxy:getJSONObjectOrNull	(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   165: putfield 257	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:jbBooks	Lorg/json/JSONObject;
    //   168: aload_0
    //   169: getfield 306	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:jbGeneral	Lorg/json/JSONObject;
    //   172: ifnonnull +8 -> 180
    //   175: aload_0
    //   176: iconst_1
    //   177: putfield 76	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:onlyBook	Z
    //   180: aload_0
    //   181: getfield 257	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:jbBooks	Lorg/json/JSONObject;
    //   184: ifnonnull +8 -> 192
    //   187: aload_0
    //   188: iconst_1
    //   189: putfield 78	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:noBook	Z
    //   192: aload_0
    //   193: invokespecial 467	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:setInvoinceBookView	()V
    //   196: aload_0
    //   197: invokespecial 478	com/jingdong/app/mall/shopping/ReceiptInfoEditActivity:setInvoinceGeneralView	()V
    //   200: return
    //   201: astore 5
    //   203: goto -11 -> 192
    //   206: astore 6
    //   208: goto -73 -> 135
    //   211: astore 11
    //   213: goto -164 -> 49
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	216	0	this	ReceiptInfoEditActivity
    //   0	216	1	paramHttpResponse	HttpGroup.HttpResponse
    //   0	216	2	paramString	String
    //   54	1	3	localException1	Exception
    //   5	3	4	i	int
    //   201	1	5	localException2	Exception
    //   206	1	6	localException3	Exception
    //   87	43	7	localJSONObject	JSONObject
    //   211	1	11	localException4	Exception
    // Exception table:
    //   from	to	target	type
    //   0	7	54	java/lang/Exception
    //   49	53	54	java/lang/Exception
    //   135	139	54	java/lang/Exception
    //   192	200	54	java/lang/Exception
    //   140	180	201	java/lang/Exception
    //   180	192	201	java/lang/Exception
    //   56	135	206	java/lang/Exception
    //   37	49	211	java/lang/Exception
  }
  
  private void initComponent()
  {
    this.mReceiptType = ((TextView)findViewById(2131493569));
    this.mBook = ((TextView)findViewById(2131494393));
    this.mGeneral = ((TextView)findViewById(2131494394));
    this.mPersonel = ((RadioButton)findViewById(2131494389));
    this.mCompanyBtn = ((RadioButton)findViewById(2131494390));
    this.mBookFlag = ((TextView)findViewById(2131494392));
    this.mGeneralFlag = ((TextView)findViewById(2131494387));
    this.mBook2 = ((ImageButton)findViewById(2131494395));
    this.mGeneral2 = ((ImageButton)findViewById(2131494396));
    this.mConfirm = ((Button)findViewById(2131494397));
    this.mCompanyEdt = ((EditText)findViewById(2131494391));
    this.mCompanyEdt.setVisibility(8);
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText(2131165957);
    if ((LastOrderInfo.mInvoiceInfo != null) && (LastOrderInfo.mInvoiceInfo.toString() != "null") && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo() != null) && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString() != "null") && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString().contains("InvoiceTitle"))) {
      try
      {
        if (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().getString("InvoiceTitle").contains("个人"))
        {
          this.mPersonel.setChecked(true);
          return;
        }
        this.mCompanyBtn.setChecked(true);
        this.mCompanyEdt.setVisibility(0);
        if ((LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString().contains("CompanyName")) && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().getString("CompanyName") != null) && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().getString("CompanyName") != "") && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().getString("CompanyName") != " ")) {
          this.mCompanyEdt.setText(LastOrderInfo.mInvoiceInfo.getInvoiceInfo().getString("CompanyName"));
        }
        this.bCompany = true;
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
    }
    this.mPersonel.setChecked(true);
    this.bCompany = false;
  }
  
  private void setInvoinceBookView()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (ReceiptInfoEditActivity.this.noBook)
        {
          ReceiptInfoEditActivity.this.mBook.setVisibility(8);
          ReceiptInfoEditActivity.this.mBook2.setVisibility(8);
          ReceiptInfoEditActivity.this.mBookFlag.setVisibility(8);
          return;
        }
        for (;;)
        {
          int i;
          try
          {
            if (ReceiptInfoEditActivity.this.jbBooks == null) {
              break;
            }
            JSONArray localJSONArray = ReceiptInfoEditActivity.this.jbBooks.getJSONArray("InvoiceContents");
            if ((LastOrderInfo.mInvoiceInfo != null) && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo() != null) && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString().contains("IdInvoiceContentTypeBook")))
            {
              i = 0;
              if (i >= localJSONArray.length()) {
                break;
              }
              if (localJSONArray.getJSONObject(i).getInt("Id") != LastOrderInfo.mInvoiceInfo.getInvoiceInfo().getInt("IdInvoiceContentTypeBook")) {
                break label196;
              }
              ReceiptInfoEditActivity.this.mBook.setText(localJSONArray.getJSONObject(i).getString("Name"));
              ReceiptInfoEditActivity.this.nBookSelected = i;
              return;
            }
            ReceiptInfoEditActivity.this.mBook.setText(localJSONArray.getJSONObject(0).getString("Name"));
            ReceiptInfoEditActivity.this.nBookSelected = 0;
            return;
          }
          catch (JSONException localJSONException)
          {
            return;
          }
          label196:
          i++;
        }
      }
    });
  }
  
  private void setInvoinceGeneralView()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (ReceiptInfoEditActivity.this.onlyBook)
        {
          ReceiptInfoEditActivity.this.mGeneral.setVisibility(8);
          ReceiptInfoEditActivity.this.mGeneral2.setVisibility(8);
          ReceiptInfoEditActivity.this.mGeneralFlag.setVisibility(8);
          return;
        }
        for (;;)
        {
          int i;
          try
          {
            if (ReceiptInfoEditActivity.this.jbGeneral == null) {
              break;
            }
            JSONArray localJSONArray = ReceiptInfoEditActivity.this.jbGeneral.getJSONArray("InvoiceContents");
            if ((LastOrderInfo.mInvoiceInfo != null) && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo() != null) && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString().contains("IdInvoiceContentsType")))
            {
              i = 0;
              if (i >= localJSONArray.length()) {
                break;
              }
              if (localJSONArray.getJSONObject(i).getInt("Id") != LastOrderInfo.mInvoiceInfo.getInvoiceInfo().getInt("IdInvoiceContentsType")) {
                break label196;
              }
              ReceiptInfoEditActivity.this.mGeneral.setText(localJSONArray.getJSONObject(i).getString("Name"));
              ReceiptInfoEditActivity.this.nGeneralSelected = i;
              return;
            }
            ReceiptInfoEditActivity.this.mGeneral.setText(localJSONArray.getJSONObject(0).getString("Name"));
            ReceiptInfoEditActivity.this.nGeneralSelected = 0;
            return;
          }
          catch (JSONException localJSONException)
          {
            return;
          }
          label196:
          i++;
        }
      }
    });
  }
  
  private void setInvoinceTypesView()
  {
    post(new Runnable()
    {
      public void run()
      {
        for (;;)
        {
          int i;
          try
          {
            if (ReceiptInfoEditActivity.this.jbTypes == null) {
              break;
            }
            JSONArray localJSONArray = ReceiptInfoEditActivity.this.jbTypes.getJSONObject("invoiceTypesInfo").getJSONArray("InvoiceTypes");
            i = 0;
            if (i >= localJSONArray.length()) {
              return;
            }
            if (localJSONArray.getJSONObject(i).getInt("Id") == 1)
            {
              ReceiptInfoEditActivity.this.mReceiptType.setText(localJSONArray.getJSONObject(i).getString("Name"));
              return;
            }
          }
          catch (JSONException localJSONException)
          {
            return;
          }
          i++;
        }
      }
    });
  }
  
  private void setNewBook(int paramInt)
  {
    for (;;)
    {
      int i;
      try
      {
        if (this.items[paramInt].compareTo(this.jbBooks.getJSONArray("InvoiceContents").getJSONObject(paramInt).getString("Name")) != 0) {
          break label146;
        }
        this.nBookSelectedID = this.jbBooks.getJSONArray("InvoiceContents").getJSONObject(paramInt).getInt("Id");
        this.mBook.setText(this.items[paramInt]);
        return;
      }
      catch (JSONException localJSONException)
      {
        return;
      }
      if (i < this.items.length) {
        if (this.items[paramInt].compareTo(this.jbBooks.getJSONArray("InvoiceContents").getJSONObject(i).getString("Name")) == 0)
        {
          this.nBookSelectedID = this.jbBooks.getJSONArray("InvoiceContents").getJSONObject(i).getInt("Id");
        }
        else
        {
          i++;
          continue;
          label146:
          i = 0;
        }
      }
    }
  }
  
  private void setNewGeneral(int paramInt)
  {
    for (;;)
    {
      int i;
      try
      {
        if (this.items[paramInt].compareTo(this.jbGeneral.getJSONArray("InvoiceContents").getJSONObject(paramInt).getString("Name")) != 0) {
          break label146;
        }
        this.nGeneralSelectedID = this.jbGeneral.getJSONArray("InvoiceContents").getJSONObject(paramInt).getInt("Id");
        this.mGeneral.setText(this.items[paramInt]);
        return;
      }
      catch (JSONException localJSONException)
      {
        return;
      }
      if (i < this.items.length) {
        if (this.items[paramInt].compareTo(this.jbGeneral.getJSONArray("InvoiceContents").getJSONObject(i).getString("Name")) == 0)
        {
          this.nGeneralSelectedID = this.jbGeneral.getJSONArray("InvoiceContents").getJSONObject(i).getInt("Id");
        }
        else
        {
          i++;
          continue;
          label146:
          i = 0;
        }
      }
    }
  }
  
  private void setUpConnAndGetData(String paramString1, JSONObject paramJSONObject, final String paramString2)
  {
    getHttpGroupaAsynPool().add(paramString1, paramJSONObject, new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        ReceiptInfoEditActivity.this.handleDatas(paramAnonymousHttpResponse, paramString2);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903279);
    this.isNoRegisterOrder = getIntent().getBooleanExtra("isNoRegisterOrder", false);
    this.onlyBook = false;
    initComponent();
    if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy)) {
      compositeOrderStrByAddEasyBuy();
    }
    for (;;)
    {
      if ((LastOrderInfo.mInvoiceInfo != null) && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo() != null) && (LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString().contains("IdInvoiceContentsType"))) {}
      try
      {
        this.nGeneralSelectedID = LastOrderInfo.mInvoiceInfo.getInvoiceInfo().getInt("IdInvoiceContentsType");
        if ((LastOrderInfo.mInvoiceInfo == null) || (LastOrderInfo.mInvoiceInfo.getInvoiceInfo() == null) || (!LastOrderInfo.mInvoiceInfo.getInvoiceInfo().toString().contains("IdInvoiceContentTypeBook"))) {}
      }
      catch (JSONException localJSONException2)
      {
        try
        {
          this.nBookSelectedID = LastOrderInfo.mInvoiceInfo.getInvoiceInfo().getInt("IdInvoiceContentTypeBook");
          getInvoincesTypes();
          handleClickEvent();
          return;
          compositeOrderStr();
          getCartItemInfo();
          continue;
          localJSONException2 = localJSONException2;
          localJSONException2.printStackTrace();
        }
        catch (JSONException localJSONException1)
        {
          for (;;)
          {
            localJSONException1.printStackTrace();
          }
        }
      }
    }
  }
  
  public void updatCcomositeBody()
  {
    this.jbBody = new JSONObject();
    try
    {
      if (this.jbOrderStr.getInt("IdPaymentType") == 4) {
        this.jbOrderStr.put("IdPaymentType", 1);
      }
      this.jbBody.put("OrderStr", this.jbOrderStr);
      this.jbBody.put("CartStr", this.jbCartStr);
      if (this.isNoRegisterOrder) {
        this.jbBody.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  public void updatCcomositeBodyByAddEasyBuy()
  {
    this.jbBody = new JSONObject();
    try
    {
      if (this.jbOrderStr.getInt("IdPaymentType") == 4) {
        this.jbOrderStr.put("IdPaymentType", 1);
      }
      this.jbBody.put("OrderStr", this.jbOrderStr);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  public void updateInvoinceInfo()
  {
    Constants.mModifiedInvoiceInfo = new InvoiceInfo();
    Constants.mModifiedInvoiceInfo.jbInvoiceInfo = new JSONObject();
    try
    {
      JSONObject localJSONObject = new JSONObject();
      if ((Constants.bAddEasyBuy) || (Constants.bModifyEasyBuy))
      {
        localJSONObject.put("IdInvoiceType", 1);
        localJSONObject.put("IdInvoiceContentTypeBook", this.nBookSelectedID);
        localJSONObject.put("IdInvoiceContentsType", this.nGeneralSelectedID);
        localJSONObject.put("IdInvoiceContentsType", this.nGeneralSelectedID);
        localJSONObject.put("IdInvoiceContentTypeBook", this.nBookSelectedID);
        if (this.bCompany)
        {
          localJSONObject.put("InvoiceTitle", "单位");
          localJSONObject.put("CompanyName", this.sCompanyName);
          localJSONObject.put("IdInvoiceHeaderType", 5);
        }
      }
      for (;;)
      {
        Constants.mModifiedInvoiceInfo.setInvoiceInfo(localJSONObject);
        return;
        localJSONObject.put("InvoiceTitle", "个人");
        localJSONObject.put("IdInvoiceHeaderType", 4);
        continue;
        localJSONObject.put("IdInvoiceType", 1);
        if (this.onlyBook) {
          localJSONObject.put("IdInvoiceContentTypeBook", this.nBookSelectedID);
        }
        for (;;)
        {
          if (!this.bCompany) {
            break label276;
          }
          localJSONObject.put("InvoiceTitle", "单位");
          localJSONObject.put("CompanyName", this.sCompanyName);
          localJSONObject.put("IdInvoiceHeaderType", 5);
          break;
          if (this.noBook)
          {
            localJSONObject.put("IdInvoiceContentsType", this.nGeneralSelectedID);
          }
          else
          {
            localJSONObject.put("IdInvoiceContentsType", this.nGeneralSelectedID);
            localJSONObject.put("IdInvoiceContentTypeBook", this.nBookSelectedID);
          }
        }
        label276:
        localJSONObject.put("InvoiceTitle", "个人");
        localJSONObject.put("IdInvoiceHeaderType", 4);
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void updatePaymentInfo() {}
  
  public void updateUserInfo() {}
  
  public void updateYouhuiInfo() {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.ReceiptInfoEditActivity
 * JD-Core Version:    0.7.0.1
 */