package com.jingdong.app.mall.shopping;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.category.CategoryActivity;
import com.jingdong.app.mall.home.NewHomeActivity;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ProductShow;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.controller.ProductDetailController;
import com.jingdong.common.controller.ProductDetailController.ProductDetailListener;
import com.jingdong.common.entity.CartTable;
import com.jingdong.common.entity.PacksTable;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.frame.IResumeListener;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.DBHelperUtil;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.EditTextUtils;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.Log;
import com.jingdong.common.utils.MySimpleAdapter;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ShoppingCarActivity
  extends MyActivity
{
  private static final String TAG = "ShoppingCarActivity";
  public static boolean isGoFillOrder = false;
  MySimpleAdapter adapter;
  private boolean bDeleted = false;
  boolean[] bExtendFlag;
  boolean bModified;
  private boolean bUpdate = false;
  ArrayList<CartTable> cartItem = null;
  private int count = 3;
  DBHelperUtil dbCart;
  int delIndex;
  String functionId = "cart";
  boolean hasGifts = false;
  ArrayList<Long> hasZengArray;
  HttpGroup.HttpSetting hs;
  private JSONObjectProxy jsonCartInfoContainer;
  private JSONArrayPoxy jsonGiftsInfo;
  private JSONArrayPoxy jsonManZengInfo;
  private JSONArrayPoxy jsonPacksInfo;
  private JSONArrayPoxy jsonSkusInfo;
  ArrayList<Product> list;
  ArrayList<View> listView;
  Button mCalAccount;
  Button mDone;
  TextView mFanXian;
  TextView mOrignalPrice;
  TextView mTitle;
  TextView mTotalPrice;
  ArrayList<View> packLayoutGp;
  ArrayList<PacksTable> packsItem = null;
  JSONObject params;
  int screenHeight;
  int screenWidth;
  private ListView wareInfoList;
  private String yunFee;
  TextView yunFeeMessage;
  
  private ArrayList<Product> CountDownSort(ArrayList<Product> paramArrayList)
  {
    Object localObject = new ArrayList();
    if ((paramArrayList == null) || ((paramArrayList.size() > 0) && (paramArrayList.size() < 1))) {
      localObject = paramArrayList;
    }
    for (;;)
    {
      return localObject;
      for (int i = -1 + paramArrayList.size(); i >= 0; i--) {
        ((ArrayList)localObject).add((Product)paramArrayList.get(i));
      }
    }
  }
  
  private void EnableEditList()
  {
    int i = 0;
    if (i >= this.wareInfoList.getCount()) {
      return;
    }
    ViewGroup localViewGroup = (ViewGroup)this.wareInfoList.getChildAt(i);
    if (localViewGroup == null) {}
    for (;;)
    {
      i++;
      break;
      EditText localEditText = (EditText)localViewGroup.getChildAt(4);
      if (localEditText != null) {
        localEditText.setEnabled(true);
      }
    }
  }
  
  private void EnpackEditList()
  {
    Iterator localIterator = this.packLayoutGp.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      View localView = (View)localIterator.next();
      EditText localEditText = (EditText)localView.findViewById(2131494020);
      TextView localTextView = (TextView)localView.findViewById(2131494021);
      Button localButton = (Button)localView.findViewById(2131494023);
      localEditText.setVisibility(0);
      localTextView.setVisibility(8);
      localEditText.setEnabled(true);
      localEditText.setClickable(true);
      localButton.setEnabled(true);
      localButton.setVisibility(0);
    }
  }
  
  private void UnpackEditList()
  {
    Iterator localIterator = this.packLayoutGp.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      View localView = (View)localIterator.next();
      EditText localEditText = (EditText)localView.findViewById(2131494020);
      TextView localTextView = (TextView)localView.findViewById(2131494021);
      Button localButton = (Button)localView.findViewById(2131494023);
      localEditText.setEnabled(false);
      localEditText.setVisibility(8);
      localTextView.setVisibility(0);
      localEditText.setClickable(false);
      localButton.setEnabled(false);
      localButton.setVisibility(8);
    }
  }
  
  private void addCollect(final Product paramProduct)
  {
    Runnable local16 = new Runnable()
    {
      public void run()
      {
        new ProductDetailController(ShoppingCarActivity.this.getHttpGroupaAsynPool()).addFavorite(paramProduct.getId().longValue(), new ProductDetailController.ProductDetailListener()
        {
          public void onFinish(Product paramAnonymous2Product, int paramAnonymous2Int, boolean paramAnonymous2Boolean)
          {
            final String str = paramAnonymous2Product.getAddFavoriteMsg();
            ShoppingCarActivity.this.post(new Runnable()
            {
              public void run()
              {
                Toast.makeText(ShoppingCarActivity.this, str, 0).show();
              }
            });
          }
        });
      }
    };
    LoginUser.getInstance().executeLoginRunnable(this, local16, getString(2131165678), true);
  }
  
  private void addEditView(View paramView, int paramInt1, final JSONObjectProxy paramJSONObjectProxy, final int paramInt2)
  {
    final EditText localEditText = (EditText)paramView.findViewById(2131494020);
    TextView localTextView1 = (TextView)paramView.findViewById(2131494008);
    TextView localTextView2 = (TextView)paramView.findViewById(2131494021);
    Button localButton = (Button)paramView.findViewById(2131494023);
    localEditText.addTextChangedListener(new TextWatcher()
    {
      private int selectionEnd;
      private int selectionStart;
      private CharSequence temp;
      
      public void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        this.temp = paramAnonymousCharSequence;
      }
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        this.selectionStart = localEditText.getSelectionStart();
        this.selectionEnd = localEditText.getSelectionEnd();
        if (this.temp.length() > 4)
        {
          Toast.makeText(ShoppingCarActivity.this, 2131166032, 0).show();
          ((Editable)paramAnonymousCharSequence).delete(-1 + this.selectionStart, this.selectionEnd);
          int i = this.selectionStart;
          localEditText.setText(paramAnonymousCharSequence);
          localEditText.setSelection(i);
        }
      }
    });
    if (this.bModified)
    {
      localButton.setVisibility(0);
      localButton.setText(2131166036);
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(ShoppingCarActivity.this);
          localBuilder.setTitle("删除确认");
          localBuilder.setMessage("您确定要删除这个优惠套装吗？");
          localBuilder.setPositiveButton("确定", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              if ((((InputMethodManager)ShoppingCarActivity.this.getSystemService("input_method")).isActive()) && (ShoppingCarActivity.this.getCurrentFocus() != null) && (ShoppingCarActivity.this.getCurrentFocus().getWindowToken() != null)) {
                ((InputMethodManager)ShoppingCarActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(ShoppingCarActivity.this.getCurrentFocus().getWindowToken(), 2);
              }
              new Thread()
              {
                public void run()
                {
                  super.run();
                  int i = this.val$index;
                  if ((ShoppingCarActivity.this.cartItem != null) && (ShoppingCarActivity.this.cartItem.size() > 0) && (i >= ShoppingCarActivity.this.packsItem.size())) {
                    i -= ShoppingCarActivity.this.cartItem.size();
                  }
                  ShoppingCarActivity.this.updatePackItemData();
                  try
                  {
                    Thread.sleep(50L);
                  }
                  catch (InterruptedException localInterruptedException)
                  {
                    try
                    {
                      for (;;)
                      {
                        ShoppingCarActivity.this.deletePackItem(i, Long.valueOf(this.val$tp.getLong("Id")));
                        ShoppingCarActivity.this.packLayoutGp.remove(i);
                        ShoppingCarActivity.this.updateCartItem();
                        ShoppingCarActivity.this.post(new Runnable()
                        {
                          public void run()
                          {
                            ShoppingCarActivity.this.mDone.setEnabled(true);
                          }
                        });
                        return;
                        localInterruptedException = localInterruptedException;
                        localInterruptedException.printStackTrace();
                      }
                    }
                    catch (JSONException localJSONException)
                    {
                      for (;;)
                      {
                        localJSONException.printStackTrace();
                      }
                    }
                  }
                }
              }.start();
              paramAnonymous2DialogInterface.dismiss();
            }
          });
          localBuilder.setNeutralButton("取消", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              ShoppingCarActivity.this.mDone.setEnabled(true);
              paramAnonymous2DialogInterface.dismiss();
            }
          });
          localBuilder.show();
        }
      });
      if (String.valueOf(paramInt1).length() >= 1) {
        break label189;
      }
      localEditText.setText("1");
      localTextView2.setText("1");
      label124:
      if (!this.bModified) {
        break label210;
      }
      localTextView2.setVisibility(8);
      localEditText.setVisibility(0);
      localEditText.setEnabled(true);
      localEditText.setClickable(true);
    }
    for (;;)
    {
      if (paramJSONObjectProxy.getStringOrNull("PriceShow") == null) {
        break label238;
      }
      localTextView1.setText(paramJSONObjectProxy.getStringOrNull("PriceShow"));
      return;
      localButton.setVisibility(8);
      break;
      label189:
      localEditText.setText(String.valueOf(paramInt1));
      localTextView2.setText(String.valueOf(paramInt1));
      break label124;
      label210:
      localTextView2.setVisibility(0);
      localEditText.setVisibility(8);
      localEditText.setEnabled(false);
      localEditText.setClickable(false);
    }
    try
    {
      label238:
      float f1 = Float.valueOf(paramJSONObjectProxy.getStringOrNull("Price")).floatValue();
      float f2 = Float.valueOf(paramJSONObjectProxy.getStringOrNull("Discount")).floatValue();
      String str = new DecimalFormat("0.00").format(f1 - f2);
      localTextView1.setText(Constants.REN_MIN_BI + str);
      return;
    }
    catch (Exception localException)
    {
      localTextView1.setText(getString(2131165973));
    }
  }
  
  /* Error */
  private void addManZengView(JSONObjectProxy paramJSONObjectProxy, int paramInt, View paramView)
  {
    // Byte code:
    //   0: aload_3
    //   1: ldc_w 404
    //   4: invokevirtual 147	android/view/View:findViewById	(I)Landroid/view/View;
    //   7: checkcast 150	android/widget/TextView
    //   10: astore 4
    //   12: aload_3
    //   13: ldc_w 405
    //   16: invokevirtual 147	android/view/View:findViewById	(I)Landroid/view/View;
    //   19: checkcast 150	android/widget/TextView
    //   22: astore 5
    //   24: aload_3
    //   25: ldc_w 406
    //   28: invokevirtual 147	android/view/View:findViewById	(I)Landroid/view/View;
    //   31: checkcast 150	android/widget/TextView
    //   34: astore 6
    //   36: aload_3
    //   37: ldc_w 407
    //   40: invokevirtual 147	android/view/View:findViewById	(I)Landroid/view/View;
    //   43: checkcast 120	android/widget/EditText
    //   46: astore 7
    //   48: aload_3
    //   49: ldc_w 408
    //   52: invokevirtual 147	android/view/View:findViewById	(I)Landroid/view/View;
    //   55: checkcast 153	android/widget/Button
    //   58: astore 8
    //   60: aload_1
    //   61: ldc_w 410
    //   64: invokevirtual 356	com/jingdong/common/utils/JSONObjectProxy:getStringOrNull	(Ljava/lang/String;)Ljava/lang/String;
    //   67: ifnull +148 -> 215
    //   70: aload 4
    //   72: aload_1
    //   73: ldc_w 410
    //   76: invokevirtual 412	com/jingdong/common/utils/JSONObjectProxy:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   79: invokevirtual 348	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   82: aload_1
    //   83: ldc_w 414
    //   86: invokevirtual 418	com/jingdong/common/utils/JSONObjectProxy:getIntOrNull	(Ljava/lang/String;)Ljava/lang/Integer;
    //   89: ifnull +147 -> 236
    //   92: aload 7
    //   94: aload_1
    //   95: ldc_w 414
    //   98: invokevirtual 418	com/jingdong/common/utils/JSONObjectProxy:getIntOrNull	(Ljava/lang/String;)Ljava/lang/Integer;
    //   101: invokestatic 390	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   104: invokestatic 424	com/jingdong/common/utils/EditTextUtils:setTextWithSelection	(Landroid/widget/EditText;Ljava/lang/String;)V
    //   107: aload_0
    //   108: getfield 321	com/jingdong/app/mall/shopping/ShoppingCarActivity:bModified	Z
    //   111: ifeq +136 -> 247
    //   114: aload 7
    //   116: iconst_1
    //   117: invokevirtual 124	android/widget/EditText:setEnabled	(Z)V
    //   120: aload 8
    //   122: iconst_1
    //   123: invokevirtual 162	android/widget/Button:setEnabled	(Z)V
    //   126: aload 8
    //   128: iconst_0
    //   129: invokevirtual 163	android/widget/Button:setVisibility	(I)V
    //   132: aload_1
    //   133: ldc_w 426
    //   136: invokevirtual 430	com/jingdong/common/utils/JSONObjectProxy:getLongOrNull	(Ljava/lang/String;)Ljava/lang/Long;
    //   139: ifnull +129 -> 268
    //   142: aload 6
    //   144: aload_1
    //   145: ldc_w 426
    //   148: invokevirtual 430	com/jingdong/common/utils/JSONObjectProxy:getLongOrNull	(Ljava/lang/String;)Ljava/lang/Long;
    //   151: invokestatic 390	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   154: invokevirtual 348	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   157: aload_1
    //   158: ldc_w 358
    //   161: invokevirtual 356	com/jingdong/common/utils/JSONObjectProxy:getStringOrNull	(Ljava/lang/String;)Ljava/lang/String;
    //   164: invokestatic 363	java/lang/Float:valueOf	(Ljava/lang/String;)Ljava/lang/Float;
    //   167: invokevirtual 367	java/lang/Float:floatValue	()F
    //   170: fstore 10
    //   172: aload_1
    //   173: ldc_w 369
    //   176: invokevirtual 356	com/jingdong/common/utils/JSONObjectProxy:getStringOrNull	(Ljava/lang/String;)Ljava/lang/String;
    //   179: invokestatic 363	java/lang/Float:valueOf	(Ljava/lang/String;)Ljava/lang/Float;
    //   182: invokevirtual 367	java/lang/Float:floatValue	()F
    //   185: fstore 11
    //   187: fload 10
    //   189: fconst_0
    //   190: fsub
    //   191: fconst_0
    //   192: fcmpg
    //   193: ifgt +86 -> 279
    //   196: aload 5
    //   198: ldc_w 432
    //   201: invokevirtual 348	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   204: return
    //   205: astore 14
    //   207: aload 14
    //   209: invokevirtual 435	org/json/JSONException:printStackTrace	()V
    //   212: goto -130 -> 82
    //   215: aload 4
    //   217: ldc_w 437
    //   220: invokevirtual 348	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   223: goto -141 -> 82
    //   226: astore 13
    //   228: aload 13
    //   230: invokevirtual 438	java/lang/Exception:printStackTrace	()V
    //   233: goto -126 -> 107
    //   236: aload 7
    //   238: ldc_w 437
    //   241: invokestatic 424	com/jingdong/common/utils/EditTextUtils:setTextWithSelection	(Landroid/widget/EditText;Ljava/lang/String;)V
    //   244: goto -137 -> 107
    //   247: aload 7
    //   249: iconst_0
    //   250: invokevirtual 124	android/widget/EditText:setEnabled	(Z)V
    //   253: aload 8
    //   255: iconst_0
    //   256: invokevirtual 162	android/widget/Button:setEnabled	(Z)V
    //   259: aload 8
    //   261: iconst_4
    //   262: invokevirtual 163	android/widget/Button:setVisibility	(I)V
    //   265: goto -133 -> 132
    //   268: aload 6
    //   270: ldc_w 437
    //   273: invokevirtual 348	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   276: goto -119 -> 157
    //   279: new 371	java/text/DecimalFormat
    //   282: dup
    //   283: ldc_w 373
    //   286: invokespecial 376	java/text/DecimalFormat:<init>	(Ljava/lang/String;)V
    //   289: fload 10
    //   291: fload 11
    //   293: fsub
    //   294: f2d
    //   295: invokevirtual 380	java/text/DecimalFormat:format	(D)Ljava/lang/String;
    //   298: astore 12
    //   300: aload 5
    //   302: new 382	java/lang/StringBuilder
    //   305: dup
    //   306: getstatic 387	com/jingdong/common/constant/Constants:REN_MIN_BI	Ljava/lang/String;
    //   309: invokestatic 390	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   312: invokespecial 391	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   315: aload 12
    //   317: invokevirtual 395	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: invokevirtual 399	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   323: invokevirtual 348	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   326: return
    //   327: astore 9
    //   329: aload 5
    //   331: aload_0
    //   332: ldc_w 400
    //   335: invokevirtual 303	com/jingdong/app/mall/shopping/ShoppingCarActivity:getString	(I)Ljava/lang/String;
    //   338: invokevirtual 348	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   341: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	342	0	this	ShoppingCarActivity
    //   0	342	1	paramJSONObjectProxy	JSONObjectProxy
    //   0	342	2	paramInt	int
    //   0	342	3	paramView	View
    //   10	206	4	localTextView1	TextView
    //   22	308	5	localTextView2	TextView
    //   34	235	6	localTextView3	TextView
    //   46	202	7	localEditText	EditText
    //   58	202	8	localButton	Button
    //   327	1	9	localException1	Exception
    //   170	120	10	f1	float
    //   185	107	11	f2	float
    //   298	18	12	str	String
    //   226	3	13	localException2	Exception
    //   205	3	14	localJSONException	JSONException
    // Exception table:
    //   from	to	target	type
    //   70	82	205	org/json/JSONException
    //   92	107	226	java/lang/Exception
    //   157	187	327	java/lang/Exception
    //   196	204	327	java/lang/Exception
    //   279	326	327	java/lang/Exception
  }
  
  private void addPackTitleView(View paramView, JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    TextView localTextView = (TextView)paramView.findViewById(2131493999);
    ImageView localImageView = (ImageView)paramView.findViewById(2131494001);
    if (paramJSONObjectProxy.getStringOrNull("Name") != null) {
      localTextView.setText("【优惠】" + paramJSONObjectProxy.getStringOrNull("Name"));
    }
    for (;;)
    {
      if ((paramJSONObjectProxy.toString().contains("Gifts")) && (paramJSONObjectProxy.getJSONArrayOrNull("Gifts") != null)) {
        localImageView.setImageResource(2130837608);
      }
      return;
      localTextView.setText("优惠套装");
    }
  }
  
  private void addPackView(JSONObjectProxy paramJSONObjectProxy, int paramInt, View paramView)
  {
    TextView localTextView1 = (TextView)paramView.findViewById(2131494013);
    TextView localTextView2 = (TextView)paramView.findViewById(2131494014);
    if (paramJSONObjectProxy.getStringOrNull("Name") != null) {}
    for (;;)
    {
      try
      {
        localTextView1.setText(paramJSONObjectProxy.getString("Name"));
        localTextView2.setText(formatRMBPrice(paramJSONObjectProxy.getStringOrNull("Price")));
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        continue;
      }
      localTextView1.setText(" ");
    }
  }
  
  private void clearDB()
  {
    this.dbCart = new DBHelperUtil(this);
    this.dbCart.delAllCart();
  }
  
  private void clearPackDb()
  {
    this.dbCart = new DBHelperUtil(this);
    this.dbCart.delAllPacksCart();
  }
  
  private void compontSkuInfo()
  {
    int i;
    if ((this.hasGifts) && (this.hasZengArray != null)) {
      i = 0;
    }
    for (;;)
    {
      if ((this.jsonGiftsInfo == null) || (i >= this.jsonGiftsInfo.length())) {
        return;
      }
      try
      {
        JSONObjectProxy localJSONObjectProxy = this.jsonGiftsInfo.getJSONObject(i).getJSONObject("MainSku");
        localJSONObjectProxy.put("Num", this.jsonGiftsInfo.getJSONObject(i).getInt("Num"));
        if (this.jsonSkusInfo == null) {
          this.jsonSkusInfo = new JSONArrayPoxy();
        }
        this.jsonSkusInfo.put(localJSONObjectProxy);
        i++;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          localJSONException.printStackTrace();
        }
      }
    }
  }
  
  private void deleteCartItem(int paramInt, Long paramLong)
  {
    if ((paramInt < 0) || (this.cartItem.size() < 1)) {
      return;
    }
    if ((this.hasZengArray != null) && (this.hasZengArray.size() > 0) && (isInArray(paramLong))) {}
    for (int j = 0;; j++)
    {
      if (j >= this.hasZengArray.size())
      {
        if ((this.hasZengArray == null) || (this.hasZengArray.size() <= 0))
        {
          this.hasZengArray = null;
          this.hasGifts = false;
        }
        if (this.cartItem.size() >= 2) {
          break;
        }
        this.cartItem.clear();
        this.cartItem = null;
        this.cartItem = new ArrayList();
        clearDB();
        return;
      }
      if (((Long)this.hasZengArray.get(j)).equals(paramLong)) {
        this.hasZengArray.remove(j);
      }
    }
    if ((paramInt < this.cartItem.size()) && (paramInt >= 0))
    {
      if (((CartTable)this.cartItem.get(paramInt)).productCode != paramLong.longValue()) {
        break label208;
      }
      this.cartItem.remove(paramInt);
    }
    label259:
    for (;;)
    {
      updateCartDB();
      return;
      label208:
      for (int i = 0;; i++)
      {
        if (i >= this.cartItem.size()) {
          break label259;
        }
        if (((CartTable)this.cartItem.get(i)).productCode == paramLong.longValue())
        {
          this.cartItem.remove(i);
          break;
        }
      }
    }
  }
  
  private void deletePackItem(int paramInt, Long paramLong)
  {
    if ((paramInt < 0) || (this.packsItem.size() < 1)) {
      return;
    }
    if (this.packsItem.size() < 2)
    {
      this.packsItem.clear();
      clearPackDb();
      return;
    }
    if ((paramInt < this.packsItem.size()) && (paramInt >= 0))
    {
      if (((PacksTable)this.packsItem.get(paramInt)).packId != paramLong.longValue()) {
        break label90;
      }
      this.packsItem.remove(paramInt);
    }
    label141:
    for (;;)
    {
      updatePacksDB();
      return;
      label90:
      for (int i = 0;; i++)
      {
        if (i >= this.packsItem.size()) {
          break label141;
        }
        if (((PacksTable)this.packsItem.get(i)).packId == paramLong.longValue())
        {
          this.packsItem.remove(i);
          break;
        }
      }
    }
  }
  
  private String formatRMBPrice(String paramString)
  {
    String str1 = getString(2131165973);
    if (paramString != null) {
      try
      {
        Float localFloat = Float.valueOf(paramString);
        if (localFloat != null)
        {
          if (localFloat.floatValue() < 0.0F) {
            return str1;
          }
          String str2 = Constants.REN_MIN_BI + new DecimalFormat("0.00").format(localFloat);
          return str2;
        }
      }
      catch (Exception localException) {}
    }
    return str1;
  }
  
  private void forwardOrder()
  {
    post(new Runnable()
    {
      public void run()
      {
        Constants.bAddEasyBuy = false;
        Constants.bEasyBuy = false;
        Constants.bModifyEasyBuy = false;
        Intent localIntent = new Intent(ShoppingCarActivity.this, FillOrderActivity.class);
        ShoppingCarActivity.this.startTaskActivityInFrame(localIntent);
      }
    });
  }
  
  private boolean getCartItem()
  {
    this.dbCart = new DBHelperUtil(this);
    this.cartItem = this.dbCart.getCartList();
    if ((this.cartItem.isEmpty()) || (this.cartItem == null))
    {
      this.cartItem.clear();
      this.cartItem = null;
      this.cartItem = new ArrayList();
      return false;
    }
    setUpCart();
    return true;
  }
  
  private void getGifts()
  {
    if ((this.jsonCartInfoContainer != null) && (this.jsonCartInfoContainer.length() > 0))
    {
      try
      {
        if (this.jsonCartInfoContainer.getJSONArrayOrNull("Gifts") == null)
        {
          this.hasGifts = false;
          return;
        }
      }
      catch (Exception localException)
      {
        this.hasGifts = false;
        localException.printStackTrace();
        return;
      }
      try
      {
        this.jsonGiftsInfo = this.jsonCartInfoContainer.getJSONArray("Gifts");
        handleGifts();
        this.hasGifts = true;
        return;
      }
      catch (JSONException localJSONException)
      {
        this.hasGifts = false;
        localJSONException.printStackTrace();
        return;
      }
    }
    this.hasGifts = false;
  }
  
  private boolean getPackItem()
  {
    this.packsItem = null;
    this.packsItem = new ArrayList();
    this.dbCart = new DBHelperUtil(this);
    this.packsItem = this.dbCart.getPacksList();
    if ((this.packsItem.isEmpty()) || (this.packsItem == null))
    {
      this.packsItem.clear();
      return false;
    }
    setUpPacks();
    return true;
  }
  
  private void getScreenHW()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.screenHeight = localDisplayMetrics.heightPixels;
    this.screenWidth = localDisplayMetrics.widthPixels;
  }
  
  private void handleClickEvent()
  {
    this.mCalAccount.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ShoppingCarActivity.this.forwardOrder();
        paramAnonymousView.setPressed(false);
      }
    });
    this.mDone.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (ShoppingCarActivity.this.bModified)
        {
          if ((ShoppingCarActivity.this.getCurrentFocus() != null) && (ShoppingCarActivity.this.getCurrentFocus().getWindowToken() != null) && (((InputMethodManager)ShoppingCarActivity.this.getSystemService("input_method")).isActive())) {
            ((InputMethodManager)ShoppingCarActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(ShoppingCarActivity.this.getCurrentFocus().getWindowToken(), 2);
          }
          if (!ShoppingCarActivity.this.tooManyProd()) {}
        }
        do
        {
          do
          {
            return;
            ShoppingCarActivity.this.updateCartItemData();
            ShoppingCarActivity.this.updatePackItemData();
            ShoppingCarActivity.this.updateCartItem();
            ShoppingCarActivity.this.bModified = false;
            ShoppingCarActivity.this.mDone.setText(2131165987);
            ShoppingCarActivity.this.mCalAccount.setEnabled(true);
            ShoppingCarActivity.this.mCalAccount.setTextColor(-16777216);
            if (ShoppingCarActivity.this.adapter != null) {
              ShoppingCarActivity.this.adapter.notifyDataSetChanged();
            }
          } while ((ShoppingCarActivity.this.packLayoutGp == null) || (ShoppingCarActivity.this.packLayoutGp.size() <= 0));
          ShoppingCarActivity.this.UnpackEditList();
          return;
          ShoppingCarActivity.this.mDone.setText(2131166028);
          ShoppingCarActivity.this.mCalAccount.setEnabled(false);
          ShoppingCarActivity.this.mCalAccount.setTextColor(Color.rgb(153, 153, 153));
          ShoppingCarActivity.this.bModified = true;
          if (ShoppingCarActivity.this.adapter != null) {
            ShoppingCarActivity.this.adapter.notifyDataSetChanged();
          }
        } while ((ShoppingCarActivity.this.packLayoutGp == null) || (ShoppingCarActivity.this.packLayoutGp.size() <= 0));
        ShoppingCarActivity.this.EnpackEditList();
      }
    });
  }
  
  private void handleGifts()
  {
    this.hasZengArray = new ArrayList();
    if (this.jsonGiftsInfo.length() > 0)
    {
      int i = 0;
      for (;;)
      {
        if (i >= this.jsonGiftsInfo.length()) {
          return;
        }
        try
        {
          this.hasZengArray.add(this.jsonGiftsInfo.getJSONObject(i).getJSONObject("MainSku").getLongOrNull("Id"));
          i++;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            localJSONException.printStackTrace();
          }
        }
      }
    }
    this.hasZengArray = null;
  }
  
  private void initComponent()
  {
    this.mTotalPrice = ((TextView)findViewById(2131494535));
    this.mOrignalPrice = ((TextView)findViewById(2131494530));
    this.mFanXian = ((TextView)findViewById(2131494533));
    this.yunFeeMessage = ((TextView)findViewById(2131494536));
    this.mCalAccount = ((Button)findViewById(2131493370));
    this.mCalAccount.setEnabled(false);
    this.mCalAccount.setTextColor(Color.rgb(153, 153, 153));
    this.mTotalPrice.setText(2131165732);
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText(2131165965);
    this.mDone = ((Button)findViewById(2131494684));
    this.mDone.setText(2131165987);
    this.mDone.setVisibility(0);
    ((LinearLayout)findViewById(2131494528)).setVisibility(8);
  }
  
  private boolean isInArray(Long paramLong)
  {
    for (int i = 0;; i++)
    {
      if (i >= this.hasZengArray.size()) {
        return false;
      }
      if (((Long)this.hasZengArray.get(i)).equals(paramLong)) {
        return true;
      }
    }
  }
  
  private boolean isManZeng(Long paramLong)
  {
    if ((this.jsonManZengInfo == null) || (this.jsonManZengInfo.length() <= 0)) {}
    for (;;)
    {
      return false;
      int i = 0;
      while (i < this.jsonManZengInfo.length()) {
        try
        {
          int j = this.jsonManZengInfo.getJSONObjectOrNull(i).getString("Id").trim().compareTo(String.valueOf(paramLong));
          if (j == 0) {
            return true;
          }
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
          i++;
        }
      }
    }
  }
  
  private void setCartList()
  {
    compontSkuInfo();
    if ((this.jsonSkusInfo == null) || (!checkSkus(this.jsonSkusInfo)))
    {
      setEmptyView();
      if ((this.cartItem != null) && (this.cartItem.size() > 0))
      {
        if (this.dbCart == null) {
          this.dbCart = new DBHelperUtil(this);
        }
        this.dbCart.delAllCart();
        this.cartItem.clear();
        this.cartItem = null;
        this.cartItem = new ArrayList();
      }
      return;
    }
    this.list = Product.toList(this.jsonSkusInfo, 9);
    final ArrayList localArrayList = CountDownSort(this.list);
    int i = this.cartItem.size();
    final int j = 0;
    if (i > 0) {}
    for (int k = 0;; k++)
    {
      if (k >= this.cartItem.size())
      {
        post(new Runnable()
        {
          public void run()
          {
            if (j > 1000)
            {
              ShoppingCarActivity.this.bModified = true;
              ShoppingCarActivity.this.mDone.setText(ShoppingCarActivity.this.getApplicationContext().getString(2131166028));
              ShoppingCarActivity.this.mCalAccount.setEnabled(false);
              ShoppingCarActivity.this.mCalAccount.setTextColor(Color.rgb(153, 153, 153));
              Constants.ShowMsg(ShoppingCarActivity.this.getString(2131165975), ShoppingCarActivity.this);
            }
            ShoppingCarActivity.this.adapter = null;
            ShoppingCarActivity.this.adapter = new MySimpleAdapter(ShoppingCarActivity.this, localArrayList, 2130903308, new String[] { "Price" }, new int[] { 2131494542 })
            {
              public View getView(final int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
              {
                View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
                final Product localProduct = (Product)getItem(paramAnonymous2Int);
                TextView localTextView1;
                label140:
                Button localButton;
                label184:
                final EditText localEditText;
                TextView localTextView3;
                if (ShoppingCarActivity.this.isManZeng(localProduct.getId()))
                {
                  localView.setBackgroundResource(2130838011);
                  localTextView1 = (TextView)localView.findViewById(2131494537);
                  TextView localTextView2 = (TextView)localView.findViewById(2131494022);
                  ProductShow localProductShow = new ProductShow(ShoppingCarActivity.this, localProduct);
                  if ((!ShoppingCarActivity.this.hasGifts) || (ShoppingCarActivity.this.hasZengArray == null) || (!ShoppingCarActivity.this.isInArray(localProduct.getId()))) {
                    break label386;
                  }
                  localTextView1.setText(localProductShow.getNameAndZeng());
                  localTextView2.setText(localProduct.getId().toString());
                  localButton = (Button)localView.findViewById(2131494543);
                  if (!ShoppingCarActivity.this.bModified) {
                    break label399;
                  }
                  localButton.setVisibility(0);
                  localButton.setText(2131166036);
                  localButton.setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymous3View)
                    {
                      try
                      {
                        ShoppingCarActivity.this.bUpdate = true;
                        ShoppingCarActivity.this.mDone.setEnabled(false);
                        AlertDialog.Builder localBuilder = new AlertDialog.Builder(ShoppingCarActivity.this);
                        localBuilder.setTitle("删除确认");
                        localBuilder.setMessage("您确定要删除这个商品吗？");
                        localBuilder.setPositiveButton("确定", new DialogInterface.OnClickListener()
                        {
                          public void onClick(DialogInterface paramAnonymous4DialogInterface, int paramAnonymous4Int)
                          {
                            if ((((InputMethodManager)ShoppingCarActivity.this.getSystemService("input_method")).isActive()) && (ShoppingCarActivity.this.getCurrentFocus() != null) && (ShoppingCarActivity.this.getCurrentFocus().getWindowToken() != null)) {
                              ((InputMethodManager)ShoppingCarActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(ShoppingCarActivity.this.getCurrentFocus().getWindowToken(), 2);
                            }
                            new Thread()
                            {
                              public void run()
                              {
                                super.run();
                                ShoppingCarActivity.this.updateCartItemData();
                                ShoppingCarActivity.this.deleteCartItem(this.val$index, this.val$product.getId());
                                ShoppingCarActivity.this.updateCartItem();
                                ShoppingCarActivity.this.post(new Runnable()
                                {
                                  public void run()
                                  {
                                    ShoppingCarActivity.this.mDone.setEnabled(true);
                                  }
                                });
                              }
                            }.start();
                            paramAnonymous4DialogInterface.dismiss();
                          }
                        });
                        localBuilder.setNeutralButton("取消", new DialogInterface.OnClickListener()
                        {
                          public void onClick(DialogInterface paramAnonymous4DialogInterface, int paramAnonymous4Int)
                          {
                            ShoppingCarActivity.this.mDone.setEnabled(true);
                            paramAnonymous4DialogInterface.dismiss();
                          }
                        });
                        localBuilder.show();
                        return;
                      }
                      catch (Exception localException)
                      {
                        localException.printStackTrace();
                      }
                    }
                  });
                  localEditText = (EditText)localView.findViewById(2131494539);
                  localTextView3 = (TextView)localView.findViewById(2131494540);
                  localView.setOnClickListener(new View.OnClickListener()
                  {
                    public void onClick(View paramAnonymous3View)
                    {
                      if (!ShoppingCarActivity.this.bModified) {
                        StartActivityUtils.startProductDetailActivity(ShoppingCarActivity.this, localProduct.getId(), localProduct.getName(), new SourceEntity("shoppingCart_product", null));
                      }
                    }
                  });
                  localView.setOnLongClickListener(new View.OnLongClickListener()
                  {
                    public boolean onLongClick(View paramAnonymous3View)
                    {
                      if (!ShoppingCarActivity.this.bModified)
                      {
                        AlertDialog.Builder localBuilder = new AlertDialog.Builder(ShoppingCarActivity.this);
                        localBuilder.setTitle(ShoppingCarActivity.this.getResources().getString(2131165991));
                        String[] arrayOfString = new String[3];
                        arrayOfString[0] = ShoppingCarActivity.this.getResources().getString(2131166036);
                        arrayOfString[1] = ShoppingCarActivity.this.getResources().getString(2131165992);
                        arrayOfString[2] = ShoppingCarActivity.this.getResources().getString(2131165993);
                        localBuilder.setItems(arrayOfString, new DialogInterface.OnClickListener()
                        {
                          public void onClick(DialogInterface paramAnonymous4DialogInterface, int paramAnonymous4Int)
                          {
                            if (paramAnonymous4Int == 0) {}
                            try
                            {
                              ShoppingCarActivity.this.bUpdate = true;
                              ShoppingCarActivity.this.bUpdate = true;
                              new Thread()
                              {
                                public void run()
                                {
                                  super.run();
                                  ShoppingCarActivity.this.deleteCartItem(this.val$index, this.val$product.getId());
                                  ShoppingCarActivity.this.updateCartItem();
                                }
                              }.start();
                              paramAnonymous4DialogInterface.dismiss();
                              for (;;)
                              {
                                paramAnonymous4DialogInterface.dismiss();
                                return;
                                if (paramAnonymous4Int != 1) {
                                  break;
                                }
                                if (!ShoppingCarActivity.this.bModified) {
                                  StartActivityUtils.startProductDetailActivity(ShoppingCarActivity.this, this.val$product.getId(), this.val$product.getName(), new SourceEntity("shoppingCart_product", null));
                                }
                              }
                            }
                            catch (Exception localException)
                            {
                              for (;;)
                              {
                                localException.printStackTrace();
                                continue;
                                if ((paramAnonymous4Int == 2) && (!ShoppingCarActivity.this.bModified)) {
                                  ShoppingCarActivity.this.addCollect(this.val$product);
                                }
                              }
                            }
                          }
                        }).show();
                      }
                      return true;
                    }
                  });
                  localEditText.addTextChangedListener(new TextWatcher()
                  {
                    private int selectionEnd;
                    private int selectionStart;
                    private CharSequence temp;
                    
                    public void afterTextChanged(Editable paramAnonymous3Editable) {}
                    
                    public void beforeTextChanged(CharSequence paramAnonymous3CharSequence, int paramAnonymous3Int1, int paramAnonymous3Int2, int paramAnonymous3Int3)
                    {
                      this.temp = paramAnonymous3CharSequence;
                    }
                    
                    public void onTextChanged(CharSequence paramAnonymous3CharSequence, int paramAnonymous3Int1, int paramAnonymous3Int2, int paramAnonymous3Int3)
                    {
                      this.selectionStart = localEditText.getSelectionStart();
                      this.selectionEnd = localEditText.getSelectionEnd();
                      if (this.temp.length() > 4)
                      {
                        Toast.makeText(ShoppingCarActivity.this, 2131166032, 0).show();
                        ((Editable)paramAnonymous3CharSequence).delete(-1 + this.selectionStart, this.selectionEnd);
                        int i = this.selectionStart;
                        localEditText.setText(paramAnonymous3CharSequence);
                        localEditText.setSelection(i);
                      }
                    }
                  });
                  if (String.valueOf(localProduct.geItemCount()).length() >= 1) {
                    break label409;
                  }
                  EditTextUtils.setTextWithSelection(localEditText, "1");
                  localTextView3.setText("1");
                  label306:
                  if (!ShoppingCarActivity.this.bModified) {
                    break label438;
                  }
                  localTextView3.setVisibility(8);
                  localEditText.setVisibility(0);
                  localEditText.setEnabled(true);
                }
                for (;;)
                {
                  ((TextView)localView.findViewById(2131494542)).setText(localProduct.getPriceForAfterDiscount());
                  return localView;
                  if (paramAnonymous2Int % 2 == 1)
                  {
                    localView.setBackgroundResource(2130838108);
                    break;
                  }
                  localView.setBackgroundResource(2130838110);
                  break;
                  label386:
                  localTextView1.setText(localProduct.getName());
                  break label140;
                  label399:
                  localButton.setVisibility(8);
                  break label184;
                  label409:
                  EditTextUtils.setTextWithSelection(localEditText, String.valueOf(localProduct.geItemCount()));
                  localTextView3.setText(String.valueOf(localProduct.geItemCount()));
                  break label306;
                  label438:
                  localTextView3.setVisibility(0);
                  localEditText.setVisibility(8);
                  localEditText.setEnabled(false);
                }
              }
            };
            ShoppingCarActivity.this.wareInfoList.setAdapter(ShoppingCarActivity.this.adapter);
            Math.round(480.0D / ShoppingCarActivity.this.screenHeight);
            if ((ShoppingCarActivity.this.screenHeight < 1024) && (ShoppingCarActivity.this.screenHeight > 480) && (ShoppingCarActivity.this.screenWidth >= 320) && (ShoppingCarActivity.this.screenWidth <= 600)) {
              if (ShoppingCarActivity.this.wareInfoList.getCount() < 16) {
                ShoppingCarActivity.this.wareInfoList.setLayoutParams(new LinearLayout.LayoutParams(ShoppingCarActivity.this.screenWidth, DPIUtil.dip2px(128.0F) * ShoppingCarActivity.this.wareInfoList.getCount()));
              }
            }
            do
            {
              return;
              ShoppingCarActivity.this.wareInfoList.setLayoutParams(new LinearLayout.LayoutParams(ShoppingCarActivity.this.screenWidth, DPIUtil.dip2px(129.0F) * ShoppingCarActivity.this.wareInfoList.getCount()));
              return;
              if ((ShoppingCarActivity.this.screenHeight >= 1024) && (ShoppingCarActivity.this.screenWidth >= 600))
              {
                ShoppingCarActivity.this.wareInfoList.setLayoutParams(new LinearLayout.LayoutParams(ShoppingCarActivity.this.screenWidth, DPIUtil.dip2px(130.0F) * ShoppingCarActivity.this.wareInfoList.getCount()));
                return;
              }
              if ((ShoppingCarActivity.this.screenHeight == 480) && (ShoppingCarActivity.this.screenWidth == 320))
              {
                ShoppingCarActivity.this.wareInfoList.setLayoutParams(new LinearLayout.LayoutParams(ShoppingCarActivity.this.screenWidth, DPIUtil.dip2px(128.0F) * ShoppingCarActivity.this.wareInfoList.getCount()));
                return;
              }
              if ((ShoppingCarActivity.this.screenHeight < 480) && (ShoppingCarActivity.this.screenWidth <= 320))
              {
                ShoppingCarActivity.this.wareInfoList.setLayoutParams(new LinearLayout.LayoutParams(ShoppingCarActivity.this.screenWidth, DPIUtil.dip2px(131.0F) * ShoppingCarActivity.this.wareInfoList.getCount()));
                return;
              }
              if ((ShoppingCarActivity.this.screenHeight < 1024) && (ShoppingCarActivity.this.screenHeight > 480) && (ShoppingCarActivity.this.screenWidth >= 640))
              {
                ShoppingCarActivity.this.wareInfoList.setLayoutParams(new LinearLayout.LayoutParams(ShoppingCarActivity.this.screenWidth, DPIUtil.dip2px(128.0F) * ShoppingCarActivity.this.wareInfoList.getCount()));
                return;
              }
            } while ((ShoppingCarActivity.this.screenHeight != 400) || (ShoppingCarActivity.this.screenWidth != 360));
            ShoppingCarActivity.this.wareInfoList.setLayoutParams(new LinearLayout.LayoutParams(ShoppingCarActivity.this.screenWidth, DPIUtil.dip2px(129.0F) * ShoppingCarActivity.this.wareInfoList.getCount()));
          }
        });
        post(new Runnable()
        {
          public void run()
          {
            if ((ShoppingCarActivity.this.packsItem == null) || (ShoppingCarActivity.this.packsItem.size() <= 0)) {
              ((LinearLayout)ShoppingCarActivity.this.findViewById(2131494528)).setVisibility(8);
            }
            try
            {
              float f1 = Float.valueOf(ShoppingCarActivity.this.jsonCartInfoContainer.getStringOrNull("Price")).floatValue();
              float f2 = Float.valueOf(ShoppingCarActivity.this.jsonCartInfoContainer.getStringOrNull("Discount")).floatValue();
              float f3 = Float.valueOf(ShoppingCarActivity.this.jsonCartInfoContainer.getStringOrNull("RePrice")).floatValue();
              String str2 = new DecimalFormat("0.00").format(f1 - f3 - f2);
              ShoppingCarActivity.this.mOrignalPrice.setText(Constants.REN_MIN_BI + new DecimalFormat("0.00").format(f1 - f2));
              ShoppingCarActivity.this.mFanXian.setText(Constants.REN_MIN_BI + new DecimalFormat("0.00").format(f3));
              if (ShoppingCarActivity.this.wareInfoList.getCount() > 50)
              {
                ShoppingCarActivity.this.mCalAccount.setEnabled(false);
                ShoppingCarActivity.this.mCalAccount.setTextColor(Color.rgb(153, 153, 153));
                Constants.ShowMsg(ShoppingCarActivity.this.getString(2131165974), ShoppingCarActivity.this);
              }
              for (;;)
              {
                ShoppingCarActivity.this.mTotalPrice.setText(Constants.REN_MIN_BI + str2);
                if (!TextUtils.isEmpty(ShoppingCarActivity.this.yunFee)) {
                  break label470;
                }
                ShoppingCarActivity.this.yunFeeMessage.setVisibility(8);
                return;
                ((LinearLayout)ShoppingCarActivity.this.findViewById(2131494528)).setVisibility(0);
                break;
                if (!ShoppingCarActivity.this.bModified) {
                  break label444;
                }
                ShoppingCarActivity.this.mCalAccount.setEnabled(false);
                ShoppingCarActivity.this.mCalAccount.setTextColor(Color.rgb(153, 153, 153));
              }
            }
            catch (Exception localException)
            {
              for (;;)
              {
                String str1 = ShoppingCarActivity.this.getString(2131165973);
                ShoppingCarActivity.this.mOrignalPrice.setText(str1);
                ShoppingCarActivity.this.mFanXian.setText(str1);
                ShoppingCarActivity.this.mTotalPrice.setText(str1);
                continue;
                label444:
                ShoppingCarActivity.this.mCalAccount.setEnabled(true);
                ShoppingCarActivity.this.mCalAccount.setTextColor(-16777216);
              }
              label470:
              ShoppingCarActivity.this.yunFeeMessage.setVisibility(0);
              ShoppingCarActivity.this.yunFeeMessage.setText(ShoppingCarActivity.this.yunFee);
            }
          }
        });
        return;
      }
      j += ((CartTable)this.cartItem.get(k)).buyCount;
    }
  }
  
  private void setEmptyView()
  {
    Constants.skusOfSuites = null;
    post(new Runnable()
    {
      public void run()
      {
        LayoutInflater.from(ShoppingCarActivity.this);
        LinearLayout localLinearLayout1 = (LinearLayout)ShoppingCarActivity.this.findViewById(2131493361);
        LinearLayout localLinearLayout2 = (LinearLayout)ShoppingCarActivity.this.findViewById(2131493362);
        LinearLayout localLinearLayout3 = (LinearLayout)ShoppingCarActivity.this.findViewById(2131494528);
        RelativeLayout localRelativeLayout = (RelativeLayout)ImageUtil.inflate(2130903127, null).findViewById(2131493387);
        ((Button)localRelativeLayout.getChildAt(1)).setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            if (LoginUserBase.hasLogin())
            {
              Intent localIntent1 = new Intent(ShoppingCarActivity.this, CategoryActivity.class);
              localIntent1.putExtra("com.360buy:navigationFlag", true);
              localIntent1.putExtra("com.360buy:navigationId", 2);
              ShoppingCarActivity.this.startActivityInFrame(localIntent1);
              return;
            }
            Intent localIntent2 = new Intent(ShoppingCarActivity.this, NewHomeActivity.class);
            ShoppingCarActivity.this.startSingleActivityInFrame(localIntent2);
          }
        });
        localLinearLayout3.removeAllViews();
        localLinearLayout1.removeAllViews();
        localLinearLayout3.setVisibility(8);
        localLinearLayout2.setVisibility(4);
        ShoppingCarActivity.this.mDone.setVisibility(4);
        ShoppingCarActivity.this.bDeleted = true;
        ShoppingCarActivity.this.bModified = false;
        ShoppingCarActivity.this.mDone.setText(2131165987);
        ShoppingCarActivity.this.mCalAccount.setEnabled(true);
        ShoppingCarActivity.this.mCalAccount.setTextColor(-16777216);
        localLinearLayout1.addView(localRelativeLayout);
        localLinearLayout1.setVisibility(0);
      }
    });
  }
  
  private void setTextWatcher(final EditText paramEditText, final Product paramProduct)
  {
    post(new Runnable()
    {
      public void run()
      {
        paramEditText.addTextChangedListener(new TextWatcher()
        {
          public void afterTextChanged(Editable paramAnonymous2Editable)
          {
            int i = Integer.valueOf(this.val$wEditTxt.getText().toString()).intValue();
            if (i > Constants.MAX_SINGLE_PROD_COUNT)
            {
              Constants.ShowMsg(ShoppingCarActivity.this.getString(2131165974), ShoppingCarActivity.this);
              this.val$wEditTxt.selectAll();
              return;
            }
            this.val$pt.setItemCount(i);
          }
          
          public void beforeTextChanged(CharSequence paramAnonymous2CharSequence, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3) {}
          
          public void onTextChanged(CharSequence paramAnonymous2CharSequence, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3) {}
        });
      }
    });
  }
  
  private void setUpCart()
  {
    int i = 0;
    int j;
    if (this.cartItem.size() > 1)
    {
      j = 0;
      if (j < -1 + this.cartItem.size()) {
        break label37;
      }
      if (i != 0) {
        updateCartDB();
      }
    }
    return;
    label37:
    int k = j + 1;
    for (;;)
    {
      if (k >= this.cartItem.size())
      {
        j++;
        break;
      }
      try
      {
        if (((CartTable)this.cartItem.get(j)).productCode == ((CartTable)this.cartItem.get(k)).productCode)
        {
          ((CartTable)this.cartItem.get(j)).buyCount += ((CartTable)this.cartItem.get(k)).buyCount;
          this.cartItem.remove(k);
          i = 1;
        }
        label144:
        k++;
      }
      catch (Exception localException)
      {
        break label144;
      }
    }
  }
  
  private void setUpPacks()
  {
    int i = 0;
    int j;
    if (this.packsItem.size() > 1)
    {
      j = 0;
      if (j < -1 + this.packsItem.size()) {
        break label37;
      }
      if (i != 0) {
        updatePacksDB();
      }
    }
    return;
    label37:
    for (int k = j + 1;; k++)
    {
      if (k >= this.packsItem.size())
      {
        j++;
        break;
      }
      if (((PacksTable)this.packsItem.get(j)).packId == ((PacksTable)this.packsItem.get(k)).packId)
      {
        ((PacksTable)this.packsItem.get(j)).buyCount += ((PacksTable)this.packsItem.get(k)).buyCount;
        this.packsItem.remove(k);
        i = 1;
      }
    }
  }
  
  private void setViewWithItem()
  {
    this.mCalAccount.setEnabled(false);
    this.mCalAccount.setTextColor(Color.rgb(153, 153, 153));
    this.mOrignalPrice.setText(2131165732);
    this.mFanXian.setText(2131165732);
    this.mTotalPrice.setText(2131165988);
    LayoutInflater.from(this);
    LinearLayout localLinearLayout1 = (LinearLayout)findViewById(2131493361);
    LinearLayout localLinearLayout2 = (LinearLayout)ImageUtil.inflate(2130903318, null).findViewById(2131493366);
    this.wareInfoList = ((ListView)localLinearLayout2.getChildAt(0));
    if (this.bDeleted)
    {
      ((LinearLayout)findViewById(2131493362)).setVisibility(0);
      this.bDeleted = false;
      this.mDone.setVisibility(0);
    }
    showMyCartList();
    localLinearLayout1.removeAllViews();
    localLinearLayout1.addView(localLinearLayout2);
    if ((this.cartItem == null) || (this.cartItem.size() <= 0)) {
      localLinearLayout1.setVisibility(8);
    }
    for (;;)
    {
      this.wareInfoList.setClickable(true);
      return;
      localLinearLayout1.setVisibility(0);
    }
  }
  
  private void showMyCartList()
  {
    this.params = null;
    this.params = new JSONObject();
    JSONArray localJSONArray1 = new JSONArray();
    int j;
    if ((this.cartItem.size() > 0) || (this.packsItem.size() > 0)) {
      if (this.cartItem.size() > 0)
      {
        j = 0;
        if (j < this.cartItem.size()) {
          break label222;
        }
      }
    }
    label222:
    do
    {
      try
      {
        this.params.put("TheSkus", localJSONArray1);
        localJSONArray2 = new JSONArray();
        if (this.packsItem.size() > 0)
        {
          ((LinearLayout)findViewById(2131494528)).setVisibility(0);
          i = 0;
          if (i < this.packsItem.size()) {
            break label318;
          }
        }
      }
      catch (JSONException localJSONException4)
      {
        try
        {
          for (;;)
          {
            JSONArray localJSONArray2;
            int i;
            for (;;)
            {
              this.params.put("ThePacks", localJSONArray2);
              this.hs = null;
              this.hs = new HttpGroup.HttpSetting();
              this.hs.setPost(true);
              this.hs.setFunctionId(this.functionId);
              this.hs.setJsonParams(this.params);
              this.hs.setListener(new HttpGroup.OnAllListener()
              {
                public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
                {
                  for (;;)
                  {
                    int j;
                    try
                    {
                      ShoppingCarActivity.this.jsonCartInfoContainer = new JSONObjectProxy(paramAnonymousHttpResponse.getJSONObject().getJSONObject("cartInfo"));
                      ShoppingCarActivity.this.yunFee = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("message");
                      ShoppingCarActivity.this.jsonSkusInfo = ShoppingCarActivity.this.jsonCartInfoContainer.getJSONArrayOrNull("Skus");
                      ShoppingCarActivity.this.jsonPacksInfo = null;
                      ShoppingCarActivity.this.jsonPacksInfo = new JSONArrayPoxy();
                      JSONArrayPoxy localJSONArrayPoxy1 = ShoppingCarActivity.this.jsonCartInfoContainer.getJSONArrayOrNull("Suits");
                      new JSONArrayPoxy();
                      int i;
                      if (localJSONArrayPoxy1 != null)
                      {
                        ShoppingCarActivity.this.jsonManZengInfo = null;
                        ShoppingCarActivity.this.jsonManZengInfo = new JSONArrayPoxy();
                        Constants.skusOfSuites = null;
                        Constants.skusOfSuites = new JSONArrayPoxy();
                        i = 0;
                        if (i < localJSONArrayPoxy1.length()) {}
                      }
                      else
                      {
                        if ((ShoppingCarActivity.this.jsonSkusInfo != null) || (ShoppingCarActivity.this.jsonCartInfoContainer.getJSONArrayOrNull("Gifts") != null) || (ShoppingCarActivity.this.jsonPacksInfo.length() != 0)) {
                          break label577;
                        }
                        ShoppingCarActivity.this.setEmptyView();
                        if (ShoppingCarActivity.this.cartItem.size() > 0)
                        {
                          if (ShoppingCarActivity.this.dbCart == null) {
                            ShoppingCarActivity.this.dbCart = new DBHelperUtil(ShoppingCarActivity.this);
                          }
                          ShoppingCarActivity.this.dbCart.delAllCart();
                          ShoppingCarActivity.this.cartItem.clear();
                          ShoppingCarActivity.this.cartItem = null;
                          ShoppingCarActivity.this.cartItem = new ArrayList();
                        }
                        if (ShoppingCarActivity.this.packsItem.size() <= 0) {
                          break label668;
                        }
                        if (ShoppingCarActivity.this.dbCart == null) {
                          ShoppingCarActivity.this.dbCart = new DBHelperUtil(ShoppingCarActivity.this);
                        }
                        ShoppingCarActivity.this.dbCart.delAllCart();
                        ShoppingCarActivity.this.packsItem.clear();
                        return;
                      }
                      JSONArrayPoxy localJSONArrayPoxy2;
                      if ((localJSONArrayPoxy1.getJSONObject(i).getIntOrNull("SuitType") != null) && (localJSONArrayPoxy1.getJSONObject(i).getInt("SuitType") == 10))
                      {
                        JSONArrayPoxy localJSONArrayPoxy3 = localJSONArrayPoxy1.getJSONObject(i).getJSONArrayOrNull("Skus");
                        if (localJSONArrayPoxy3 != null)
                        {
                          if (ShoppingCarActivity.this.jsonSkusInfo == null) {
                            ShoppingCarActivity.this.jsonSkusInfo = new JSONArrayPoxy();
                          }
                          if (ShoppingCarActivity.this.jsonManZengInfo != null) {
                            break label669;
                          }
                          ShoppingCarActivity.this.jsonManZengInfo = new JSONArrayPoxy();
                          break label669;
                          if (k < localJSONArrayPoxy3.length()) {}
                        }
                        else
                        {
                          localJSONArrayPoxy2 = localJSONArrayPoxy1.getJSONObject(i).getJSONArrayOrNull("Skus");
                          j = 0;
                          if (j < localJSONArrayPoxy2.length()) {
                            break label552;
                          }
                          i++;
                          continue;
                        }
                        ShoppingCarActivity.this.jsonSkusInfo.put(localJSONArrayPoxy3.getJSONObject(k));
                        ShoppingCarActivity.this.jsonManZengInfo.put(localJSONArrayPoxy3.getJSONObject(k));
                        k++;
                        continue;
                      }
                      else
                      {
                        ShoppingCarActivity.this.jsonPacksInfo.put(localJSONArrayPoxy1.getJSONObject(i));
                        continue;
                      }
                      Constants.skusOfSuites.put(localJSONArrayPoxy2.getJSONObject(j).getString("Id"));
                    }
                    catch (JSONException localJSONException)
                    {
                      localJSONException.printStackTrace();
                      return;
                    }
                    label552:
                    j++;
                    continue;
                    label577:
                    if ((ShoppingCarActivity.this.jsonPacksInfo != null) && (ShoppingCarActivity.this.jsonPacksInfo.length() > 0)) {
                      ShoppingCarActivity.this.showPacksView(ShoppingCarActivity.this.jsonPacksInfo);
                    }
                    if (ShoppingCarActivity.this.jsonCartInfoContainer.getJSONArrayOrNull("Gifts") != null) {
                      ShoppingCarActivity.this.getGifts();
                    }
                    if ((ShoppingCarActivity.this.jsonCartInfoContainer.getJSONArrayOrNull("Gifts") != null) || (ShoppingCarActivity.this.jsonSkusInfo != null)) {
                      ShoppingCarActivity.this.setCartList();
                    }
                    label668:
                    return;
                    label669:
                    int k = 0;
                  }
                }
                
                public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
                
                public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2)
                {
                  ShoppingCarActivity.this.post(new Runnable()
                  {
                    public void run()
                    {
                      ShoppingCarActivity.this.mCalAccount.setEnabled(false);
                      ShoppingCarActivity.this.mCalAccount.setTextColor(Color.rgb(153, 153, 153));
                      ShoppingCarActivity.this.mTotalPrice.setText(2131165988);
                    }
                  });
                }
                
                public void onStart() {}
              });
              this.hs.setNotifyUser(true);
              getHttpGroupaAsynPool().add(this.hs);
              return;
              JSONObject localJSONObject2 = new JSONObject();
              try
              {
                localJSONObject2.put("Id", String.valueOf(((CartTable)this.cartItem.get(j)).productCode));
                localJSONObject2.put("num", String.valueOf(((CartTable)this.cartItem.get(j)).buyCount));
                localJSONArray1.put(localJSONObject2);
                j++;
              }
              catch (JSONException localJSONException3)
              {
                for (;;)
                {
                  localJSONException3.printStackTrace();
                }
              }
            }
            localJSONException4 = localJSONException4;
            localJSONException4.printStackTrace();
            continue;
            JSONObject localJSONObject1 = new JSONObject();
            try
            {
              localJSONObject1.put("Id", String.valueOf(((PacksTable)this.packsItem.get(i)).packId));
              localJSONObject1.put("num", String.valueOf(((PacksTable)this.packsItem.get(i)).buyCount));
              localJSONArray2.put(localJSONObject1);
              i++;
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
        catch (JSONException localJSONException2)
        {
          for (;;)
          {
            localJSONException2.printStackTrace();
          }
        }
      }
      setEmptyView();
      if (this.cartItem.size() > 0)
      {
        if (this.dbCart == null) {
          this.dbCart = new DBHelperUtil(this);
        }
        this.dbCart.delAllCart();
        this.cartItem.clear();
        this.cartItem = null;
        this.cartItem = new ArrayList();
      }
    } while (this.packsItem.size() <= 0);
    label318:
    if (this.dbCart == null) {
      this.dbCart = new DBHelperUtil(this);
    }
    this.dbCart.delAllPacksCart();
    this.packsItem.clear();
  }
  
  private void showPacksView(final JSONArrayPoxy paramJSONArrayPoxy)
  {
    post(new Runnable()
    {
      public void run()
      {
        LayoutInflater.from(ShoppingCarActivity.this);
        LinearLayout localLinearLayout = (LinearLayout)ShoppingCarActivity.this.findViewById(2131494528);
        ((LinearLayout)ShoppingCarActivity.this.findViewById(2131493361));
        ShoppingCarActivity.this.packLayoutGp = null;
        ShoppingCarActivity.this.packLayoutGp = new ArrayList();
        ShoppingCarActivity.this.listView = new ArrayList();
        localLinearLayout.removeAllViews();
        int i = 0;
        for (;;)
        {
          if (i >= paramJSONArrayPoxy.length()) {
            return;
          }
          JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(i);
          if (localJSONObjectProxy != null) {}
          try
          {
            if ((localJSONObjectProxy.getIntOrNull("SuitType") != null) && (localJSONObjectProxy.getInt("SuitType") == 6))
            {
              localJSONArrayPoxy = localJSONObjectProxy.getJSONArrayOrNull("Skus");
              if (localJSONArrayPoxy != null)
              {
                View localView1 = ImageUtil.inflate(2130903239, null);
                ShoppingCarActivity.this.addPackTitleView(localView1, localJSONObjectProxy, i);
                localLinearLayout.addView(localView1);
                j = 0;
                if (j < localJSONArrayPoxy.length()) {
                  break label235;
                }
                localView3 = ImageUtil.inflate(2130903236, null);
                ShoppingCarActivity.this.packLayoutGp.add(localView3);
              }
            }
          }
          catch (JSONException localJSONException1)
          {
            try
            {
              for (;;)
              {
                JSONArrayPoxy localJSONArrayPoxy;
                int j;
                View localView3;
                ShoppingCarActivity.this.addEditView(localView3, localJSONObjectProxy.getInt("Num"), localJSONObjectProxy, i);
                localLinearLayout.addView(localView3);
                i++;
                break;
                label235:
                View localView2 = ImageUtil.inflate(2130903233, null);
                ShoppingCarActivity.this.listView.add(localView2);
                ShoppingCarActivity.this.addPackView(localJSONArrayPoxy.getJSONObjectOrNull(j), j, localView2);
                if (j % 2 == 1) {
                  localView2.setBackgroundResource(2130838108);
                }
                try
                {
                  for (;;)
                  {
                    final long l = localJSONArrayPoxy.getJSONObjectOrNull(j).getLong("Id");
                    String str = localJSONArrayPoxy.getJSONObjectOrNull(j).getString("Name");
                    View.OnClickListener local1 = new View.OnClickListener()
                    {
                      public void onClick(View paramAnonymous2View)
                      {
                        StartActivityUtils.startProductDetailActivity(ShoppingCarActivity.this, Long.valueOf(l), this.val$name, new SourceEntity("shoppingCart_pack", null));
                      }
                    };
                    localView2.setOnClickListener(local1);
                    localLinearLayout.addView(localView2);
                    j++;
                    break;
                    localView2.setBackgroundResource(2130838110);
                  }
                  localJSONException1 = localJSONException1;
                  localJSONException1.printStackTrace();
                }
                catch (JSONException localJSONException2)
                {
                  for (;;)
                  {
                    localJSONException2.printStackTrace();
                  }
                }
              }
            }
            catch (JSONException localJSONException3)
            {
              for (;;)
              {
                localJSONException3.printStackTrace();
              }
            }
          }
        }
      }
    });
    post(new Runnable()
    {
      public void run()
      {
        LinearLayout localLinearLayout = (LinearLayout)ShoppingCarActivity.this.findViewById(2131493361);
        ArrayList localArrayList = ShoppingCarActivity.this.cartItem;
        int i = 0;
        if (localArrayList != null) {
          i = ShoppingCarActivity.this.cartItem.size();
        }
        if ((ShoppingCarActivity.this.jsonSkusInfo == null) || (i <= 0)) {
          localLinearLayout.removeAllViews();
        }
        try
        {
          float f1 = Float.valueOf(ShoppingCarActivity.this.jsonCartInfoContainer.getStringOrNull("Price")).floatValue();
          float f2 = Float.valueOf(ShoppingCarActivity.this.jsonCartInfoContainer.getStringOrNull("Discount")).floatValue();
          float f3 = Float.valueOf(ShoppingCarActivity.this.jsonCartInfoContainer.getStringOrNull("RePrice")).floatValue();
          String str2 = new DecimalFormat("0.00").format(f1 - f3 - f2);
          ShoppingCarActivity.this.mOrignalPrice.setText(Constants.REN_MIN_BI + new DecimalFormat("0.00").format(f1 - f2));
          ShoppingCarActivity.this.mFanXian.setText(Constants.REN_MIN_BI + new DecimalFormat("0.00").format(f3));
          ShoppingCarActivity.this.mTotalPrice.setText(Constants.REN_MIN_BI + str2);
          if (ShoppingCarActivity.this.bModified)
          {
            ShoppingCarActivity.this.mCalAccount.setEnabled(false);
            ShoppingCarActivity.this.mCalAccount.setTextColor(Color.rgb(153, 153, 153));
            return;
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            String str1 = ShoppingCarActivity.this.getString(2131165973);
            ShoppingCarActivity.this.mOrignalPrice.setText(str1);
            ShoppingCarActivity.this.mFanXian.setText(str1);
            ShoppingCarActivity.this.mTotalPrice.setText(str1);
          }
          ShoppingCarActivity.this.mCalAccount.setEnabled(true);
          ShoppingCarActivity.this.mCalAccount.setTextColor(-16777216);
        }
      }
    }, 300);
  }
  
  private void startDel(int paramInt, Product paramProduct)
  {
    this.params = new JSONObject();
    JSONArray localJSONArray = new JSONArray();
    int i;
    if (this.cartItem.size() > 0)
    {
      i = 0;
      if (i < this.cartItem.size()) {}
    }
    do
    {
      try
      {
        for (;;)
        {
          this.params.put("TheSkus", localJSONArray);
          if (LoginUserBase.hasLogin())
          {
            this.params.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
            return;
            JSONObject localJSONObject = new JSONObject();
            try
            {
              localJSONObject.put("Id", String.valueOf(((CartTable)this.cartItem.get(i)).productCode));
              localJSONObject.put("num", String.valueOf(((CartTable)this.cartItem.get(i)).buyCount));
              localJSONArray.put(localJSONObject);
              i++;
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
        this.params.put("pin", "Hechel12");
        return;
      }
      catch (JSONException localJSONException2)
      {
        localJSONException2.printStackTrace();
        return;
      }
      setEmptyView();
    } while (this.cartItem.size() <= 0);
    if (this.dbCart == null) {
      this.dbCart = new DBHelperUtil(this);
    }
    this.dbCart.delAllCart();
    this.cartItem.clear();
    this.cartItem = null;
    this.cartItem = new ArrayList();
  }
  
  private boolean tooManyProd()
  {
    int i = 0;
    int j = 0;
    int k = this.wareInfoList.getCount();
    boolean bool = false;
    if (j >= k) {}
    int m;
    int n;
    for (;;)
    {
      m = 0;
      if (m < this.wareInfoList.getCount()) {
        break label221;
      }
      if ((this.packLayoutGp != null) && (this.packLayoutGp.size() > 0))
      {
        n = 0;
        if (n < this.packLayoutGp.size()) {
          break label341;
        }
      }
      if (i > Constants.MAX_SINGLE_PROD_COUNT)
      {
        Constants.ShowMsg(getString(2131165975), this);
        bool = true;
      }
      return bool;
      ViewGroup localViewGroup1 = (ViewGroup)this.wareInfoList.getChildAt(j);
      if (localViewGroup1 == null) {}
      EditText localEditText1;
      do
      {
        do
        {
          j++;
          break;
          localEditText1 = (EditText)localViewGroup1.getChildAt(4);
        } while (localEditText1 == null);
        if ((localEditText1.getText().toString().length() < 1) || (localEditText1.getText().toString() == "") || (localEditText1.getText().toString() == " ")) {
          localEditText1.setText("1");
        }
      } while (Integer.valueOf(localEditText1.getText().toString()).intValue() <= Constants.MAX_SINGLE_PROD_COUNT);
      localEditText1.selectAll();
      bool = true;
    }
    label221:
    ViewGroup localViewGroup2 = (ViewGroup)this.wareInfoList.getChildAt(m);
    if (localViewGroup2 == null) {}
    for (;;)
    {
      m++;
      break;
      EditText localEditText2 = (EditText)localViewGroup2.getChildAt(4);
      if (localEditText2 != null)
      {
        if ((localEditText2.getText().toString().length() < 1) || (localEditText2.getText().toString() == "") || (localEditText2.getText().toString() == " ")) {
          localEditText2.setText("1");
        }
        i += Integer.valueOf(localEditText2.getText().toString()).intValue();
      }
    }
    label341:
    EditText localEditText3 = (EditText)((View)this.packLayoutGp.get(n)).findViewById(2131494020);
    if ((localEditText3.getText().toString().length() < 1) || (localEditText3.getText().toString() == "") || (localEditText3.getText().toString() == " ")) {
      localEditText3.setText("1");
    }
    if (n < this.packsItem.size()) {
      i += Integer.valueOf(localEditText3.getText().toString().trim()).intValue() * ((PacksTable)this.packsItem.get(n)).childCount;
    }
    for (;;)
    {
      n++;
      break;
      i += Integer.valueOf(localEditText3.getText().toString().trim()).intValue();
    }
  }
  
  private void unEnableEditList()
  {
    int i = 0;
    if (i >= this.wareInfoList.getCount()) {
      return;
    }
    ViewGroup localViewGroup = (ViewGroup)this.wareInfoList.getChildAt(i);
    if (localViewGroup == null) {}
    for (;;)
    {
      i++;
      break;
      EditText localEditText = (EditText)localViewGroup.getChildAt(4);
      if (localEditText != null) {
        localEditText.setEnabled(false);
      }
    }
  }
  
  private void updateCartDB()
  {
    this.dbCart = new DBHelperUtil(this);
    this.dbCart.delAllCartNoListener();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i >= this.cartItem.size())
    {
      if ((localArrayList != null) && (localArrayList.size() > 0)) {
        this.dbCart.insertAllCart(localArrayList);
      }
    }
    else
    {
      if ((((CartTable)this.cartItem.get(i)).buyCount == 0) || (String.valueOf(((CartTable)this.cartItem.get(i)).buyCount).length() < 1)) {}
      for (;;)
      {
        i++;
        break;
        localArrayList.add(new CartTable(((CartTable)this.cartItem.get(i)).name, ((CartTable)this.cartItem.get(i)).productCode, ((CartTable)this.cartItem.get(i)).buyCount, ((CartTable)this.cartItem.get(i)).sourceType, ((CartTable)this.cartItem.get(i)).sourceValue));
      }
    }
    MainFrameActivity.validatCartIcon();
  }
  
  private void updateCartItem()
  {
    this.jsonCartInfoContainer = new JSONObjectProxy();
    this.jsonGiftsInfo = new JSONArrayPoxy();
    this.jsonManZengInfo = new JSONArrayPoxy();
    this.jsonPacksInfo = new JSONArrayPoxy();
    this.jsonSkusInfo = new JSONArrayPoxy();
    this.hasZengArray = new ArrayList();
    this.params = null;
    this.params = new JSONObject();
    JSONArray localJSONArray1 = new JSONArray();
    int j;
    if ((this.cartItem.size() > 0) || (this.packsItem.size() > 0)) {
      if (this.cartItem.size() > 0)
      {
        j = 0;
        if (j < this.cartItem.size()) {
          break label292;
        }
      }
    }
    label292:
    do
    {
      try
      {
        this.params.put("TheSkus", localJSONArray1);
        if (LoginUserBase.hasLogin()) {
          this.params.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
        }
        localJSONArray2 = new JSONArray();
        if (this.packsItem.size() > 0)
        {
          i = 0;
          if (i < this.packsItem.size()) {}
        }
      }
      catch (JSONException localJSONException4)
      {
        for (;;)
        {
          try
          {
            JSONArray localJSONArray2;
            int i;
            for (;;)
            {
              this.params.put("ThePacks", localJSONArray2);
              this.hs = null;
              this.hs = new HttpGroup.HttpSetting();
              this.hs.setPost(true);
              this.hs.setFunctionId(this.functionId);
              this.hs.setJsonParams(this.params);
              this.hs.setListener(new HttpGroup.OnAllListener()
              {
                public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
                {
                  for (;;)
                  {
                    int j;
                    try
                    {
                      ShoppingCarActivity.this.jsonCartInfoContainer = null;
                      ShoppingCarActivity.this.jsonCartInfoContainer = new JSONObjectProxy(paramAnonymousHttpResponse.getJSONObject().getJSONObject("cartInfo"));
                      ShoppingCarActivity.this.yunFee = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("message");
                      ShoppingCarActivity.this.jsonSkusInfo = ShoppingCarActivity.this.jsonCartInfoContainer.getJSONArrayOrNull("Skus");
                      ShoppingCarActivity.this.jsonPacksInfo = null;
                      ShoppingCarActivity.this.jsonPacksInfo = new JSONArrayPoxy();
                      JSONArrayPoxy localJSONArrayPoxy1 = ShoppingCarActivity.this.jsonCartInfoContainer.getJSONArrayOrNull("Suits");
                      new JSONArrayPoxy();
                      int i;
                      if (localJSONArrayPoxy1 != null)
                      {
                        ShoppingCarActivity.this.jsonManZengInfo = null;
                        ShoppingCarActivity.this.jsonManZengInfo = new JSONArrayPoxy();
                        Constants.skusOfSuites = null;
                        Constants.skusOfSuites = new JSONArrayPoxy();
                        i = 0;
                        if (i < localJSONArrayPoxy1.length()) {}
                      }
                      else
                      {
                        if ((ShoppingCarActivity.this.jsonSkusInfo != null) || (ShoppingCarActivity.this.jsonCartInfoContainer.getJSONArrayOrNull("Gifts") != null) || (ShoppingCarActivity.this.jsonPacksInfo != null)) {
                          break label582;
                        }
                        ShoppingCarActivity.this.setEmptyView();
                        if (ShoppingCarActivity.this.cartItem.size() > 0)
                        {
                          if (ShoppingCarActivity.this.dbCart == null) {
                            ShoppingCarActivity.this.dbCart = new DBHelperUtil(ShoppingCarActivity.this);
                          }
                          ShoppingCarActivity.this.dbCart.delAllCart();
                          ShoppingCarActivity.this.cartItem.clear();
                          ShoppingCarActivity.this.cartItem = null;
                          ShoppingCarActivity.this.cartItem = new ArrayList();
                        }
                        if (ShoppingCarActivity.this.packsItem.size() <= 0) {
                          break label694;
                        }
                        if (ShoppingCarActivity.this.dbCart == null) {
                          ShoppingCarActivity.this.dbCart = new DBHelperUtil(ShoppingCarActivity.this);
                        }
                        ShoppingCarActivity.this.dbCart.delAllCart();
                        ShoppingCarActivity.this.packsItem.clear();
                        return;
                      }
                      JSONArrayPoxy localJSONArrayPoxy2;
                      if ((localJSONArrayPoxy1.getJSONObject(i).getIntOrNull("SuitType") != null) && (localJSONArrayPoxy1.getJSONObject(i).getInt("SuitType") == 10))
                      {
                        JSONArrayPoxy localJSONArrayPoxy3 = localJSONArrayPoxy1.getJSONObject(i).getJSONArrayOrNull("Skus");
                        if (localJSONArrayPoxy3 != null)
                        {
                          if (ShoppingCarActivity.this.jsonSkusInfo == null) {
                            ShoppingCarActivity.this.jsonSkusInfo = new JSONArrayPoxy();
                          }
                          if (ShoppingCarActivity.this.jsonManZengInfo != null) {
                            break label695;
                          }
                          ShoppingCarActivity.this.jsonManZengInfo = new JSONArrayPoxy();
                          break label695;
                          if (k < localJSONArrayPoxy3.length()) {}
                        }
                        else
                        {
                          localJSONArrayPoxy2 = localJSONArrayPoxy1.getJSONObject(i).getJSONArrayOrNull("Skus");
                          j = 0;
                          if (j < localJSONArrayPoxy2.length()) {
                            break label557;
                          }
                          i++;
                          continue;
                        }
                        ShoppingCarActivity.this.jsonSkusInfo.put(localJSONArrayPoxy3.getJSONObject(k));
                        ShoppingCarActivity.this.jsonManZengInfo.put(localJSONArrayPoxy3.getJSONObject(k));
                        k++;
                        continue;
                      }
                      else
                      {
                        ShoppingCarActivity.this.jsonPacksInfo.put(localJSONArrayPoxy1.getJSONObject(i));
                        continue;
                      }
                      Constants.skusOfSuites.put(localJSONArrayPoxy2.getJSONObject(j).getString("Id"));
                    }
                    catch (JSONException localJSONException)
                    {
                      localJSONException.printStackTrace();
                      return;
                    }
                    label557:
                    j++;
                    continue;
                    label582:
                    boolean bool = ShoppingCarActivity.this.checkPacks(ShoppingCarActivity.this.jsonPacksInfo);
                    if ((ShoppingCarActivity.this.jsonPacksInfo != null) && (ShoppingCarActivity.this.jsonPacksInfo.length() > 0) && (bool)) {
                      ShoppingCarActivity.this.showPacksView(ShoppingCarActivity.this.jsonPacksInfo);
                    }
                    if (ShoppingCarActivity.this.jsonCartInfoContainer.getJSONArrayOrNull("Gifts") != null) {
                      ShoppingCarActivity.this.getGifts();
                    }
                    if ((ShoppingCarActivity.this.jsonCartInfoContainer.getJSONArrayOrNull("Gifts") != null) || (ShoppingCarActivity.this.jsonSkusInfo != null)) {
                      ShoppingCarActivity.this.updateCartList();
                    }
                    label694:
                    return;
                    label695:
                    int k = 0;
                  }
                }
                
                public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
                
                public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2)
                {
                  ShoppingCarActivity.this.post(new Runnable()
                  {
                    public void run()
                    {
                      ShoppingCarActivity.this.mCalAccount.setEnabled(false);
                      ShoppingCarActivity.this.mCalAccount.setTextColor(Color.rgb(153, 153, 153));
                      ShoppingCarActivity.this.mTotalPrice.setText(2131165988);
                    }
                  });
                }
                
                public void onStart() {}
              });
              getHttpGroupaAsynPool().add(this.hs);
              return;
              JSONObject localJSONObject2 = new JSONObject();
              try
              {
                localJSONObject2.put("Id", String.valueOf(((CartTable)this.cartItem.get(j)).productCode));
                localJSONObject2.put("num", String.valueOf(((CartTable)this.cartItem.get(j)).buyCount));
                localJSONArray1.put(localJSONObject2);
                j++;
              }
              catch (JSONException localJSONException3)
              {
                for (;;)
                {
                  localJSONException3.printStackTrace();
                }
              }
            }
            localJSONException4 = localJSONException4;
            localJSONException4.printStackTrace();
            continue;
            JSONObject localJSONObject1 = new JSONObject();
            try
            {
              localJSONObject1.put("Id", String.valueOf(((PacksTable)this.packsItem.get(i)).packId));
              localJSONObject1.put("num", String.valueOf(((PacksTable)this.packsItem.get(i)).buyCount));
              localJSONArray2.put(localJSONObject1);
              i++;
            }
            catch (JSONException localJSONException1)
            {
              localJSONException1.printStackTrace();
              continue;
            }
          }
          catch (JSONException localJSONException2)
          {
            localJSONException2.printStackTrace();
            continue;
          }
          post(new Runnable()
          {
            public void run()
            {
              LinearLayout localLinearLayout = (LinearLayout)ShoppingCarActivity.this.findViewById(2131494528);
              localLinearLayout.removeAllViews();
              localLinearLayout.setVisibility(8);
            }
          });
        }
      }
      setEmptyView();
      if (this.cartItem.size() > 0)
      {
        if (this.dbCart == null) {
          this.dbCart = new DBHelperUtil(this);
        }
        this.dbCart.delAllCart();
        this.cartItem.clear();
        this.cartItem = null;
        this.cartItem = new ArrayList();
      }
    } while (this.packsItem.size() <= 0);
    if (this.dbCart == null) {
      this.dbCart = new DBHelperUtil(this);
    }
    this.dbCart.delAllPacksCart();
    this.packsItem.clear();
  }
  
  private void updateCartItemData()
  {
    if (this.wareInfoList.getCount() < 1) {
      return;
    }
    int i = 0;
    label14:
    if (i >= this.wareInfoList.getCount()) {}
    for (int k = 0;; k++)
    {
      if (k >= this.cartItem.size())
      {
        updateCartDB();
        return;
        ViewGroup localViewGroup = (ViewGroup)this.wareInfoList.getChildAt(i);
        if (localViewGroup == null) {}
        label453:
        for (;;)
        {
          i++;
          break label14;
          EditText localEditText = (EditText)localViewGroup.getChildAt(4);
          if (localEditText != null)
          {
            Product localProduct = (Product)this.wareInfoList.getAdapter().getItem(i);
            if ((this.cartItem == null) || (this.cartItem.size() < 1) || (i >= this.cartItem.size())) {
              break;
            }
            if (((CartTable)this.cartItem.get(i)).productCode == localProduct.getId().longValue())
            {
              if ((localEditText.getText().toString() == null) || (localEditText.getText().toString() == "") || (localEditText.getText().toString() == " ") || (localEditText.getText().toString().length() < 1) || (Integer.valueOf(localEditText.getText().toString()).intValue() == 0)) {
                ((CartTable)this.cartItem.get(i)).buyCount = 0;
              } else {
                ((CartTable)this.cartItem.get(i)).buyCount = Integer.valueOf(localEditText.getText().toString()).intValue();
              }
            }
            else {
              for (int j = 0;; j++)
              {
                if (j >= this.cartItem.size()) {
                  break label453;
                }
                if (((CartTable)this.cartItem.get(j)).productCode == localProduct.getId().longValue())
                {
                  if ((localEditText.getText().toString() == null) || (localEditText.getText().toString() == "") || (localEditText.getText().toString() == " ") || (localEditText.getText().toString().length() < 1) || (Integer.valueOf(localEditText.getText().toString()).intValue() == 0))
                  {
                    ((CartTable)this.cartItem.get(j)).buyCount = 0;
                    break;
                  }
                  ((CartTable)this.cartItem.get(j)).buyCount = Integer.valueOf(localEditText.getText().toString()).intValue();
                  break;
                }
              }
            }
          }
        }
      }
      if (((CartTable)this.cartItem.get(k)).buyCount == 0)
      {
        this.cartItem.remove(k);
        k--;
      }
    }
  }
  
  private void updateCartList()
  {
    setCartList();
  }
  
  private void updatePackItemData()
  {
    if ((this.packLayoutGp == null) || (this.packLayoutGp.size() <= 0)) {
      return;
    }
    int i = 0;
    if (i >= this.packLayoutGp.size()) {}
    for (int j = 0;; j++)
    {
      if (j >= this.packsItem.size())
      {
        updatePacksDB();
        return;
        if (i >= this.packsItem.size()) {
          break;
        }
        EditText localEditText = (EditText)((View)this.packLayoutGp.get(i)).findViewById(2131494020);
        if ((localEditText.getText().toString() == "") || (localEditText.getText().toString() == " ") || (localEditText.getText().toString().length() <= 0)) {}
        for (((PacksTable)this.packsItem.get(i)).buyCount = 0;; ((PacksTable)this.packsItem.get(i)).buyCount = Integer.valueOf(localEditText.getText().toString().trim()).intValue())
        {
          i++;
          break;
        }
      }
      if (((PacksTable)this.packsItem.get(j)).buyCount == 0)
      {
        this.packsItem.remove(j);
        j--;
      }
    }
  }
  
  private void updatePacksDB()
  {
    this.dbCart = new DBHelperUtil(this);
    this.dbCart.delAllPacksCartNoListener();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i >= this.packsItem.size())
    {
      if ((localArrayList != null) && (localArrayList.size() > 0)) {
        this.dbCart.insertAllPacksCart(localArrayList);
      }
    }
    else
    {
      if ((((PacksTable)this.packsItem.get(i)).buyCount == 0) || (String.valueOf(((PacksTable)this.packsItem.get(i)).buyCount).length() < 1)) {}
      for (;;)
      {
        i++;
        break;
        localArrayList.add(new PacksTable(((PacksTable)this.packsItem.get(i)).packId, ((PacksTable)this.packsItem.get(i)).name, ((PacksTable)this.packsItem.get(i)).buyCount, ((PacksTable)this.packsItem.get(i)).childCount, ((PacksTable)this.packsItem.get(i)).sourceType, ((PacksTable)this.packsItem.get(i)).sourceValue));
      }
    }
    MainFrameActivity.validatCartIcon();
  }
  
  private void updateSinglePacksDB(int paramInt)
  {
    this.dbCart = new DBHelperUtil(this);
    this.dbCart.updatePacksCart(((PacksTable)this.packsItem.get(paramInt)).packId, ((PacksTable)this.packsItem.get(paramInt)).name, ((PacksTable)this.packsItem.get(paramInt)).buyCount, ((PacksTable)this.packsItem.get(paramInt)).childCount, ((PacksTable)this.packsItem.get(paramInt)).sourceType, ((PacksTable)this.packsItem.get(paramInt)).sourceValue);
  }
  
  public boolean checkPacks(JSONArrayPoxy paramJSONArrayPoxy)
  {
    localArrayList1 = null;
    for (;;)
    {
      try
      {
        if (this.packsItem != null)
        {
          Log.d("packs-length", "jbSkusInfo.length():" + paramJSONArrayPoxy.length() + "; packsItem.size():" + this.packsItem.size());
          if (paramJSONArrayPoxy.length() == this.packsItem.size())
          {
            boolean bool2 = isChildSame(paramJSONArrayPoxy);
            if (!bool2) {
              continue;
            }
          }
        }
      }
      catch (JSONException localJSONException)
      {
        ArrayList localArrayList2;
        int i;
        localJSONException.printStackTrace();
        continue;
        if (paramJSONArrayPoxy.getJSONObjectOrNull(i) == null) {
          continue;
        }
        String str1 = null;
        String str2 = null;
        if (localArrayList1 == null) {
          continue;
        }
        Iterator localIterator = localArrayList1.iterator();
        boolean bool1 = localIterator.hasNext();
        str1 = null;
        str2 = null;
        if (bool1) {
          continue;
        }
        localArrayList2.add(new PacksTable(Long.valueOf(paramJSONArrayPoxy.getJSONObjectOrNull(i).get("Id").toString()).longValue(), paramJSONArrayPoxy.getJSONObjectOrNull(i).getString("Name"), paramJSONArrayPoxy.getJSONObjectOrNull(i).getInt("Num"), paramJSONArrayPoxy.getJSONObjectOrNull(i).getJSONArrayOrNull("Skus").length(), str1, str2));
        continue;
        PacksTable localPacksTable = (PacksTable)localIterator.next();
        if (localPacksTable.packId != Long.valueOf(paramJSONArrayPoxy.getJSONObjectOrNull(i).get("Id").toString()).longValue()) {
          continue;
        }
        str1 = localPacksTable.sourceType;
        str2 = localPacksTable.sourceValue;
        continue;
        MainFrameActivity.validatCartIcon();
        continue;
        i++;
        continue;
      }
      try
      {
        localArrayList1 = this.dbCart.getPacksList();
        this.dbCart.delAllPacksCart();
        localArrayList2 = new ArrayList();
        i = 0;
        if (i >= paramJSONArrayPoxy.length())
        {
          if ((localArrayList2 == null) || (localArrayList2.size() <= 0)) {
            continue;
          }
          this.dbCart.insertAllPacksCart(localArrayList2);
          return getPackItem();
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public boolean checkSkus(JSONArrayPoxy paramJSONArrayPoxy)
  {
    try
    {
      if ((this.cartItem == null) || (paramJSONArrayPoxy.length() == this.cartItem.size())) {
        break label79;
      }
      localArrayList1 = this.dbCart.getCartList();
      this.dbCart.delAllCart();
      localArrayList2 = new ArrayList();
      i = 0;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        ArrayList localArrayList1;
        ArrayList localArrayList2;
        int i;
        label79:
        label253:
        localJSONException.printStackTrace();
        label194:
        continue;
        label267:
        i++;
      }
    }
    if (i >= paramJSONArrayPoxy.length())
    {
      if ((localArrayList2 == null) || (localArrayList2.size() <= 0)) {
        break label253;
      }
      this.dbCart.insertAllCart(localArrayList2);
    }
    for (;;)
    {
      return getCartItem();
      if (paramJSONArrayPoxy.getJSONObjectOrNull(i) == null) {
        break;
      }
      String str1 = null;
      String str2 = null;
      Iterator localIterator;
      if (localArrayList1 != null)
      {
        localIterator = localArrayList1.iterator();
        boolean bool = localIterator.hasNext();
        str1 = null;
        str2 = null;
        if (bool) {
          break label194;
        }
      }
      for (;;)
      {
        localArrayList2.add(new CartTable(paramJSONArrayPoxy.getJSONObjectOrNull(i).getString("Name"), Long.valueOf(paramJSONArrayPoxy.getJSONObjectOrNull(i).get("Id").toString()).longValue(), paramJSONArrayPoxy.getJSONObjectOrNull(i).getInt("Num"), str1, str2));
        break label267;
        CartTable localCartTable = (CartTable)localIterator.next();
        if (localCartTable.productCode != Long.valueOf(paramJSONArrayPoxy.getJSONObjectOrNull(i).get("Id").toString()).longValue()) {
          break;
        }
        str1 = localCartTable.sourceType;
        str2 = localCartTable.sourceValue;
      }
      MainFrameActivity.validatCartIcon();
    }
  }
  
  public boolean isChildSame(JSONArrayPoxy paramJSONArrayPoxy)
  {
    if (paramJSONArrayPoxy.length() != this.packsItem.size()) {
      return true;
    }
    for (int i = 0;; i++)
    {
      if (i >= paramJSONArrayPoxy.length()) {
        return false;
      }
      JSONArrayPoxy localJSONArrayPoxy = paramJSONArrayPoxy.getJSONObjectOrNull(i).getJSONArrayOrNull("Skus");
      int j = 0;
      if (localJSONArrayPoxy != null) {
        j = 0 + localJSONArrayPoxy.length();
      }
      if (j != ((PacksTable)this.packsItem.get(i)).childCount) {
        return true;
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903307);
    getScreenHW();
    getCartItem();
    getPackItem();
    initComponent();
    handleClickEvent();
    Constants.skusOfSuites = null;
    this.bModified = false;
    if (((this.cartItem == null) || (this.cartItem.size() < 1)) && ((this.packsItem == null) || (this.packsItem.size() < 1)))
    {
      setEmptyView();
      if (this.cartItem.size() > 0)
      {
        if (this.dbCart == null) {
          this.dbCart = new DBHelperUtil(this);
        }
        this.dbCart.delAllCart();
        this.cartItem.clear();
        this.cartItem = null;
        this.cartItem = new ArrayList();
      }
      if (this.packsItem.size() > 0)
      {
        if (this.dbCart == null) {
          this.dbCart = new DBHelperUtil(this);
        }
        this.dbCart.delAllPacksCart();
        this.packsItem.clear();
      }
    }
    addResumeListener(new IResumeListener()
    {
      public void onResume()
      {
        if (ShoppingCarActivity.isGoFillOrder)
        {
          ShoppingCarActivity.isGoFillOrder = false;
          ShoppingCarActivity.this.forwardOrder();
        }
      }
    });
  }
  
  public void onDestroy()
  {
    this.list = null;
    Constants.hasNewTocart = false;
    this.cartItem = null;
    super.onDestroy();
  }
  
  public void onResume()
  {
    super.onResume();
    this.jsonCartInfoContainer = new JSONObjectProxy();
    this.jsonGiftsInfo = new JSONArrayPoxy();
    this.jsonManZengInfo = new JSONArrayPoxy();
    this.jsonPacksInfo = new JSONArrayPoxy();
    this.jsonSkusInfo = new JSONArrayPoxy();
    this.hasZengArray = new ArrayList();
    Constants.skusOfSuites = null;
    if (this.bModified)
    {
      this.bModified = false;
      this.mDone.setText(2131165987);
      this.mCalAccount.setEnabled(true);
      this.mCalAccount.setTextColor(-16777216);
    }
    if (Constants.hasNewTocart)
    {
      getCartItem();
      getPackItem();
      setViewWithItem();
      Constants.hasNewTocart = false;
    }
    do
    {
      return;
      if (((this.cartItem != null) && (this.cartItem.size() >= 1)) || ((this.packsItem != null) && (this.packsItem.size() >= 1))) {
        break label333;
      }
      getCartItem();
      getPackItem();
      if (((this.cartItem != null) && (this.cartItem.size() >= 1)) || ((this.packsItem != null) && (this.packsItem.size() >= 1))) {
        break;
      }
      setEmptyView();
      if (this.cartItem.size() > 0)
      {
        if (this.dbCart == null) {
          this.dbCart = new DBHelperUtil(this);
        }
        this.dbCart.delAllCart();
        this.cartItem.clear();
        this.cartItem = null;
        this.cartItem = new ArrayList();
      }
    } while (this.packsItem.size() <= 0);
    if (this.dbCart == null) {
      this.dbCart = new DBHelperUtil(this);
    }
    this.dbCart.delAllPacksCart();
    this.packsItem.clear();
    return;
    setViewWithItem();
    return;
    label333:
    setViewWithItem();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.ShoppingCarActivity
 * JD-Core Version:    0.7.0.1
 */