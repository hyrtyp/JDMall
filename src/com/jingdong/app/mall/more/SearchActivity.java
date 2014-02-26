package com.jingdong.app.mall.more;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.search.CameraPurchaseActivity;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.database.table.SearchHistoryTable;
import com.jingdong.common.entity.Keyword;
import com.jingdong.common.entity.SearchHistory;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.Log;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.VoiceUtil;
import com.jingdong.lib.zxing.client.android.CaptureActivity;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

public class SearchActivity
  extends MyActivity
  implements View.OnClickListener
{
  private static int DISPLAY_HEIGHT = 0;
  private static int DISPLAY_WIDTH = 0;
  public static final int REQUEST_SEARCH_CODE = 272;
  public static final int RESET_ANIMATION_FLAG = 110;
  private static final int SHAKE_THRESHOLD = 800;
  protected static final int SHOW_HOT_WORDS = 111;
  private static final String TAG = "SearchActivity";
  private static final int VOICE_RECOGNITION_REQUEST_CODE = 1234;
  public static String currentWord = null;
  public static boolean hasSubmit = false;
  private static int horizontal;
  public static String hotWordsJson = null;
  private static int vertical;
  public final String KEY_WORDS = "keywords";
  private AutoCompleteTextView autoCompleteTextView;
  private Button delHistoryButton;
  private AlertDialog.Builder dialogBuilder;
  private View emptyView;
  boolean fromMenuFlag;
  private final Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
        return;
      case 110: 
        SearchActivity.this.isAnimationRunning = false;
        return;
      }
      SearchActivity.this.init();
      SearchActivity.this.showHotKeyWords();
    }
  };
  private boolean hasInitHotWord = false;
  private RelativeLayout head;
  private ScrollView historyScrollView;
  public HashSet<String> hotWordsSet = new HashSet();
  private String hotword;
  private boolean isAnimationRunning = false;
  private boolean isFromHome;
  private boolean isInitHistory = false;
  private boolean isShowResult = false;
  protected boolean isUseHistoryWord = false;
  private String keyword;
  private long lastUpdate = -1L;
  private float last_x;
  private float last_y;
  private float last_z;
  private AlertDialog listDialog;
  private ListView listView;
  private ClickListener listener;
  private final boolean needSensor = true;
  private int otherHeight;
  private final Random random = new Random();
  private ImageButton searchButton;
  private ImageButton searchCleanButton;
  private SensorManager sensorMgr;
  private ImageButton voiceButton;
  private float x;
  private float y;
  private float z;
  
  private Animation getTextViewAnimation()
  {
    if (this.random.nextInt(2) > 0) {}
    for (Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968582);; localAnimation = AnimationUtils.loadAnimation(this, 2130968584))
    {
      localAnimation.setDuration(1000 + 1000 * this.random.nextInt(2));
      localAnimation.setStartOffset(300L);
      return localAnimation;
    }
  }
  
  private void init()
  {
    DISPLAY_HEIGHT = DPIUtil.getHeight();
    DISPLAY_WIDTH = DPIUtil.getWidth();
    vertical = DISPLAY_HEIGHT / 30;
    horizontal = DISPLAY_WIDTH / 20;
    Rect localRect = new Rect();
    getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
    this.otherHeight = (20 + (localRect.top + this.head.getBottom()));
  }
  
  private void initHotWordsString(JSONArrayPoxy paramJSONArrayPoxy)
  {
    this.hotWordsSet.clear();
    int i = 0;
    for (;;)
    {
      if (i >= paramJSONArrayPoxy.length()) {
        return;
      }
      try
      {
        this.hotWordsSet.add(paramJSONArrayPoxy.getString(i));
        label31:
        i++;
      }
      catch (JSONException localJSONException)
      {
        break label31;
      }
    }
  }
  
  private void searchSubmit(String paramString)
  {
    searchSubmit(paramString, false);
  }
  
  private void searchSubmit(String paramString, boolean paramBoolean)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramString.trim().length() == 0)) {
      return;
    }
    currentWord = paramString;
    getIntent().putExtra("isHotkeyword", paramBoolean);
    getIntent().putExtra("keyWord", paramString);
    getIntent().putExtra("firstToList", true);
    setResult(-1, getIntent());
    this.autoCompleteTextView.clearComposingText();
    SearchHistoryTable.saveSearchHistory(paramString);
    hasSubmit = true;
    finish();
  }
  
  private void showDialog()
  {
    if (getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).size() != 0)
    {
      startVoiceRecognitionActivity();
      return;
    }
    this.dialogBuilder.setTitle(2131165624);
    this.dialogBuilder.setMessage(2131165626);
    this.dialogBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://union.m.jd.com/download/go.action?to=http%3A%2F%2Fapp.jd.com%2Fdownload%2Fandroid%2Fvoice.apk&client=android&unionId=12532&key=eb5ba3c113b616165e3d763a1f0ce731"));
        SearchActivity.this.startActivityNoException(localIntent);
        paramAnonymousDialogInterface.dismiss();
      }
    });
    this.dialogBuilder.setNegativeButton(2131165601, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    });
    post(new Runnable()
    {
      public void run()
      {
        SearchActivity.this.dialogBuilder.show();
      }
    });
  }
  
  private void showHotKeyWords()
  {
    if (this.otherHeight < 1) {
      this.handler.sendEmptyMessageDelayed(111, 2L);
    }
    do
    {
      return;
      this.hasInitHotWord = true;
      this.isAnimationRunning = true;
      this.isShowResult = false;
    } while (!this.isInitHistory);
    this.listView.setVisibility(0);
  }
  
  private void showSearchResult()
  {
    this.isShowResult = true;
    this.historyScrollView.setVisibility(0);
    this.emptyView.setVisibility(8);
  }
  
  private void startVoiceRecognitionActivity()
  {
    Intent localIntent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    localIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
    localIntent.putExtra("android.speech.extra.PROMPT", "");
    startActivityForResultNoException(localIntent, 1234);
  }
  
  private void visiableHotWordView()
  {
    this.historyScrollView.setVisibility(8);
    this.emptyView.setVisibility(0);
    this.isShowResult = false;
    this.isInitHistory = false;
  }
  
  public void onAccuracyChanged(int paramInt1, int paramInt2) {}
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    ArrayList localArrayList;
    final String[] arrayOfString;
    if ((paramInt1 == 1234) && (paramInt2 == -1))
    {
      localArrayList = paramIntent.getStringArrayListExtra("android.speech.extra.RESULTS");
      arrayOfString = new String[localArrayList.size()];
    }
    for (int i = 0;; i++)
    {
      if (i >= localArrayList.size())
      {
        this.dialogBuilder.setTitle(2131165625);
        this.dialogBuilder.setItems(arrayOfString, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            Log.d("voice", "content:" + paramAnonymousInt + " " + arrayOfString[paramAnonymousInt] + " ");
            String str = arrayOfString[paramAnonymousInt].replace("。", "");
            SearchActivity.this.searchSubmit(str);
            SearchActivity.this.listDialog.dismiss();
          }
        });
        post(new Runnable()
        {
          public void run()
          {
            SearchActivity.this.listDialog = SearchActivity.this.dialogBuilder.show();
          }
        });
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
        return;
      }
      arrayOfString[i] = ((String)localArrayList.get(i));
    }
  }
  
  public void onClick(View paramView)
  {
    if (!(paramView instanceof TextView)) {
      return;
    }
    searchSubmit(((TextView)paramView).getText().toString(), true);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    init();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903287);
    this.listener = new ClickListener(null);
    this.voiceButton = ((ImageButton)findViewById(2131494427));
    this.voiceButton.setOnClickListener(this.listener);
    this.searchButton = ((ImageButton)findViewById(2131494425));
    this.searchButton.setOnClickListener(this.listener);
    this.fromMenuFlag = getIntent().getBooleanExtra("fromMenuFlag", false);
    this.hotword = getIntent().getStringExtra("hotword");
    this.keyword = getIntent().getStringExtra("keyword");
    this.dialogBuilder = new AlertDialog.Builder(this);
    this.searchCleanButton = ((ImageButton)findViewById(2131494426));
    this.sensorMgr = ((SensorManager)getSystemService("sensor"));
    this.autoCompleteTextView = ((AutoCompleteTextView)findViewById(2131493029));
    this.listView = ((ListView)findViewById(2131494429));
    this.historyScrollView = ((ScrollView)findViewById(2131494334));
    this.delHistoryButton = ((Button)findViewById(2131494430));
    this.delHistoryButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        SearchHistoryTable.deleteAllHistory();
        SearchActivity.this.visiableHotWordView();
        SearchActivity.this.showHotKeyWords();
      }
    });
    this.head = ((RelativeLayout)findViewById(2131493025));
    this.emptyView = findViewById(2131494428);
    this.otherHeight = -1;
    AutoCompleteTextView localAutoCompleteTextView;
    if (!hasSubmit)
    {
      localAutoCompleteTextView = this.autoCompleteTextView;
      if (!TextUtils.isEmpty(this.hotword)) {
        break label442;
      }
    }
    label442:
    for (String str2 = "";; str2 = this.hotword)
    {
      localAutoCompleteTextView.setHint(str2);
      this.autoCompleteTextView.setOnKeyListener(new View.OnKeyListener()
      {
        public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if (paramAnonymousInt == 66)
          {
            SearchActivity.this.searchSubmit(SearchActivity.this.autoCompleteTextView.getText().toString());
            return true;
          }
          return false;
        }
      });
      this.autoCompleteTextView.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          SearchActivity.this.autoCompleteTextView.requestFocus();
          return false;
        }
      });
      this.autoCompleteTextView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (SearchActivity.this.hasInitHotWord) {
            SearchActivity.this.showHistory();
          }
        }
      });
      this.autoCompleteTextView.addTextChangedListener(new TextWatcher()
      {
        public void afterTextChanged(Editable paramAnonymousEditable) {}
        
        public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public void onTextChanged(final CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          if (TextUtils.isEmpty(paramAnonymousCharSequence))
          {
            SearchActivity.this.voiceButton.setVisibility(0);
            SearchActivity.this.searchCleanButton.setVisibility(8);
            SearchActivity.this.showHistory();
          }
          do
          {
            return;
            SearchActivity.this.searchCleanButton.setVisibility(0);
            SearchActivity.this.voiceButton.setVisibility(8);
            SearchActivity.this.searchCleanButton.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymous2View)
              {
                SearchActivity.this.autoCompleteTextView.setText(null);
                SearchActivity.this.searchCleanButton.setVisibility(8);
                SearchActivity.this.voiceButton.setVisibility(0);
              }
            });
            if ((SearchActivity.this.isUseHistoryWord) || ((TextUtils.isEmpty(paramAnonymousCharSequence)) && (paramAnonymousCharSequence.toString().trim().length() == 0)))
            {
              SearchActivity.this.listView.post(new Runnable()
              {
                public void run()
                {
                  SearchActivity.this.showHotKeyWords();
                }
              });
              return;
            }
          } while (SearchActivity.this.isUseHistoryWord);
          JSONObject localJSONObject = new JSONObject();
          try
          {
            localJSONObject.put("keyword", paramAnonymousCharSequence.toString());
            label164:
            HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
            localHttpSetting.setFunctionId("tip");
            localHttpSetting.setEffect(0);
            localHttpSetting.setLocalFileCache(true);
            localHttpSetting.setLocalFileCacheTime(1800000L);
            localHttpSetting.setJsonParams(localJSONObject);
            localHttpSetting.setListener(new HttpGroup.OnAllListener()
            {
              public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
              {
                try
                {
                  JSONArrayPoxy localJSONArrayPoxy = paramAnonymous2HttpResponse.getJSONObject().getJSONArray("tip");
                  if (localJSONArrayPoxy.length() < 1) {
                    return;
                  }
                  ArrayList localArrayList = Keyword.toList(localJSONArrayPoxy, 0);
                  final MySimpleAdapter localMySimpleAdapter = new MySimpleAdapter(SearchActivity.this, localArrayList, 2130903150, new String[] { "name", "countString" }, new int[] { 2131493524, 2131493523 });
                  SearchActivity.this.listView.post(new Runnable()
                  {
                    public void run()
                    {
                      String str = SearchActivity.this.autoCompleteTextView.getText().toString();
                      if ((!TextUtils.isEmpty(str)) && (str.equals(this.val$s.toString())))
                      {
                        SearchActivity.this.showSearchResult();
                        SearchActivity.this.delHistoryButton.setVisibility(8);
                        SearchActivity.this.listView.setAdapter(localMySimpleAdapter);
                        SearchActivity.this.listView.invalidate();
                        SearchActivity.this.isInitHistory = false;
                      }
                    }
                  });
                  return;
                }
                catch (JSONException localJSONException) {}
              }
              
              public void onError(HttpGroup.HttpError paramAnonymous2HttpError) {}
              
              public void onProgress(int paramAnonymous2Int1, int paramAnonymous2Int2) {}
              
              public void onStart() {}
            });
            SearchActivity.this.getHttpGroupaAsynPool().add(localHttpSetting);
            return;
          }
          catch (JSONException localJSONException)
          {
            break label164;
          }
        }
      });
      this.autoCompleteTextView.setOnFocusChangeListener(new View.OnFocusChangeListener()
      {
        public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          InputMethodManager localInputMethodManager = (InputMethodManager)SearchActivity.this.getSystemService("input_method");
          if (paramAnonymousBoolean)
          {
            localInputMethodManager.showSoftInput(paramAnonymousView, 0);
            return;
          }
          localInputMethodManager.hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 0);
        }
      });
      final String str1 = getIntent().getStringExtra("type");
      this.isFromHome = getIntent().getBooleanExtra("isFromHome", false);
      if (!TextUtils.isEmpty(str1)) {
        getWindow().setSoftInputMode(3);
      }
      post(new Runnable()
      {
        public void run()
        {
          SearchActivity.this.autoCompleteTextView.setHint(2131165659);
          SearchActivity.this.isUseHistoryWord = false;
          if (!TextUtils.isEmpty(str1)) {
            VoiceUtil.showVoiceDialog(SearchActivity.this);
          }
        }
      }, 50);
      this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView.getAdapter();
          Object localObject = ((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
          String str = "";
          boolean bool2;
          if ((localObject instanceof Keyword))
          {
            str = ((Keyword)localObject).getName();
            bool2 = true;
          }
          for (;;)
          {
            SearchActivity.this.searchSubmit(str, bool2);
            return;
            boolean bool1 = localObject instanceof SearchHistory;
            bool2 = false;
            if (bool1)
            {
              str = ((SearchHistory)localObject).getWord();
              bool2 = false;
            }
          }
        }
      });
      showHistory();
      return;
    }
  }
  
  protected void onResume()
  {
    this.isUseHistoryWord = false;
    if (currentWord != null) {
      runOnUiThread(new Runnable()
      {
        public void run()
        {
          SearchActivity.this.isUseHistoryWord = true;
          Editable localEditable = SearchActivity.this.autoCompleteTextView.getText();
          Selection.setSelection(localEditable, localEditable.length());
        }
      });
    }
    if (this.isFromHome) {
      post(new Runnable()
      {
        public void run()
        {
          ((InputMethodManager)SearchActivity.this.getSystemService("input_method")).showSoftInput(SearchActivity.this.autoCompleteTextView, 0);
        }
      }, 500);
    }
    super.onResume();
  }
  
  public void onSensorChanged(int paramInt, float[] paramArrayOfFloat)
  {
    if (paramInt == 2)
    {
      long l1 = System.currentTimeMillis();
      if (l1 - this.lastUpdate > 100L)
      {
        long l2 = l1 - this.lastUpdate;
        this.lastUpdate = l1;
        this.x = paramArrayOfFloat[0];
        this.y = paramArrayOfFloat[1];
        this.z = paramArrayOfFloat[2];
        if ((10000.0F * (Math.abs(this.x + this.y + this.z - this.last_x - this.last_y - this.last_z) / (float)l2) > 800.0F) && (!this.isAnimationRunning) && (!this.isShowResult)) {
          this.handler.sendEmptyMessage(111);
        }
        this.last_x = this.x;
        this.last_y = this.y;
        this.last_z = this.z;
      }
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    init();
  }
  
  protected void showHistory()
  {
    ArrayList localArrayList = SearchHistoryTable.getAllSearchHistory();
    if ((localArrayList == null) || (localArrayList.size() < 1))
    {
      if (!this.hasInitHotWord) {
        this.handler.sendEmptyMessage(111);
      }
      visiableHotWordView();
      return;
    }
    MySimpleAdapter local10 = new MySimpleAdapter(this, localArrayList, 2130903150, new String[] { "word" }, new int[] { 2131493524 })
    {
      public int getCount()
      {
        return 1 + super.getCount();
      }
      
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        TextView localTextView = (TextView)localView.findViewById(2131493524);
        localTextView.setTextSize(16.0F);
        if (paramAnonymousInt == super.getCount())
        {
          localView.setVisibility(8);
          return localView;
        }
        localView.setVisibility(0);
        localTextView.setTextColor(SearchActivity.this.getResources().getColor(2131296376));
        localTextView.setGravity(3);
        localTextView.setPadding(20, 0, 0, 0);
        return localView;
      }
    };
    this.delHistoryButton.setVisibility(0);
    this.listView.setAdapter(local10);
    showSearchResult();
    this.isInitHistory = true;
  }
  
  private class ClickListener
    implements View.OnClickListener
  {
    private ClickListener() {}
    
    public void onClick(View paramView)
    {
      switch (paramView.getId())
      {
      }
      do
      {
        do
        {
          Editable localEditable;
          do
          {
            do
            {
              return;
            } while (SearchActivity.this.autoCompleteTextView == null);
            localEditable = SearchActivity.this.autoCompleteTextView.getText();
          } while (localEditable == null);
          String str = localEditable.toString();
          boolean bool1 = SearchActivity.hasSubmit;
          boolean bool2 = false;
          if (!bool1)
          {
            boolean bool3 = TextUtils.isEmpty(str);
            bool2 = false;
            if (bool3)
            {
              CharSequence localCharSequence = SearchActivity.this.autoCompleteTextView.getHint();
              bool2 = false;
              if (localCharSequence != null) {
                bool2 = true;
              }
            }
          }
          SearchActivity.this.searchSubmit(str, bool2);
          return;
          VoiceUtil.showVoiceDialog(SearchActivity.this);
          return;
        } while (MyApplication.getInstance().getCurrentMyActivity() == null);
        SearchActivity.this.finish();
        MyApplication.getInstance().getCurrentMyActivity().startActivity(new Intent(SearchActivity.this, CaptureActivity.class));
        return;
      } while (MyApplication.getInstance().getCurrentMyActivity() == null);
      SearchActivity.this.finish();
      MyApplication.getInstance().getCurrentMyActivity().startActivity(new Intent(SearchActivity.this, CameraPurchaseActivity.class));
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.more.SearchActivity
 * JD-Core Version:    0.7.0.1
 */