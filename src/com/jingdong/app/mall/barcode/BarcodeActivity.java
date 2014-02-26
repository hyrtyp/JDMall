package com.jingdong.app.mall.barcode;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.broadcastReceiver.InterfaceBroadcastReceiver.Command;
import com.jingdong.app.mall.personel.PersonelActivity;
import com.jingdong.app.mall.shopping.ShoppingController;
import com.jingdong.app.mall.utils.BarcodeUtil;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.entity.BarcodeRecord;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DBHelperUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.lib.zxing.client.android.CaptureActivity;
import java.util.ArrayList;
import java.util.List;

public class BarcodeActivity
  extends MyActivity
{
  private static final int INPUT = 1;
  public static final int SCAN = 1235;
  private static final String TAG = "BarcodeActivity";
  private Button clearButton;
  private DBHelperUtil dbHelper;
  private MySimpleAdapter historyAdapter;
  private TextView historyHeader;
  private View historyHeaderNderline;
  private ListView historyListView;
  private final ArrayList<BarcodeRecord> historyRecordList = new ArrayList();
  private Button inputButton;
  private String[] noBarcodeModels;
  private Button scanButton;
  private View welcomeView;
  
  private void checkEmptyForCutUI()
  {
    if (this.historyRecordList.size() > 0)
    {
      this.clearButton.setVisibility(0);
      this.welcomeView.setVisibility(8);
      this.historyHeader.setVisibility(0);
      this.historyHeaderNderline.setVisibility(0);
      this.historyListView.setVisibility(0);
      return;
    }
    this.clearButton.setVisibility(8);
    this.welcomeView.setVisibility(0);
    this.historyHeader.setVisibility(8);
    this.historyHeaderNderline.setVisibility(8);
    this.historyListView.setVisibility(8);
  }
  
  private void clear()
  {
    this.dbHelper.delAllBarcodeRecord();
    this.historyRecordList.clear();
    this.historyAdapter.notifyDataSetChanged();
  }
  
  private void findView()
  {
    this.clearButton = ((Button)findViewById(2131494684));
    this.historyListView = ((ListView)findViewById(2131492894));
    this.welcomeView = findViewById(2131493167);
    this.historyHeader = ((TextView)findViewById(2131493169));
    this.historyHeaderNderline = findViewById(2131493170);
    this.inputButton = ((Button)findViewById(2131493171));
    this.scanButton = ((Button)findViewById(2131493172));
  }
  
  private void init()
  {
    String str = getStringFromPreference("noBarcodeModels", null);
    if (str != null) {
      this.noBarcodeModels = str.split(",");
    }
    this.dbHelper = new DBHelperUtil(this);
    this.historyAdapter = new MySimpleAdapter(this, this.historyRecordList, 2130903084, new String[] { "content", "productName" }, new int[] { 2131493173, 2131493174 })
    {
      public void notifyDataSetChanged()
      {
        BarcodeActivity.this.checkEmptyForCutUI();
        super.notifyDataSetChanged();
      }
    };
    this.historyListView.setAdapter(this.historyAdapter);
    this.historyListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        BarcodeRecord localBarcodeRecord = (BarcodeRecord)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        BarcodeActivity.this.queryServer(localBarcodeRecord);
      }
    });
    this.historyListView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
    {
      public boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        final BarcodeRecord localBarcodeRecord = (BarcodeRecord)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(BarcodeActivity.this);
        localBuilder.setTitle(BarcodeActivity.this.getString(2131165608));
        String[] arrayOfString = new String[1];
        arrayOfString[0] = BarcodeActivity.this.getString(2131165607);
        localBuilder.setItems(arrayOfString, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            if (paramAnonymous2Int == 0)
            {
              BarcodeActivity.this.dbHelper.delBarcodeRecord(localBarcodeRecord);
              BarcodeActivity.this.historyRecordList.remove(localBarcodeRecord);
              BarcodeActivity.this.historyAdapter.notifyDataSetChanged();
            }
            paramAnonymous2DialogInterface.dismiss();
          }
        }).show();
        return true;
      }
    });
    recordHistory(this.dbHelper.getBarcodeRecordList());
    if (isNoScan()) {
      this.scanButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          BarcodeActivity.this.noScanAlertDialog();
        }
      });
    }
    for (;;)
    {
      this.inputButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          BarcodeActivity.this.input();
        }
      });
      return;
      this.scanButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          BarcodeUtil.scanBarcode(BarcodeActivity.this);
        }
      });
    }
  }
  
  private void input()
  {
    startActivityForResult(new Intent(this, BarcodeInputActivity.class), 1);
  }
  
  private boolean isNoScan()
  {
    if (!Configuration.getBooleanProperty("barCodeScan", Boolean.valueOf(true)).booleanValue()) {
      return true;
    }
    String str = Build.MODEL;
    if ((this.noBarcodeModels != null) && (str != null)) {}
    for (int i = 0;; i++)
    {
      if (i >= this.noBarcodeModels.length) {
        return false;
      }
      if (str.equals(this.noBarcodeModels[i])) {
        break;
      }
    }
  }
  
  private void login(final BarcodeRecord paramBarcodeRecord)
  {
    post(new Runnable()
    {
      public void run()
      {
        Runnable local1 = new Runnable()
        {
          public void run()
          {
            BarcodeActivity.this.post(new Runnable()
            {
              public void run()
              {
                BarcodeActivity.this.queryServer(this.val$barcodeRecord);
              }
            });
          }
        };
        LoginUser.getInstance().executeLoginRunnable(BarcodeActivity.this, local1, BarcodeActivity.this.getString(2131165642), false);
      }
    });
  }
  
  private void noScanAlertDialog()
  {
    final AlertDialog localAlertDialog = new AlertDialog.Builder(this).create();
    localAlertDialog.setMessage(getText(2131165631));
    localAlertDialog.setButton(getText(2131165517), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        localAlertDialog.dismiss();
      }
    });
    localAlertDialog.show();
  }
  
  private void processBarcodeInputed(Intent paramIntent)
  {
    BarcodeRecord localBarcodeRecord = new BarcodeRecord();
    localBarcodeRecord.setContent(paramIntent.getStringExtra("SCAN_RESULT"));
    localBarcodeRecord.setFormat(paramIntent.getStringExtra("SCAN_RESULT_FORMAT"));
    recordHistory(localBarcodeRecord);
    queryServer(localBarcodeRecord);
  }
  
  private void processBarcodeScanned(Intent paramIntent)
  {
    BarcodeRecord localBarcodeRecord = new BarcodeRecord();
    localBarcodeRecord.setContent(paramIntent.getStringExtra("SCAN_RESULT"));
    localBarcodeRecord.setFormat(paramIntent.getStringExtra("SCAN_RESULT_FORMAT"));
    recordHistory(localBarcodeRecord);
    queryServer(localBarcodeRecord);
  }
  
  private void queryServer(final BarcodeRecord paramBarcodeRecord)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("wareIdByBarCodeList");
    localHttpSetting.putJsonParam("barcode", paramBarcodeRecord.getContent());
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        String str1;
        if (localJSONObjectProxy != null)
        {
          str1 = localJSONObjectProxy.getStringOrNull("code");
          if ((TextUtils.isEmpty(str1)) || (!str1.equals("3"))) {
            break label44;
          }
          BarcodeActivity.this.login(paramBarcodeRecord);
        }
        label44:
        ArrayList localArrayList;
        do
        {
          String str2;
          do
          {
            return;
            str2 = localJSONObjectProxy.getStringOrNull("type");
            localArrayList = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("wareInfoList"), 1);
            if ((str2 == null) || (!"token".equals(str2))) {
              break;
            }
          } while (TextUtils.isEmpty(str1));
          if ((localArrayList != null) && (localArrayList.size() > 0))
          {
            Product localProduct3 = (Product)localArrayList.get(0);
            ShoppingController.addToCart(BarcodeActivity.this, localProduct3.getId());
            BarcodeActivity.this.saveBarcodeProduct(paramBarcodeRecord, localProduct3);
            return;
          }
          BarcodeActivity.this.saveBarcodeProduct(paramBarcodeRecord, null);
          return;
          if ((!TextUtils.isEmpty(str2)) && (str2.equals("annualMeeting")))
          {
            String str3 = localJSONObjectProxy.getStringOrNull("key");
            CommonUtil.putStringToPreference("annualToken", str3);
            final Intent localIntent2 = new Intent(BarcodeActivity.this, PersonelActivity.class);
            localIntent2.putExtra("moduleId", 108);
            Bundle localBundle2 = new Bundle();
            localBundle2.putString("scanTokey", str3);
            localIntent2.putExtras(localBundle2);
            BarcodeActivity.this.post(new Runnable()
            {
              public void run()
              {
                BarcodeActivity.this.toTraget(BarcodeActivity.this, localIntent2);
              }
            }, 500);
            return;
          }
          if ((localArrayList == null) || (localArrayList.size() == 0))
          {
            BarcodeActivity.this.saveBarcodeProduct(paramBarcodeRecord, null);
            return;
          }
          if (localArrayList.size() == 1)
          {
            final Product localProduct2 = (Product)localArrayList.get(0);
            if (paramBarcodeRecord != null)
            {
              paramBarcodeRecord.setProduct(localProduct2);
              BarcodeActivity.this.dbHelper.insertOrUpdateBarcodeRecord(paramBarcodeRecord);
            }
            BarcodeActivity.this.post(new Runnable()
            {
              public void run()
              {
                BarcodeActivity.this.historyAdapter.notifyDataSetChanged();
                StartActivityUtils.startProductDetailActivity(BarcodeActivity.this, localProduct2.getId(), null, new SourceEntity("wareIdByBarCodeList", this.val$barcodeRecord.getContent()));
              }
            });
            return;
          }
        } while (localArrayList.size() <= 1);
        Product localProduct1 = (Product)localArrayList.get(0);
        paramBarcodeRecord.setProduct(localProduct1);
        BarcodeActivity.this.dbHelper.insertOrUpdateBarcodeRecord(paramBarcodeRecord);
        final Intent localIntent1 = new Intent(BarcodeActivity.this, BarcodeProductListActivity.class);
        Bundle localBundle1 = new Bundle();
        localBundle1.putSerializable("productList", localArrayList);
        localBundle1.putSerializable("barcodeRecord", paramBarcodeRecord);
        localIntent1.putExtras(localBundle1);
        BarcodeActivity.this.post(new Runnable()
        {
          public void run()
          {
            BarcodeActivity.this.historyAdapter.notifyDataSetChanged();
            BarcodeActivity.this.startActivity(localIntent1);
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        if (paramAnonymousHttpError == null) {}
        while (3 - paramAnonymousHttpError.getJsonCode() != 0) {
          return;
        }
        BarcodeActivity.this.login(paramBarcodeRecord);
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void recordHistory(BarcodeRecord paramBarcodeRecord)
  {
    if (this.historyRecordList.size() == 0) {
      this.historyHeader.setText(2131165637);
    }
    this.dbHelper.insertOrUpdateBarcodeRecord(paramBarcodeRecord);
    this.historyRecordList.add(0, paramBarcodeRecord);
    this.historyAdapter.notifyDataSetChanged();
  }
  
  private void recordHistory(ArrayList<BarcodeRecord> paramArrayList)
  {
    if ((this.historyRecordList.size() == 0) && (paramArrayList.size() > 0)) {
      this.historyHeader.setText(2131165637);
    }
    this.historyRecordList.addAll(paramArrayList);
    this.historyAdapter.notifyDataSetChanged();
  }
  
  private void saveBarcodeProduct(BarcodeRecord paramBarcodeRecord, final Product paramProduct)
  {
    if (paramBarcodeRecord == null) {
      return;
    }
    if (paramProduct != null) {
      paramBarcodeRecord.setProduct(paramProduct);
    }
    for (;;)
    {
      this.dbHelper.insertOrUpdateBarcodeRecord(paramBarcodeRecord);
      post(new Runnable()
      {
        public void run()
        {
          BarcodeActivity.this.historyAdapter.notifyDataSetChanged();
          if (paramProduct == null) {
            Toast.makeText(BarcodeActivity.this, 2131165638, 0).show();
          }
        }
      });
      return;
      paramBarcodeRecord.setProductName(getResources().getString(2131165638));
    }
  }
  
  private void scan()
  {
    Intent localIntent = new Intent(this, CaptureActivity.class);
    localIntent.setAction("com.jingdong.lib.zxing.client.android.SCAN");
    localIntent.putExtra("SCAN_FORMATS", "EAN_13,EAN_8,QR_CODE");
    startActivityForResult(localIntent, 1235);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 != -1) {
      return;
    }
    switch (paramInt1)
    {
    default: 
      return;
    case 1: 
      BarcodeRecord localBarcodeRecord2 = new BarcodeRecord();
      localBarcodeRecord2.setContent(paramIntent.getStringExtra("SCAN_RESULT"));
      localBarcodeRecord2.setFormat(paramIntent.getStringExtra("SCAN_RESULT_FORMAT"));
      recordHistory(localBarcodeRecord2);
      queryServer(localBarcodeRecord2);
      return;
    }
    BarcodeRecord localBarcodeRecord1 = new BarcodeRecord();
    localBarcodeRecord1.setContent(paramIntent.getStringExtra("SCAN_RESULT"));
    localBarcodeRecord1.setFormat(paramIntent.getStringExtra("SCAN_RESULT_FORMAT"));
    recordHistory(localBarcodeRecord1);
    queryServer(localBarcodeRecord1);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    findView();
    init();
    ((TextView)findViewById(2131492990)).setText(2131165627);
    this.clearButton.setText(2131165628);
    this.clearButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(BarcodeActivity.this);
        localBuilder.setTitle(2131165629);
        localBuilder.setMessage(2131165630);
        localBuilder.setNegativeButton(2131165601, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymous2DialogInterface.dismiss();
          }
        });
        localBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            BarcodeActivity.this.clear();
            paramAnonymous2DialogInterface.dismiss();
          }
        });
        localBuilder.show();
      }
    });
    int i = getIntent().getIntExtra("com.jingdong.lib.zxing.client.android.SCAN", -1);
    if (i == 1) {
      processBarcodeScanned(getIntent());
    }
    while (i != 2) {
      return;
    }
    processBarcodeInputed(getIntent());
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    Bundle localBundle = paramIntent.getExtras();
    int i;
    if (localBundle != null)
    {
      i = localBundle.getInt("com.jingdong.lib.zxing.client.android.SCAN", -1);
      if (i != 1) {
        break label34;
      }
      processBarcodeScanned(paramIntent);
    }
    label34:
    while (i != 2) {
      return;
    }
    processBarcodeInputed(paramIntent);
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  public void toTraget(Context paramContext, Intent paramIntent)
  {
    InterfaceBroadcastReceiver.Command localCommand = InterfaceBroadcastReceiver.Command.createCommand(paramIntent);
    if (localCommand.getModuleId() == 0) {
      return;
    }
    Intent localIntent = new Intent(paramContext, MainFrameActivity.class);
    MainFrameActivity localMainFrameActivity = MyApplication.getInstance().getMainFrameActivity();
    if (localMainFrameActivity == null) {
      localIntent.putExtras(localCommand.getBundle());
    }
    for (;;)
    {
      localIntent.addFlags(268435456);
      paramContext.startActivity(localIntent);
      return;
      localMainFrameActivity.toTargetActivity(localCommand);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.barcode.BarcodeActivity
 * JD-Core Version:    0.7.0.1
 */