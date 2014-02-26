package com.jingdong.app.mall.product;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.controller.ProductDetailController;
import com.jingdong.common.controller.ProductDetailController.ProductDetailListener;
import com.jingdong.common.entity.Comment;
import com.jingdong.common.entity.CommentCount;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MathsUtils;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NextPageLoader;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.SimpleSubViewBinder;
import com.jingdong.common.utils.adapter.SimpleImageProcessor;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class CommentListActivity
  extends MyActivity
{
  private static final int SCORE_ALL = 0;
  private static final int SCORE_BAD = 1;
  private static final int SCORE_CENTER = 2;
  private static final int SCORE_GOOD = 3;
  private static final String TAG = CommentListActivity.class.getName();
  private Bundle commentBundle = new Bundle();
  private ListView commentListContentAll;
  private NextPageLoader commentListContentAllNextPageLoader;
  private ListView commentListContentBad;
  private NextPageLoader commentListContentBadNextPageLoader;
  private ListView commentListContentGood;
  private NextPageLoader commentListContentGoodNextPageLoader;
  private ListView commentListContentMiddle;
  private NextPageLoader commentListContentMiddleNextPageLoader;
  private long id;
  private ProductDetailController mProductDetailController;
  private SourceEntity mSource = new SourceEntity("unknown", null);
  private String messageBad;
  private String messageGood;
  private String messageMiddle;
  private String name;
  private Product product;
  private String scoreCountBad;
  private String scoreCountCenter;
  private String scoreCountGood;
  private int showScoreType = 0;
  private String subName;
  
  private void first()
  {
    initContent();
    RadioGroup localRadioGroup = (RadioGroup)findViewById(2131493258);
    final RadioButton localRadioButton1 = (RadioButton)findViewById(2131493259);
    final RadioButton localRadioButton2 = (RadioButton)findViewById(2131493260);
    final RadioButton localRadioButton3 = (RadioButton)findViewById(2131493261);
    final RadioButton localRadioButton4 = (RadioButton)findViewById(2131493262);
    localRadioGroup.check(2131493259);
    localRadioButton1.setText(2131165691);
    localRadioButton2.setText(this.messageGood);
    localRadioButton3.setText(this.messageMiddle);
    localRadioButton4.setText(this.messageBad);
    SpannableStringBuilder localSpannableStringBuilder1 = new SpannableStringBuilder(this.scoreCountGood);
    localSpannableStringBuilder1.setSpan(new ForegroundColorSpan(getResources().getColor(2131296296)), 0, localSpannableStringBuilder1.length(), 33);
    localRadioButton2.append(localSpannableStringBuilder1);
    SpannableStringBuilder localSpannableStringBuilder2 = new SpannableStringBuilder(this.scoreCountCenter);
    localSpannableStringBuilder2.setSpan(new ForegroundColorSpan(getResources().getColor(2131296296)), 0, localSpannableStringBuilder2.length(), 33);
    localRadioButton3.append(localSpannableStringBuilder2);
    SpannableStringBuilder localSpannableStringBuilder3 = new SpannableStringBuilder(this.scoreCountBad);
    localSpannableStringBuilder3.setSpan(new ForegroundColorSpan(getResources().getColor(2131296296)), 0, localSpannableStringBuilder3.length(), 33);
    localRadioButton4.append(localSpannableStringBuilder3);
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (paramAnonymousView == localRadioButton2) {
          CommentListActivity.this.showContent(3);
        }
        do
        {
          return;
          if (paramAnonymousView == localRadioButton3)
          {
            CommentListActivity.this.showContent(2);
            return;
          }
          if (paramAnonymousView == localRadioButton4)
          {
            CommentListActivity.this.showContent(1);
            return;
          }
        } while (paramAnonymousView != localRadioButton1);
        CommentListActivity.this.showContent(0);
      }
    };
    localRadioButton1.setOnClickListener(local1);
    localRadioButton2.setOnClickListener(local1);
    localRadioButton3.setOnClickListener(local1);
    localRadioButton4.setOnClickListener(local1);
  }
  
  private void initContent()
  {
    this.commentListContentAll = ((ListView)findViewById(2131493263));
    this.commentListContentGood = ((ListView)findViewById(2131493264));
    this.commentListContentMiddle = ((ListView)findViewById(2131493265));
    this.commentListContentBad = ((ListView)findViewById(2131493266));
    LinearLayout localLinearLayout = (LinearLayout)ImageUtil.inflate(2130903175, null);
    localLinearLayout.setGravity(17);
    EvaluateView localEvaluateView = new EvaluateView(this, MathsUtils.parseInt(this.scoreCountGood), MathsUtils.parseInt(this.scoreCountCenter), MathsUtils.parseInt(this.scoreCountBad));
    localEvaluateView.setLayoutParams(new AbsListView.LayoutParams(-1, (int)getResources().getDimension(2131427396)));
    this.commentListContentAll.addHeaderView(localEvaluateView);
    this.commentListContentAllNextPageLoader = new CommentNextPageLoader(this, this.commentListContentAll, localLinearLayout, "comment");
    this.commentListContentGoodNextPageLoader = new CommentNextPageLoader(this, this.commentListContentGood, localLinearLayout, "comment");
    this.commentListContentMiddleNextPageLoader = new CommentNextPageLoader(this, this.commentListContentMiddle, localLinearLayout, "comment");
    this.commentListContentBadNextPageLoader = new CommentNextPageLoader(this, this.commentListContentBad, localLinearLayout, "comment");
    setParams(this.commentListContentAllNextPageLoader, 0);
    setParams(this.commentListContentGoodNextPageLoader, 3);
    setParams(this.commentListContentMiddleNextPageLoader, 2);
    setParams(this.commentListContentBadNextPageLoader, 1);
    this.commentListContentAllNextPageLoader.showPageOne(true);
  }
  
  private void setParams(NextPageLoader paramNextPageLoader, int paramInt)
  {
    JSONObject localJSONObject = paramNextPageLoader.getParams();
    try
    {
      localJSONObject.put("wareId", this.id);
      localJSONObject.put("score", paramInt);
      localJSONObject.put("version", "new");
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  private void showCommentCount(long paramLong)
  {
    this.mProductDetailController.queryCommentCount(paramLong, this.mSource, new ProductDetailController.ProductDetailListener()
    {
      public void onFinish(Product paramAnonymousProduct, int paramAnonymousInt, boolean paramAnonymousBoolean)
      {
        ArrayList localArrayList;
        if (paramAnonymousInt == 6)
        {
          localArrayList = paramAnonymousProduct.getCommentCountList();
          if ((localArrayList == null) || (localArrayList.size() <= 0)) {}
        }
        for (int i = 0;; i++)
        {
          if (i >= localArrayList.size())
          {
            CommentListActivity.this.messageGood = CommentListActivity.this.commentBundle.getString("message0");
            CommentListActivity.this.messageMiddle = CommentListActivity.this.commentBundle.getString("message1");
            CommentListActivity.this.messageBad = CommentListActivity.this.commentBundle.getString("message2");
            CommentListActivity.this.scoreCountGood = CommentListActivity.this.trimIntForString(CommentListActivity.this.commentBundle.getString("scoreCount0"));
            CommentListActivity.this.scoreCountCenter = CommentListActivity.this.trimIntForString(CommentListActivity.this.commentBundle.getString("scoreCount1"));
            CommentListActivity.this.scoreCountBad = CommentListActivity.this.trimIntForString(CommentListActivity.this.commentBundle.getString("scoreCount2"));
            CommentListActivity.this.post(new Runnable()
            {
              public void run()
              {
                CommentListActivity.this.first();
              }
            });
            return;
          }
          CommentListActivity.this.commentBundle.putString("message" + i, ((CommentCount)localArrayList.get(i)).getName());
          CommentListActivity.this.commentBundle.putString("scoreCount" + i, ((CommentCount)localArrayList.get(i)).getScoreCount().toString());
        }
      }
    });
  }
  
  private void showContent(int paramInt)
  {
    int i = this.showScoreType;
    this.showScoreType = paramInt;
    switch (i)
    {
    }
    for (;;)
    {
      switch (paramInt)
      {
      default: 
        return;
        this.commentListContentAll.setVisibility(8);
        continue;
        this.commentListContentGood.setVisibility(8);
        continue;
        this.commentListContentMiddle.setVisibility(8);
        continue;
        this.commentListContentBad.setVisibility(8);
      }
    }
    this.commentListContentAll.setVisibility(0);
    this.commentListContentAllNextPageLoader.showPageOne(true);
    return;
    this.commentListContentGood.setVisibility(0);
    this.commentListContentGoodNextPageLoader.showPageOne(true);
    return;
    this.commentListContentMiddle.setVisibility(0);
    this.commentListContentMiddleNextPageLoader.showPageOne(true);
    return;
    this.commentListContentBad.setVisibility(0);
    this.commentListContentBadNextPageLoader.showPageOne(true);
  }
  
  private String trimIntForString(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = "0";
    }
    return paramString;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.product = ((Product)getIntent().getExtras().getSerializable("product"));
    if ((this.product == null) || (this.product.getShowId() == null))
    {
      finish();
      return;
    }
    this.id = this.product.getShowId().longValue();
    this.name = this.product.getName();
    setContentView(2130903102);
    TextView localTextView = (TextView)findViewById(2131492990);
    this.mProductDetailController = new ProductDetailController(getHttpGroupaAsynPool());
    if (this.name.length() > 14) {}
    for (this.subName = (this.name.substring(0, 14) + "...");; this.subName = this.name)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.subName;
      localTextView.setText(getString(2131165849, arrayOfObject));
      showCommentCount(this.id);
      return;
    }
  }
  
  private class CommentNextPageLoader
    extends NextPageLoader
  {
    public CommentNextPageLoader(MyActivity paramMyActivity, AbsListView paramAbsListView, View paramView, String paramString)
    {
      super(paramAbsListView, paramView, paramString);
    }
    
    protected MySimpleAdapter createAdapter(IMyActivity paramIMyActivity, AdapterView paramAdapterView, ArrayList<?> paramArrayList)
    {
      MySimpleAdapter local1 = new MySimpleAdapter(CommentListActivity.this, paramArrayList, 2130903103, new String[] { "userName", "score", "insertTime", "attribute" }, new int[] { 2131493267, 2131493268, 2131493269, 2131493270 })
      {
        public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
        {
          View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
          localView.setBackgroundColor(-1);
          return localView;
        }
      };
      local1.setViewBinder(new SimpleSubViewBinder(new SimpleImageProcessor())
      {
        public boolean subBind(SimpleBeanAdapter.SubViewHolder paramAnonymousSubViewHolder)
        {
          View localView = paramAnonymousSubViewHolder.getSubView();
          Object localObject = paramAnonymousSubViewHolder.getSubData();
          if (localView.getId() == 2131493268)
          {
            ((RatingBar)localView).setRating(((Integer)localObject).intValue());
            return true;
          }
          return false;
        }
      });
      return local1;
    }
    
    public void setSelection(int paramInt) {}
    
    protected void showError() {}
    
    protected ArrayList<?> toList(HttpGroup.HttpResponse paramHttpResponse)
    {
      JSONObjectProxy localJSONObjectProxy = paramHttpResponse.getJSONObject();
      try
      {
        ArrayList localArrayList = Comment.toList(localJSONObjectProxy.getJSONArray("commentInfoList"), 0);
        return localArrayList;
      }
      catch (JSONException localJSONException) {}
      return null;
    }
  }
  
  class EvaluateView
    extends View
  {
    private int Bad;
    private int Count;
    private int Good;
    private int Neutral;
    private String badString;
    private float bad_bottom;
    private float bad_bottom_red;
    private float bad_text_x;
    private float bad_text_y;
    private float bad_top;
    private float bad_top_red;
    private float bigTextSize;
    private float centerTextSize;
    private int crimson;
    private String goodString;
    private String goodTip;
    private float good_bottom;
    private float good_bottom_red;
    private float good_text_x;
    private float good_text_y;
    private float good_top;
    private float good_top_red;
    private float left_red;
    private float left_white;
    private String neutralString;
    private float neutral_bottom;
    private float neutral_bottom_red;
    private float neutral_text_x;
    private float neutral_text_y;
    private float neutral_top;
    private float neutral_top_red;
    private Paint p = new Paint();
    private Paint p1 = new Paint();
    private Paint p2 = new Paint();
    private float percentage_text_x;
    private float percentage_text_y;
    private RectF r = new RectF();
    private Resources res = null;
    private float right_red;
    private float right_white;
    private float smallTextsize;
    private float text_x_1;
    private float text_x_2;
    private float text_x_3;
    private float text_y;
    
    public EvaluateView(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
    {
      super();
      this.p.setAntiAlias(true);
      this.Good = paramInt1;
      this.Neutral = paramInt2;
      this.Bad = paramInt3;
      this.Count = (paramInt3 + (paramInt1 + paramInt2));
      if (this.Count == 0) {
        this.Count = 1;
      }
      this.res = paramContext.getResources();
      this.left_white = this.res.getDimension(2131427365);
      this.right_white = this.res.getDimension(2131427366);
      this.left_red = this.res.getDimension(2131427367);
      this.right_red = this.res.getDimension(2131427368);
      this.good_top = this.res.getDimension(2131427369);
      this.good_bottom = this.res.getDimension(2131427370);
      this.good_top_red = this.res.getDimension(2131427371);
      this.good_bottom_red = this.res.getDimension(2131427372);
      this.neutral_top = this.res.getDimension(2131427373);
      this.neutral_bottom = this.res.getDimension(2131427374);
      this.neutral_top_red = this.res.getDimension(2131427375);
      this.neutral_bottom_red = this.res.getDimension(2131427376);
      this.bad_top = this.res.getDimension(2131427377);
      this.bad_bottom = this.res.getDimension(2131427378);
      this.bad_top_red = this.res.getDimension(2131427379);
      this.bad_bottom_red = this.res.getDimension(2131427380);
      this.percentage_text_x = this.res.getDimension(2131427388);
      this.percentage_text_y = this.res.getDimension(2131427389);
      this.good_text_x = this.res.getDimension(2131427390);
      this.good_text_y = this.res.getDimension(2131427391);
      this.neutral_text_x = this.res.getDimension(2131427392);
      this.neutral_text_y = this.res.getDimension(2131427393);
      this.bad_text_x = this.res.getDimension(2131427394);
      this.bad_text_y = this.res.getDimension(2131427395);
      this.smallTextsize = this.res.getDimension(2131427383);
      this.bigTextSize = this.res.getDimension(2131427381);
      this.centerTextSize = this.res.getDimension(2131427382);
      this.crimson = this.res.getColor(2131296306);
      this.text_x_1 = this.res.getDimension(2131427384);
      this.text_x_2 = this.res.getDimension(2131427385);
      this.text_x_3 = this.res.getDimension(2131427386);
      this.text_y = this.res.getDimension(2131427387);
      this.goodString = this.res.getString(2131165692);
      this.goodTip = this.res.getString(2131165693);
      this.neutralString = this.res.getString(2131165694);
      this.badString = this.res.getString(2131165695);
    }
    
    protected void onDraw(Canvas paramCanvas)
    {
      this.p.setColor(this.crimson);
      this.p.setTextSize(this.bigTextSize);
      this.p.setTypeface(Typeface.DEFAULT_BOLD);
      String str = (int)(100.0F * (this.Good / this.Count)) + "%";
      float f1 = this.text_x_1;
      switch (-1 + str.length())
      {
      }
      for (;;)
      {
        paramCanvas.drawText(str, f1, this.text_y, this.p);
        this.p.setTextSize(this.centerTextSize);
        this.p.setColor(-7829368);
        this.p.setTypeface(Typeface.DEFAULT);
        paramCanvas.drawText(this.goodTip, this.percentage_text_x, this.percentage_text_y, this.p);
        this.p.setTextSize(this.smallTextsize);
        paramCanvas.drawText(this.goodString, this.good_text_x, this.good_text_y, this.p);
        paramCanvas.drawText(this.neutralString, this.neutral_text_x, this.neutral_text_y, this.p);
        paramCanvas.drawText(this.badString, this.bad_text_x, this.bad_text_y, this.p);
        this.p.setColor(-1);
        this.r.set(this.left_white, this.good_top, this.right_white, this.good_bottom);
        paramCanvas.drawRect(this.r, this.p);
        this.r.set(this.left_white, this.neutral_top, this.right_white, this.neutral_bottom);
        paramCanvas.drawRect(this.r, this.p);
        this.r.set(this.left_white, this.bad_top, this.right_white, this.bad_bottom);
        paramCanvas.drawRect(this.r, this.p);
        this.p1.setColor(-7829368);
        this.p1.setStyle(Paint.Style.STROKE);
        this.p1.setStrokeWidth(1.0F);
        this.r.set(this.left_white, this.good_top, this.right_white, this.good_bottom);
        paramCanvas.drawRect(this.r, this.p1);
        this.r.set(this.left_white, this.bad_top, this.right_white, this.bad_bottom);
        paramCanvas.drawRect(this.r, this.p1);
        this.r.set(this.left_white, this.neutral_top, this.right_white, this.neutral_bottom);
        paramCanvas.drawRect(this.r, this.p1);
        this.p2.setColor(this.crimson);
        float f2 = (this.right_red - this.left_red) / 100.0F;
        float f3 = f2 * (100.0F * (this.Good / this.Count)) + this.left_red;
        this.r.set(this.left_red, this.good_top_red, f3, this.good_bottom_red);
        paramCanvas.drawRect(this.r, this.p2);
        float f4 = f2 * (100.0F * (this.Neutral / this.Count)) + this.left_red;
        this.r.set(this.left_red, this.neutral_top_red, f4, this.neutral_bottom_red);
        paramCanvas.drawRect(this.r, this.p2);
        float f5 = f2 * (100.0F * (this.Bad / this.Count)) + this.left_red;
        this.r.set(this.left_red, this.bad_top_red, f5, this.bad_bottom_red);
        paramCanvas.drawRect(this.r, this.p2);
        super.onDraw(paramCanvas);
        return;
        f1 = this.text_x_1;
        continue;
        f1 = this.text_x_2;
        continue;
        f1 = this.text_x_3;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.CommentListActivity
 * JD-Core Version:    0.7.0.1
 */