package com.jingdong.app.mall.signin;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.jingdong.common.entity.SigninListUser;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.JDImageUtils;
import java.util.ArrayList;

public class SignRecordAdapter
  extends BaseAdapter
{
  private static final String TAG = "SignRecordAdapter";
  private Context mContext;
  private ArrayList<SigninListUser> records = new ArrayList();
  
  public SignRecordAdapter(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  public SignRecordAdapter(Context paramContext, ArrayList<SigninListUser> paramArrayList)
  {
    this.mContext = paramContext;
    this.records = paramArrayList;
  }
  
  public int getCount()
  {
    return this.records.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.records.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ViewHolder localViewHolder;
    SigninListUser localSigninListUser;
    label207:
    TextView localTextView;
    if ((paramView == null) || (!(paramView.getTag() instanceof ViewHolder)))
    {
      Log.d("SignRecordAdapter", "convertView is null  position =  " + paramInt);
      paramView = LinearLayout.inflate(this.mContext, 2130903325, null);
      localViewHolder = new ViewHolder();
      localViewHolder.item = ((LinearLayout)paramView.findViewById(2131494656));
      localViewHolder.position = ((TextView)paramView.findViewById(2131494657));
      localViewHolder.point = ((TextView)paramView.findViewById(2131494661));
      localViewHolder.icon = ((ImageView)paramView.findViewById(2131494658));
      localViewHolder.cover = ((ImageView)paramView.findViewById(2131494659));
      localViewHolder.name = ((TextView)paramView.findViewById(2131494660));
      Typeface localTypeface = Typeface.createFromAsset(this.mContext.getAssets(), "scryptii.ttf");
      localViewHolder.position.setTypeface(localTypeface);
      paramView.setTag(localViewHolder);
      localSigninListUser = (SigninListUser)this.records.get(paramInt);
      if (paramInt != 0) {
        break label440;
      }
      localViewHolder.position.setTextColor(this.mContext.getResources().getColor(2131296428));
      localTextView = localViewHolder.position;
      if (localSigninListUser.getUserRank().intValue() >= 10) {
        break label519;
      }
    }
    label519:
    for (String str1 = "0" + localSigninListUser.getUserRank();; str1 = localSigninListUser.getUserRank().toString())
    {
      localTextView.setText(str1);
      localViewHolder.name.setText(localSigninListUser.getUserName());
      localViewHolder.point.setText(localSigninListUser.getSustainedNumTimers());
      localViewHolder.icon.setImageResource(2130838373);
      if ((localSigninListUser.getUserIcon() != null) && (!localSigninListUser.getUserIcon().trim().equals("")))
      {
        Log.v("SignRecordAdapter", "record.getUserIcon() = " + localSigninListUser.getUserIcon());
        JDImageUtils.setViewImage((IMyActivity)this.mContext, localViewHolder.icon, localSigninListUser.getUserIcon());
      }
      localViewHolder.item.setBackgroundResource(2130838619);
      localViewHolder.cover.setImageResource(2130838374);
      String str2 = localSigninListUser.getUsrType();
      if ((!TextUtils.isEmpty(str2)) && (Integer.parseInt(str2) == 1))
      {
        localViewHolder.item.setBackgroundResource(2130838618);
        localViewHolder.cover.setImageResource(2130838375);
      }
      return paramView;
      localViewHolder = (ViewHolder)paramView.getTag();
      break;
      label440:
      if (paramInt == 1)
      {
        localViewHolder.position.setTextColor(this.mContext.getResources().getColor(2131296429));
        break label207;
      }
      if (paramInt == 2)
      {
        localViewHolder.position.setTextColor(this.mContext.getResources().getColor(2131296430));
        break label207;
      }
      localViewHolder.position.setTextColor(this.mContext.getResources().getColor(2131296431));
      break label207;
    }
  }
  
  public void setRecords(ArrayList<SigninListUser> paramArrayList)
  {
    this.records = paramArrayList;
  }
  
  static class ViewHolder
  {
    ImageView cover;
    ImageView icon;
    LinearLayout item;
    TextView name;
    TextView point;
    TextView position;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.signin.SignRecordAdapter
 * JD-Core Version:    0.7.0.1
 */