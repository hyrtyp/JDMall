package com.unionpay.upomp.bypay.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.unionpay.upomp.bypay.other.cy;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.util.Utils;

public class MainBottom
  extends LinearLayout
  implements View.OnClickListener, View.OnTouchListener
{
  private Context a;
  public Button btnAccount;
  public Button btnCard;
  public Button btnExit;
  public Button btnPay;
  public Handler menuActionHandle = new cy(this);
  
  public MainBottom(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
    a();
  }
  
  public MainBottom(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
    a();
  }
  
  private void a()
  {
    View localView = LayoutInflater.from(this.a).inflate(Utils.getResourceId(Utils.a, "layout", "upomp_bypay_bottom"), null);
    if (this.btnAccount == null) {
      this.btnAccount = ((Button)localView.findViewById(Utils.getResourceId(Utils.a, "id", "btn_account")));
    }
    if (this.btnCard == null) {
      this.btnCard = ((Button)localView.findViewById(Utils.getResourceId(Utils.a, "id", "btn_card")));
    }
    if (this.btnPay == null) {
      this.btnPay = ((Button)localView.findViewById(Utils.getResourceId(Utils.a, "id", "btn_pay")));
    }
    if (this.btnExit == null) {
      this.btnExit = ((Button)localView.findViewById(Utils.getResourceId(Utils.a, "id", "btn_exit")));
    }
    b();
    c();
    localView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    addView(localView);
  }
  
  private void b()
  {
    switch (eh.p)
    {
    default: 
      return;
    case 0: 
      this.btnPay.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav1_on"));
      this.btnAccount.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav2_default"));
      this.btnCard.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav3_default"));
      this.btnExit.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav4_default"));
      return;
    case 1: 
      this.btnPay.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav1_default"));
      this.btnAccount.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav2_on"));
      this.btnCard.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav3_default"));
      this.btnExit.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav4_default"));
      return;
    case 2: 
      this.btnPay.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav1_default"));
      this.btnAccount.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav2_default"));
      this.btnCard.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav3_on"));
      this.btnExit.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav4_default"));
      return;
    }
    this.btnPay.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav1_default"));
    this.btnAccount.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav2_default"));
    this.btnCard.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav3_default"));
    this.btnExit.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav4_click"));
  }
  
  private void c()
  {
    if ((this.btnAccount != null) && (this.btnCard != null) && (this.btnPay != null))
    {
      this.btnAccount.setOnClickListener(this);
      this.btnAccount.setOnTouchListener(this);
      this.btnCard.setOnClickListener(this);
      this.btnCard.setOnTouchListener(this);
      this.btnPay.setOnClickListener(this);
      this.btnPay.setOnTouchListener(this);
      this.btnExit.setOnClickListener(this);
      this.btnExit.setOnTouchListener(this);
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_exit")) {
      Utils.b();
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) && (eh.c) && (!eh.j))
    {
      if (paramView.getId() != Utils.getResourceId(Utils.a, "id", "btn_pay")) {
        break label90;
      }
      eh.p = 0;
      this.btnPay.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav1_click"));
    }
    for (;;)
    {
      if ((paramMotionEvent.getAction() == 1) && (eh.c))
      {
        eh.j = false;
        if (eh.q != eh.p) {
          break;
        }
        b();
      }
      return false;
      label90:
      if (paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_account"))
      {
        eh.p = 1;
        this.btnAccount.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav2_click"));
      }
      else if (paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_card"))
      {
        eh.p = 2;
        this.btnCard.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav3_click"));
      }
      else if (paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_exit"))
      {
        eh.p = 3;
        this.btnExit.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_nav4_click"));
      }
    }
    eh.q = eh.p;
    Message localMessage = new Message();
    localMessage.what = eh.p;
    this.menuActionHandle.sendMessage(localMessage);
    eh.c = false;
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.view.MainBottom
 * JD-Core Version:    0.7.0.1
 */