package com.jingdong.app.mall.shopping;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.utils.ImageUtil;
import java.util.ArrayList;
import java.util.Map;

public class JingAdapter
  extends BaseAdapter
{
  private Context context;
  ArrayList<Map<String, String>> item;
  private RelativeLayout jingLayout;
  private LayoutInflater mInflater = null;
  int[] seleted = new int[0];
  
  public JingAdapter(Context paramContext, ArrayList<Map<String, String>> paramArrayList, int[] paramArrayOfInt)
  {
    this.context = paramContext;
    this.mInflater = LayoutInflater.from(paramContext);
    this.item = paramArrayList;
    this.seleted = paramArrayOfInt;
  }
  
  public int getCount()
  {
    if ((this.item != null) && (!this.item.isEmpty())) {
      return this.item.size();
    }
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    return this.item.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    new ViewHolder(null);
    ViewHolder localViewHolder;
    int i;
    if (paramView == null)
    {
      localViewHolder = new ViewHolder(null);
      paramView = ImageUtil.inflate(2130903170, null);
      if (!Constants.noJing)
      {
        localViewHolder.bCheck = ((CheckBox)paramView.findViewById(2131493592));
        localViewHolder.bCheck.setChecked(false);
        localViewHolder.bCheck.setVisibility(0);
        if ((this.seleted != null) && (this.seleted.length > 0))
        {
          i = 0;
          if (i < this.seleted.length) {}
        }
        else
        {
          TextView localTextView = (TextView)paramView.findViewById(2131493596);
          localTextView.setVisibility(0);
          if (Constants.bNoYouHui)
          {
            localTextView.setVisibility(8);
            localViewHolder.bCheck = ((CheckBox)paramView.findViewById(2131493592));
            localViewHolder.bCheck.setChecked(false);
            localViewHolder.bCheck.setVisibility(8);
          }
          label159:
          localViewHolder.mName = ((TextView)paramView.findViewById(2131493591));
          localViewHolder.mEndTime = ((TextView)paramView.findViewById(2131493596));
          localViewHolder.mScope = ((TextView)paramView.findViewById(2131493594));
          paramView.setTag(localViewHolder);
        }
      }
    }
    for (;;)
    {
      Map localMap = (Map)this.item.get(paramInt);
      localViewHolder.mName.setText((CharSequence)localMap.get("name"));
      localViewHolder.mEndTime.setText((CharSequence)localMap.get("time"));
      localViewHolder.mScope.setText((CharSequence)localMap.get("scope"));
      return paramView;
      if (this.seleted[i] == paramInt)
      {
        localViewHolder.bCheck.setChecked(true);
        Constants.jSelected = true;
      }
      i++;
      break;
      ((TextView)paramView.findViewById(2131493596)).setVisibility(8);
      localViewHolder.bCheck = ((CheckBox)paramView.findViewById(2131493592));
      localViewHolder.bCheck.setChecked(false);
      localViewHolder.bCheck.setVisibility(8);
      break label159;
      localViewHolder = (ViewHolder)paramView.getTag();
    }
  }
  
  private class ClickListener
    implements View.OnClickListener
  {
    int index;
    RadioButton rb;
    
    public ClickListener(RadioButton paramRadioButton, int paramInt)
    {
      this.rb = paramRadioButton;
      this.index = paramInt;
    }
    
    public void onClick(View paramView)
    {
      if (this.rb.isShown())
      {
        this.rb.setVisibility(4);
        this.rb.setChecked(false);
        return;
      }
      this.rb.setVisibility(0);
      this.rb.setChecked(true);
    }
  }
  
  private static class ViewHolder
  {
    CheckBox bCheck;
    TextView mEndTime;
    RadioButton mImage;
    TextView mName;
    TextView mScope;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.JingAdapter
 * JD-Core Version:    0.7.0.1
 */