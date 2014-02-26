package com.jingdong.app.mall.ime;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.inputmethodservice.Keyboard;
import android.inputmethodservice.KeyboardView;
import android.inputmethodservice.KeyboardView.OnKeyboardActionListener;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.ImageUtil;

public class JDInputMethod
  implements KeyboardView.OnKeyboardActionListener, View.OnClickListener, View.OnFocusChangeListener
{
  private final String TAG = JDInputMethod.class.getSimpleName();
  private boolean isPasswordTransformationMethod;
  private Activity mActivity;
  private boolean mCapsLock;
  private Context mContext;
  private float mDisplayWidthPixels;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
      case 1001: 
        do
        {
          return;
        } while (!JDInputMethod.this.isPasswordTransformationMethod);
        JDInputMethod.this.updatePopupWindow();
        JDInputMethod.this.showKeyboardView();
        return;
      }
      JDInputMethod.this.hideSystemInputMethod();
      JDInputMethod.this.sentMessage(1001, 50L);
    }
  };
  private TextView mInputmethodView;
  private KeyboardView mKeyboardView;
  private long mLastShiftTime;
  private PopupWindow mPopupWindow;
  private JDKeyboard mQwertyKeyboard;
  private JDKeyboard mSymbolsKeyboard;
  private JDKeyboard mSymbolsShiftedKeyboard;
  private UpdateJDInputMethodUIThread mUpdateJDInputMethodUIThread;
  private EditText mUserName;
  private EditText mUserPassword;
  
  public JDInputMethod(Activity paramActivity, EditText paramEditText, View paramView)
  {
    this.mUserPassword = paramEditText;
    this.mActivity = paramActivity;
    this.mContext = paramActivity;
    this.mUpdateJDInputMethodUIThread = new UpdateJDInputMethodUIThread(paramView);
  }
  
  public JDInputMethod(Activity paramActivity, EditText paramEditText1, EditText paramEditText2, View paramView)
  {
    this.mUserName = paramEditText1;
    this.mUserPassword = paramEditText2;
    this.mActivity = paramActivity;
    this.mContext = paramActivity;
    this.mUpdateJDInputMethodUIThread = new UpdateJDInputMethodUIThread(paramView);
    initEditviewListener(this.mUserName);
  }
  
  private void checkToggleCapsLock()
  {
    long l = System.currentTimeMillis();
    if (500L + this.mLastShiftTime > l)
    {
      boolean bool3 = this.mCapsLock;
      boolean bool4 = false;
      if (bool3) {}
      for (;;)
      {
        this.mCapsLock = bool4;
        this.mLastShiftTime = 0L;
        return;
        bool4 = true;
      }
    }
    this.mLastShiftTime = l;
    boolean bool1 = this.mCapsLock;
    boolean bool2 = false;
    if (bool1) {}
    for (;;)
    {
      this.mCapsLock = bool2;
      return;
      bool2 = true;
    }
  }
  
  private void createPopWindow(View paramView)
  {
    dismissPopupwindow();
    try
    {
      this.mPopupWindow = new PopupWindow(this.mKeyboardView, -1, -2);
      this.mPopupWindow.setFocusable(false);
      this.mPopupWindow.setOutsideTouchable(true);
      this.mPopupWindow.showAtLocation(paramView, 83, 0, getPopupwindowBottom());
      this.mPopupWindow.update();
      return;
    }
    catch (Exception localException) {}
  }
  
  private void dismissInputmethodLayout()
  {
    if ((this.mInputmethodView != null) && (this.mInputmethodView.isShown())) {
      this.mInputmethodView.setVisibility(8);
    }
  }
  
  private float getDisplayWidthPixels()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.mActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics.widthPixels;
  }
  
  private int getPopupwindowBottom()
  {
    int i = ((WindowManager)this.mContext.getSystemService("window")).getDefaultDisplay().getHeight();
    MyActivity localMyActivity = MyApplication.getInstance().getCurrentMyActivity();
    Activity localActivity = localMyActivity.getParent();
    View localView = localMyActivity.getWindow().getDecorView();
    if (localActivity != null) {}
    for (int j = ((MainFrameActivity)localActivity).getBottomBarBottom();; j = localView.getHeight())
    {
      Rect localRect = new Rect();
      localView.getWindowVisibleDisplayFrame(localRect);
      return i - j - localRect.top;
    }
  }
  
  private void handleShift()
  {
    if (this.mKeyboardView == null) {}
    Keyboard localKeyboard;
    do
    {
      return;
      localKeyboard = this.mKeyboardView.getKeyboard();
    } while (this.mQwertyKeyboard != localKeyboard);
    checkToggleCapsLock();
    if ((!this.mCapsLock) && (this.mKeyboardView.isShifted())) {}
    for (boolean bool = false;; bool = true)
    {
      setKeyBackground(bool);
      this.mKeyboardView.setShifted(bool);
      return;
    }
  }
  
  private void hideKeyboardView()
  {
    if (this.mKeyboardView.isShown()) {
      this.mKeyboardView.setVisibility(8);
    }
    dismissPopupwindow();
  }
  
  private boolean hideSystemInputMethod()
  {
    try
    {
      InputMethodManager localInputMethodManager = (InputMethodManager)this.mActivity.getSystemService("input_method");
      boolean bool1 = false;
      if (localInputMethodManager != null)
      {
        boolean bool2 = localInputMethodManager.hideSoftInputFromWindow(this.mUserPassword.getApplicationWindowToken(), 0);
        bool1 = bool2;
      }
      return bool1;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  private void initEditviewListener(EditText paramEditText)
  {
    this.mUserName = paramEditText;
    if (this.mUserName != null)
    {
      this.mUserName.setOnFocusChangeListener(this);
      this.mUserName.setOnClickListener(this);
    }
  }
  
  private void sentMessage(int paramInt, long paramLong)
  {
    Message localMessage = new Message();
    switch (paramInt)
    {
    }
    for (;;)
    {
      this.mHandler.sendMessageDelayed(localMessage, paramLong);
      return;
      localMessage.what = 1001;
      continue;
      localMessage.what = 1002;
    }
  }
  
  private void setKeyBackground(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (Drawable localDrawable = this.mContext.getResources().getDrawable(2130837754);; localDrawable = this.mContext.getResources().getDrawable(2130837753))
    {
      this.mQwertyKeyboard.setKeyBackground(localDrawable);
      return;
    }
  }
  
  private void showInputmethodLayout()
  {
    if ((this.mInputmethodView != null) && (!this.mInputmethodView.isShown())) {
      this.mInputmethodView.setVisibility(0);
    }
  }
  
  private void showKeyboardView()
  {
    int i = this.mKeyboardView.getVisibility();
    if ((i == 8) || (i == 4)) {
      this.mKeyboardView.setVisibility(0);
    }
  }
  
  private void switchSymbolsKeyboard()
  {
    if (this.mKeyboardView == null) {}
    Keyboard localKeyboard;
    do
    {
      return;
      localKeyboard = this.mKeyboardView.getKeyboard();
      if (localKeyboard == this.mSymbolsKeyboard)
      {
        this.mKeyboardView.setKeyboard(this.mSymbolsShiftedKeyboard);
        return;
      }
    } while (localKeyboard != this.mSymbolsShiftedKeyboard);
    this.mKeyboardView.setKeyboard(this.mSymbolsKeyboard);
  }
  
  private void updatePopupWindow()
  {
    this.mActivity.runOnUiThread(this.mUpdateJDInputMethodUIThread);
  }
  
  public void dismissPopupwindow()
  {
    dismissInputmethodLayout();
    if (isPopupwindowShowing())
    {
      this.mPopupWindow.dismiss();
      this.mPopupWindow = null;
    }
  }
  
  public void initIME()
  {
    this.mQwertyKeyboard = new JDKeyboard(this.mContext, 2131034123);
    this.mSymbolsKeyboard = new JDKeyboard(this.mContext, 2131034125);
    this.mSymbolsShiftedKeyboard = new JDKeyboard(this.mContext, 2131034126);
    this.mKeyboardView = ((KeyboardView)ImageUtil.inflate(2130903166, null));
    this.mKeyboardView.setKeyboard(this.mQwertyKeyboard);
    this.mKeyboardView.setEnabled(true);
    this.mKeyboardView.setPreviewEnabled(false);
    this.mKeyboardView.setOnKeyboardActionListener(this);
    this.mUserPassword.setOnClickListener(this);
    this.mUserPassword.setOnFocusChangeListener(this);
    this.mUserPassword.setLongClickable(false);
    this.mDisplayWidthPixels = getDisplayWidthPixels();
    int i;
    if (this.mContext.getResources().getDimensionPixelSize(2131427360) >= this.mDisplayWidthPixels) {
      i = this.mContext.getResources().getDimensionPixelSize(2131427359);
    }
    for (;;)
    {
      this.mSymbolsKeyboard.setKeyTextSize(i);
      this.mSymbolsShiftedKeyboard.setKeyTextSize(i);
      this.mQwertyKeyboard.setKeyTextSize(i);
      this.mSymbolsKeyboard.setJDKeyIcon(this.mContext.getString(2131166239));
      this.mSymbolsShiftedKeyboard.setJDKeyIcon(this.mContext.getString(2131166238));
      this.mSymbolsKeyboard.setJDKeyIcon(this.mContext.getString(2131166240));
      this.mSymbolsKeyboard.setJDKeyIcon(this.mContext.getString(2131166233));
      this.mSymbolsShiftedKeyboard.setJDKeyIcon(this.mContext.getString(2131166240));
      this.mSymbolsShiftedKeyboard.setJDKeyIcon(this.mContext.getString(2131166233));
      this.mQwertyKeyboard.setJDKeyIcon(this.mContext.getString(2131166241));
      this.mQwertyKeyboard.setJDKeyIcon(this.mContext.getString(2131166233));
      this.mQwertyKeyboard.setKeyBackground(this.mContext.getResources().getDrawable(2130837753));
      return;
      if ((this.mDisplayWidthPixels > this.mContext.getResources().getDimensionPixelSize(2131427360)) && (this.mDisplayWidthPixels < this.mContext.getResources().getDimensionPixelSize(2131427361))) {
        i = this.mContext.getResources().getDimensionPixelSize(2131427358);
      } else {
        i = this.mContext.getResources().getDimensionPixelSize(2131427357);
      }
    }
  }
  
  public void initInputmethodView(TextView paramTextView)
  {
    this.mInputmethodView = paramTextView;
  }
  
  public boolean isPopupwindowShowing()
  {
    PopupWindow localPopupWindow = this.mPopupWindow;
    boolean bool1 = false;
    if (localPopupWindow != null)
    {
      boolean bool2 = this.mPopupWindow.isShowing();
      bool1 = false;
      if (bool2) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public void onClick(View paramView)
  {
    TransformationMethod localTransformationMethod = ((EditText)paramView).getTransformationMethod();
    String str = (String)paramView.getTag();
    if ((localTransformationMethod != null) && (((localTransformationMethod instanceof PasswordTransformationMethod)) || (TextUtils.equals("jdPasswordTag", str))))
    {
      showInputmethodLayout();
      hideSystemInputMethod();
      if (!isPopupwindowShowing())
      {
        sentMessage(1002, 100L);
        this.isPasswordTransformationMethod = true;
      }
      return;
    }
    hideKeyboardView();
    dismissInputmethodLayout();
  }
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      TransformationMethod localTransformationMethod = ((EditText)paramView).getTransformationMethod();
      String str = (String)paramView.getTag();
      if ((localTransformationMethod != null) && (((localTransformationMethod instanceof PasswordTransformationMethod)) || (TextUtils.equals("jdPasswordTag", str))))
      {
        showInputmethodLayout();
        hideSystemInputMethod();
        if (!isPopupwindowShowing()) {
          sentMessage(1002, 100L);
        }
        this.isPasswordTransformationMethod = true;
        return;
      }
      this.isPasswordTransformationMethod = false;
      hideKeyboardView();
      dismissInputmethodLayout();
      return;
    }
    this.isPasswordTransformationMethod = false;
    hideKeyboardView();
    dismissInputmethodLayout();
  }
  
  public void onKey(int paramInt, int[] paramArrayOfInt)
  {
    Editable localEditable = this.mUserPassword.getText();
    int i = this.mUserPassword.getSelectionStart();
    if (paramInt == -3)
    {
      dismissInputmethodLayout();
      hideKeyboardView();
    }
    do
    {
      return;
      if (paramInt != -5) {
        break;
      }
    } while ((localEditable == null) || (localEditable.length() <= 0) || (i <= 0));
    localEditable.delete(i - 1, i);
    return;
    if ((paramInt == -2) && (this.mKeyboardView != null))
    {
      Keyboard localKeyboard = this.mKeyboardView.getKeyboard();
      if ((localKeyboard == this.mSymbolsKeyboard) || (localKeyboard == this.mSymbolsShiftedKeyboard)) {}
      for (JDKeyboard localJDKeyboard = this.mQwertyKeyboard;; localJDKeyboard = this.mSymbolsKeyboard)
      {
        if (localJDKeyboard == this.mSymbolsKeyboard) {
          localJDKeyboard.setShifted(false);
        }
        this.mKeyboardView.setKeyboard(localJDKeyboard);
        return;
      }
    }
    if (paramInt == -1)
    {
      handleShift();
      return;
    }
    if (paramInt == -102)
    {
      switchSymbolsKeyboard();
      return;
    }
    if (this.mKeyboardView.isShifted()) {}
    for (String str = Character.toString((char)Character.toUpperCase(paramInt));; str = Character.toString((char)paramInt))
    {
      localEditable.insert(i, str);
      return;
    }
  }
  
  public void onPress(int paramInt) {}
  
  public void onRelease(int paramInt) {}
  
  public void onText(CharSequence paramCharSequence) {}
  
  public void swipeDown() {}
  
  public void swipeLeft() {}
  
  public void swipeRight() {}
  
  public void swipeUp() {}
  
  private class UpdateJDInputMethodUIThread
    implements Runnable
  {
    private View screen;
    
    public UpdateJDInputMethodUIThread(View paramView)
    {
      this.screen = paramView;
    }
    
    public void run()
    {
      JDInputMethod.this.createPopWindow(this.screen);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.ime.JDInputMethod
 * JD-Core Version:    0.7.0.1
 */