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
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.InvoiceBaseInfo;
import com.jingdong.common.entity.NewCurrentOrder;
import com.jingdong.common.entity.OrderInvoiceInfo;
import com.jingdong.common.entity.cart.CartResponseInfo;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ReceiptInfoEditNewActivity
  extends MyActivity
  implements UpdateOrderInfoInterface
{
  public static final int INVOINCE_TYPES_CAMPANY = 5;
  public static final int INVOINCE_TYPES_PERSONAL = 4;
  private String TAG = ReceiptInfoEditNewActivity.class.getSimpleName();
  boolean bCompany = false;
  boolean bPersonel = true;
  private LinearLayout bookInvoinceLayout;
  private LinearLayout generalInvoinceLayout;
  private boolean hasInvoiceBook = false;
  private boolean hasInvoiceGeneral = false;
  private ArrayList<InvoiceBaseInfo> invoiceContents;
  private ArrayList<InvoiceBaseInfo> invoiceContentsBook;
  private ArrayList<InvoiceBaseInfo> invoiceHeaderTypeInfo;
  private OrderInvoiceInfo invoiceInfo;
  private ArrayList<InvoiceBaseInfo> invoiceTypesInfo;
  private boolean isNoRegisterOrder = false;
  private String[] itemsBook = null;
  private String[] itemsGeneral = null;
  private JSONObject jbBody;
  private JSONObject jbCartStr;
  private JSONObject jbOrderStr;
  private LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
  private TextView mBook;
  private ImageButton mBook2;
  private EditText mCompanyEdt;
  private Button mConfirm;
  private TextView mGeneral;
  private ImageButton mGeneral2;
  private NewCurrentOrder mNewCurrentOrder;
  private TextView mReceiptType;
  private TextView mTitle;
  int nBookSelected = 0;
  int nBookSelectedID = 4;
  int nGeneralSelected = 0;
  int nGeneralSelectedID = 1;
  private String sCompanyName;
  
  private void addRadioGroup()
  {
    this.layoutParams.setMargins(0, 0, 100, 0);
    RadioGroup localRadioGroup = (RadioGroup)findViewById(2131494398);
    localRadioGroup.removeAllViews();
    int j;
    if (this.invoiceHeaderTypeInfo != null)
    {
      int i = this.invoiceHeaderTypeInfo.size();
      j = 0;
      if (j < i) {}
    }
    else
    {
      return;
    }
    InvoiceBaseInfo localInvoiceBaseInfo = (InvoiceBaseInfo)this.invoiceHeaderTypeInfo.get(j);
    String str = localInvoiceBaseInfo.getName();
    RadioButton localRadioButton = new RadioButton(this);
    localRadioButton.setLayoutParams(this.layoutParams);
    localRadioButton.setText(str);
    localRadioButton.setOnCheckedChangeListener(new RadioButtonOnClickListener(localInvoiceBaseInfo.getId()));
    localRadioGroup.addView(localRadioButton);
    if (this.mNewCurrentOrder != null)
    {
      if (TextUtils.isEmpty(this.mNewCurrentOrder.getInvoiceTitle())) {
        break label217;
      }
      if (TextUtils.equals(this.mNewCurrentOrder.getInvoiceTitle(), str))
      {
        localRadioButton.setChecked(true);
        if (TextUtils.equals(str, "单位"))
        {
          this.mCompanyEdt.setVisibility(0);
          if (!TextUtils.isEmpty(this.mNewCurrentOrder.getCompanyName())) {
            this.mCompanyEdt.setText(this.mNewCurrentOrder.getCompanyName());
          }
        }
      }
    }
    label217:
    for (this.bCompany = true;; this.bCompany = false)
    {
      j++;
      break;
    }
  }
  
  private void createBookAlertDiglog()
  {
    final String str = this.mBook.getText().toString();
    for (;;)
    {
      try
      {
        if (this.invoiceContentsBook != null)
        {
          int i = this.invoiceContentsBook.size();
          this.itemsBook = new String[i];
          j = 0;
          if (j < i) {
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        int j;
        AlertDialog.Builder localBuilder;
        continue;
      }
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setTitle("图书类型");
      if (this.nBookSelected == -1) {
        this.nBookSelected = 4;
      }
      localBuilder.setSingleChoiceItems(this.itemsBook, this.nBookSelected, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (str.compareTo(ReceiptInfoEditNewActivity.this.itemsBook[paramAnonymousInt]) == 0)
          {
            ReceiptInfoEditNewActivity.this.mBook.setText(ReceiptInfoEditNewActivity.this.itemsBook[paramAnonymousInt]);
            ReceiptInfoEditNewActivity.this.nBookSelected = paramAnonymousInt;
            paramAnonymousDialogInterface.dismiss();
            return;
          }
          ReceiptInfoEditNewActivity.this.nBookSelected = paramAnonymousInt;
          ReceiptInfoEditNewActivity.this.setNewBook(paramAnonymousInt);
          paramAnonymousDialogInterface.dismiss();
        }
      }).show();
      return;
      this.itemsBook[j] = ((InvoiceBaseInfo)this.invoiceContentsBook.get(j)).getName();
      j++;
    }
  }
  
  private void createGeneralAlertDiglog()
  {
    final String str = this.mGeneral.getText().toString();
    for (;;)
    {
      try
      {
        if (this.invoiceContents != null)
        {
          int i = this.invoiceContents.size();
          this.itemsGeneral = new String[i];
          j = 0;
          if (j < i) {
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        int j;
        AlertDialog.Builder localBuilder;
        continue;
      }
      localBuilder = new AlertDialog.Builder(this);
      localBuilder.setTitle("非图书类型");
      localBuilder.setSingleChoiceItems(this.itemsGeneral, this.nGeneralSelected, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (str.compareTo(ReceiptInfoEditNewActivity.this.itemsGeneral[paramAnonymousInt]) == 0)
          {
            ReceiptInfoEditNewActivity.this.mGeneral.setText(ReceiptInfoEditNewActivity.this.itemsGeneral[paramAnonymousInt]);
            ReceiptInfoEditNewActivity.this.nGeneralSelected = paramAnonymousInt;
            paramAnonymousDialogInterface.dismiss();
            return;
          }
          ReceiptInfoEditNewActivity.this.nGeneralSelected = paramAnonymousInt;
          ReceiptInfoEditNewActivity.this.setNewGeneral(paramAnonymousInt);
          paramAnonymousDialogInterface.dismiss();
        }
      }).show();
      return;
      this.itemsGeneral[j] = ((InvoiceBaseInfo)this.invoiceContents.get(j)).getName();
      j++;
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
  
  private void handleClickEvent()
  {
    this.mBook.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ReceiptInfoEditNewActivity.this.mBook2.performClick();
      }
    });
    this.mBook2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ReceiptInfoEditNewActivity.this.createBookAlertDiglog();
      }
    });
    this.mGeneral.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ReceiptInfoEditNewActivity.this.mGeneral2.performClick();
      }
    });
    this.mGeneral2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ReceiptInfoEditNewActivity.this.createGeneralAlertDiglog();
      }
    });
    this.mConfirm.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (ReceiptInfoEditNewActivity.this.bCompany)
        {
          ReceiptInfoEditNewActivity.this.sCompanyName = ReceiptInfoEditNewActivity.this.mCompanyEdt.getText().toString();
          if ((TextUtils.isEmpty(ReceiptInfoEditNewActivity.this.sCompanyName)) || (ReceiptInfoEditNewActivity.this.sCompanyName.trim().length() <= 0))
          {
            Toast.makeText(ReceiptInfoEditNewActivity.this, "请输入单位名称", 0).show();
            return;
          }
        }
        ReceiptInfoEditNewActivity.this.updateInvoinceInfo();
        Intent localIntent = new Intent();
        localIntent.putExtra("ExtraNewCurrentOrder", ReceiptInfoEditNewActivity.this.mNewCurrentOrder);
        ReceiptInfoEditNewActivity.this.setResult(4, localIntent);
        ReceiptInfoEditNewActivity.this.finish();
      }
    });
  }
  
  private void initComponent()
  {
    this.bookInvoinceLayout = ((LinearLayout)findViewById(2131494399));
    this.generalInvoinceLayout = ((LinearLayout)findViewById(2131494400));
    this.mReceiptType = ((TextView)findViewById(2131493569));
    this.mBook = ((TextView)findViewById(2131494393));
    this.mGeneral = ((TextView)findViewById(2131494394));
    this.mBook2 = ((ImageButton)findViewById(2131494395));
    this.mGeneral2 = ((ImageButton)findViewById(2131494396));
    this.mConfirm = ((Button)findViewById(2131494397));
    this.mCompanyEdt = ((EditText)findViewById(2131494391));
    this.mCompanyEdt.setVisibility(8);
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText(2131165957);
  }
  
  private void queryInvoinceAllData()
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
        this.jbBody.put("pin", LoginUser.getLoginUserInfo().getString("pin"));
      }
    }
    catch (JSONException localJSONException)
    {
      label94:
      break label94;
    }
    getHttpGroupaAsynPool().add("invoiceGeneral", this.jbBody, new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject().getJSONObjectOrNull("invoiceInfo");
        ReceiptInfoEditNewActivity.this.invoiceInfo = new OrderInvoiceInfo(localJSONObjectProxy, 1);
        if (ReceiptInfoEditNewActivity.this.invoiceInfo != null)
        {
          ReceiptInfoEditNewActivity.this.invoiceContents = ReceiptInfoEditNewActivity.this.invoiceInfo.getInvoiceContents();
          ReceiptInfoEditNewActivity.this.invoiceHeaderTypeInfo = ReceiptInfoEditNewActivity.this.invoiceInfo.getInvoiceHeaderTypeInfo();
          ReceiptInfoEditNewActivity.this.invoiceContentsBook = ReceiptInfoEditNewActivity.this.invoiceInfo.getInvoiceContentsBook();
          ReceiptInfoEditNewActivity.this.invoiceTypesInfo = ReceiptInfoEditNewActivity.this.invoiceInfo.getInvoiceTypesInfo();
          if ((ReceiptInfoEditNewActivity.this.invoiceContents != null) && (ReceiptInfoEditNewActivity.this.invoiceContents.size() > 0)) {
            ReceiptInfoEditNewActivity.this.hasInvoiceGeneral = true;
          }
          if ((ReceiptInfoEditNewActivity.this.invoiceContentsBook != null) && (ReceiptInfoEditNewActivity.this.invoiceContentsBook.size() > 0)) {
            ReceiptInfoEditNewActivity.this.hasInvoiceBook = true;
          }
          ReceiptInfoEditNewActivity.this.post(new Runnable()
          {
            public void run()
            {
              ReceiptInfoEditNewActivity.this.addRadioGroup();
            }
          });
        }
        ReceiptInfoEditNewActivity.this.showInvoinceTypesView();
        ReceiptInfoEditNewActivity.this.showInvoinceBookView();
        ReceiptInfoEditNewActivity.this.showInvoinceGeneralView();
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
  }
  
  private void setNewBook(int paramInt)
  {
    if ((this.invoiceContentsBook == null) || (paramInt >= this.invoiceContentsBook.size())) {
      return;
    }
    for (;;)
    {
      int i;
      try
      {
        InvoiceBaseInfo localInvoiceBaseInfo1 = (InvoiceBaseInfo)this.invoiceContentsBook.get(paramInt);
        if (this.itemsBook[paramInt].compareTo(localInvoiceBaseInfo1.getName()) != 0) {
          break label140;
        }
        this.nBookSelectedID = localInvoiceBaseInfo1.getId();
        this.mBook.setText(this.itemsBook[paramInt]);
        return;
      }
      catch (Exception localException)
      {
        InvoiceBaseInfo localInvoiceBaseInfo2;
        return;
      }
      if (i < this.itemsBook.length)
      {
        localInvoiceBaseInfo2 = (InvoiceBaseInfo)this.invoiceContentsBook.get(i);
        if (this.itemsBook[paramInt].compareTo(localInvoiceBaseInfo2.getName()) == 0)
        {
          this.nBookSelectedID = ((InvoiceBaseInfo)this.invoiceContentsBook.get(i)).getId();
        }
        else
        {
          i++;
          continue;
          label140:
          i = 0;
        }
      }
    }
  }
  
  private void setNewGeneral(int paramInt)
  {
    if ((this.invoiceContents == null) || (paramInt >= this.invoiceContents.size())) {
      return;
    }
    for (;;)
    {
      int i;
      try
      {
        InvoiceBaseInfo localInvoiceBaseInfo1 = (InvoiceBaseInfo)this.invoiceContents.get(paramInt);
        if (this.itemsGeneral[paramInt].compareTo(localInvoiceBaseInfo1.getName()) != 0) {
          break label130;
        }
        this.nGeneralSelectedID = localInvoiceBaseInfo1.getId();
        this.mGeneral.setText(this.itemsGeneral[paramInt]);
        return;
      }
      catch (Exception localException)
      {
        InvoiceBaseInfo localInvoiceBaseInfo2;
        return;
      }
      if (i < this.itemsGeneral.length)
      {
        localInvoiceBaseInfo2 = (InvoiceBaseInfo)this.invoiceContents.get(i);
        if (this.itemsGeneral[paramInt].compareTo(localInvoiceBaseInfo2.getName()) == 0)
        {
          this.nGeneralSelectedID = localInvoiceBaseInfo2.getId();
        }
        else
        {
          i++;
          continue;
          label130:
          i = 0;
        }
      }
    }
  }
  
  private void showCompanyTextView(final int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        ReceiptInfoEditNewActivity.this.mCompanyEdt.setVisibility(paramInt);
      }
    });
  }
  
  private void showInvoinceBookView()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (!ReceiptInfoEditNewActivity.this.hasInvoiceBook) {
          ReceiptInfoEditNewActivity.this.bookInvoinceLayout.setVisibility(8);
        }
        for (;;)
        {
          return;
          ReceiptInfoEditNewActivity.this.bookInvoinceLayout.setVisibility(0);
          if ((ReceiptInfoEditNewActivity.this.mNewCurrentOrder == null) || (ReceiptInfoEditNewActivity.this.mNewCurrentOrder.getIdInvoiceContentTypeBook() == null)) {
            break;
          }
          int i = ReceiptInfoEditNewActivity.this.invoiceContentsBook.size();
          for (int j = 0; j < i; j++)
          {
            InvoiceBaseInfo localInvoiceBaseInfo = (InvoiceBaseInfo)ReceiptInfoEditNewActivity.this.invoiceContentsBook.get(j);
            if (localInvoiceBaseInfo.getId() == ReceiptInfoEditNewActivity.this.mNewCurrentOrder.getIdInvoiceContentTypeBook().intValue())
            {
              ReceiptInfoEditNewActivity.this.mBook.setText(localInvoiceBaseInfo.getName());
              ReceiptInfoEditNewActivity.this.nBookSelected = j;
              return;
            }
          }
        }
        ReceiptInfoEditNewActivity.this.mBook.setText(((InvoiceBaseInfo)ReceiptInfoEditNewActivity.this.invoiceContentsBook.get(0)).getName());
        ReceiptInfoEditNewActivity.this.nBookSelected = 0;
      }
    });
  }
  
  private void showInvoinceGeneralView()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (!ReceiptInfoEditNewActivity.this.hasInvoiceGeneral) {
          ReceiptInfoEditNewActivity.this.generalInvoinceLayout.setVisibility(8);
        }
        for (;;)
        {
          return;
          ReceiptInfoEditNewActivity.this.generalInvoinceLayout.setVisibility(0);
          if ((ReceiptInfoEditNewActivity.this.mNewCurrentOrder == null) || (ReceiptInfoEditNewActivity.this.mNewCurrentOrder.getIdInvoiceContentsType() == null)) {
            break;
          }
          int i = ReceiptInfoEditNewActivity.this.invoiceContents.size();
          for (int j = 0; j < i; j++)
          {
            InvoiceBaseInfo localInvoiceBaseInfo = (InvoiceBaseInfo)ReceiptInfoEditNewActivity.this.invoiceContents.get(j);
            if (localInvoiceBaseInfo.getId() == ReceiptInfoEditNewActivity.this.mNewCurrentOrder.getIdInvoiceContentsType().intValue())
            {
              ReceiptInfoEditNewActivity.this.mGeneral.setText(localInvoiceBaseInfo.getName());
              ReceiptInfoEditNewActivity.this.nGeneralSelected = j;
              return;
            }
          }
        }
        ReceiptInfoEditNewActivity.this.mGeneral.setText(((InvoiceBaseInfo)ReceiptInfoEditNewActivity.this.invoiceContents.get(0)).getName());
        ReceiptInfoEditNewActivity.this.nGeneralSelected = 0;
      }
    });
  }
  
  private void showInvoinceTypesView()
  {
    post(new Runnable()
    {
      public void run()
      {
        int i;
        int j;
        do
        {
          try
          {
            if (ReceiptInfoEditNewActivity.this.invoiceTypesInfo == null) {
              break;
            }
            i = ReceiptInfoEditNewActivity.this.invoiceTypesInfo.size();
            if (i <= 0) {
              break;
            }
            j = 0;
          }
          catch (Exception localException)
          {
            return;
          }
          if (((InvoiceBaseInfo)ReceiptInfoEditNewActivity.this.invoiceTypesInfo.get(j)).getId() == 1)
          {
            ReceiptInfoEditNewActivity.this.mReceiptType.setText(((InvoiceBaseInfo)ReceiptInfoEditNewActivity.this.invoiceTypesInfo.get(j)).getName());
            return;
          }
          j++;
        } while (j < i);
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903280);
    this.isNoRegisterOrder = getIntent().getBooleanExtra("isNoRegisterOrder", false);
    this.mNewCurrentOrder = ((NewCurrentOrder)getIntent().getSerializableExtra("ExtraNewCurrentOrder"));
    initComponent();
    this.jbOrderStr = this.mNewCurrentOrder.toOrderStr();
    getCartItemInfo();
    if ((this.mNewCurrentOrder != null) && (this.mNewCurrentOrder.getIdInvoiceContentsType() != null)) {
      this.nGeneralSelectedID = this.mNewCurrentOrder.getIdInvoiceContentsType().intValue();
    }
    if ((this.mNewCurrentOrder != null) && (this.mNewCurrentOrder.getIdInvoiceContentTypeBook() != null)) {
      this.nBookSelectedID = this.mNewCurrentOrder.getIdInvoiceContentTypeBook().intValue();
    }
    queryInvoinceAllData();
    handleClickEvent();
  }
  
  public void updateInvoinceInfo()
  {
    this.mNewCurrentOrder.setIdInvoiceType(Integer.valueOf(1));
    if (this.hasInvoiceBook) {
      this.mNewCurrentOrder.setIdInvoiceContentTypeBook(Integer.valueOf(this.nBookSelectedID));
    }
    if (this.hasInvoiceGeneral) {
      this.mNewCurrentOrder.setIdInvoiceContentsType(Integer.valueOf(this.nGeneralSelectedID));
    }
    if (this.bCompany)
    {
      this.mNewCurrentOrder.setInvoiceTitle("单位");
      this.mNewCurrentOrder.setCompanyName(this.sCompanyName);
      this.mNewCurrentOrder.setIdInvoiceHeaderType(Integer.valueOf(5));
      return;
    }
    this.mNewCurrentOrder.setInvoiceTitle("个人");
    this.mNewCurrentOrder.setIdInvoiceHeaderType(Integer.valueOf(4));
  }
  
  public void updatePaymentInfo() {}
  
  public void updateUserInfo() {}
  
  public void updateYouhuiInfo() {}
  
  private class RadioButtonOnClickListener
    implements CompoundButton.OnCheckedChangeListener
  {
    private int id;
    
    public RadioButtonOnClickListener(int paramInt)
    {
      this.id = paramInt;
    }
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      switch (this.id)
      {
      default: 
        return;
      case 4: 
        if (paramBoolean)
        {
          ReceiptInfoEditNewActivity.this.showCompanyTextView(8);
          ReceiptInfoEditNewActivity.this.bPersonel = true;
          return;
        }
        ReceiptInfoEditNewActivity.this.bPersonel = true;
        return;
      }
      if (paramBoolean)
      {
        ReceiptInfoEditNewActivity.this.showCompanyTextView(0);
        ReceiptInfoEditNewActivity.this.bCompany = true;
        return;
      }
      ReceiptInfoEditNewActivity.this.bCompany = false;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.ReceiptInfoEditNewActivity
 * JD-Core Version:    0.7.0.1
 */