package com.jingdong.app.mall.shopping;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import com.jingdong.app.mall.utils.CommonUtil;
import java.net.URLEncoder;
import java.util.Vector;

public class CameraView
  extends SurfaceView
  implements SurfaceHolder.Callback
{
  public static final int BITMAP = 2;
  public static final int COLOR = 1;
  private static final int GAP = 1000;
  public static final int PAUSE = 4;
  public static final int RESUME = 5;
  private static final String TAG = CameraView.class.getSimpleName();
  private Camera.AutoFocusCallback autoFocus = new Camera.AutoFocusCallback()
  {
    public void onAutoFocus(boolean paramAnonymousBoolean, Camera paramAnonymousCamera) {}
  };
  private Camera mCamera = null;
  private Context mContext;
  private boolean mExtractColor = true;
  private int mFocusHeight = 0;
  private int mFocusWidth = 0;
  private int mFocusXoffset = 0;
  private int mFocusYoffset = 0;
  private Handler mHandler;
  private Camera.PreviewCallback mPreviewCallback = new Camera.PreviewCallback()
  {
    public void onPreviewFrame(final byte[] paramAnonymousArrayOfByte, Camera paramAnonymousCamera)
    {
      if ((CameraView.this.mThreadLock) || (!CameraView.this.mExtractColor)) {}
      while ((paramAnonymousArrayOfByte == null) || (paramAnonymousCamera == null)) {
        return;
      }
      final int i = paramAnonymousCamera.getParameters().getPreviewSize().width;
      final int j = paramAnonymousCamera.getParameters().getPreviewSize().height;
      CameraView.this.mThreadLock = true;
      Thread localThread = new Thread(new Runnable()
      {
        public void run()
        {
          int[] arrayOfInt = new int[CameraView.this.mFocusHeight * CameraView.this.mFocusWidth];
          double d = CameraView.this.getHeight() / i;
          int i = (int)(CameraView.this.mFocusYoffset / d);
          CameraView.decodeYUV420SPInCenterRect(arrayOfInt, paramAnonymousArrayOfByte, i, j, CameraView.this.mFocusWidth, CameraView.this.mFocusHeight, i);
          Vector localVector1 = new Vector();
          Vector localVector2 = new Vector();
          int j = Algorithm.ComputerSrcColorIndexF(CameraView.this.mFocusHeight, CameraView.this.mFocusWidth, arrayOfInt, localVector1, localVector2, 4);
          Message localMessage1 = CameraView.this.mHandler.obtainMessage();
          localMessage1.what = 1;
          localMessage1.arg1 = j;
          CameraView.this.mHandler.sendMessage(localMessage1);
          String str1 = "";
          String str2 = "";
          for (int k = 0;; k++)
          {
            if (k >= 4)
            {
              String str3 = URLEncoder.encode(str1);
              CameraView.this.mThreadLock = false;
              Message localMessage2 = CameraView.this.mHandler.obtainMessage();
              localMessage2.what = 2;
              localMessage2.obj = str3;
              CameraView.this.mHandler.sendMessage(localMessage2);
              return;
            }
            str1 = str1 + str2 + localVector2.get(k) + " " + localVector1.get(k);
            str2 = " ";
          }
        }
      });
      localThread.setName("CameraView");
      localThread.start();
    }
  };
  private SurfaceHolder mSurfaceHolder = getHolder();
  private boolean mThreadLock = false;
  private long mTime = 0L;
  
  public CameraView(Context paramContext)
  {
    super(paramContext);
    this.mSurfaceHolder.addCallback(this);
    this.mSurfaceHolder.setType(3);
    this.mContext = paramContext;
  }
  
  public CameraView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mSurfaceHolder.addCallback(this);
    this.mSurfaceHolder.setType(3);
    this.mContext = paramContext;
  }
  
  public static void decodeYUV420SPInCenterRect(int[] paramArrayOfInt, byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if ((paramInt3 > paramInt1) || (paramInt4 > paramInt2)) {}
    int j;
    int m;
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    for (;;)
    {
      return;
      int i = paramInt1 * paramInt2;
      j = 0;
      int k = paramInt2 / 2 - paramInt4 / 2;
      for (m = k; m < k + paramInt4; m++)
      {
        int n = i + paramInt1 * (m >> 1);
        i1 = 0;
        i2 = 0;
        i3 = paramInt5 - (paramInt5 & 0x1);
        i4 = i3;
        i5 = n;
        if (i4 < i3 + paramInt3) {
          break label95;
        }
      }
    }
    label95:
    int i6 = -16 + (0xFF & paramArrayOfByte[(i4 + m * paramInt1)]);
    if (i6 < 0) {
      i6 = 0;
    }
    int i13;
    if ((i4 & 0x1) == 0)
    {
      int i12 = i5 + 1;
      i2 = -128 + (0xFF & paramArrayOfByte[(i3 + i5)]);
      i13 = i12 + 1;
      i1 = -128 + (0xFF & paramArrayOfByte[(i3 + i12)]);
    }
    for (int i7 = i13;; i7 = i5)
    {
      int i8 = i6 * 1192;
      int i9 = i8 + i2 * 1634;
      int i10 = i8 - i2 * 833 - i1 * 400;
      int i11 = i8 + i1 * 2066;
      if (i9 < 0)
      {
        i9 = 0;
        label232:
        if (i10 >= 0) {
          break label308;
        }
        i10 = 0;
        label240:
        if (i11 >= 0) {
          break label322;
        }
        i11 = 0;
      }
      for (;;)
      {
        paramArrayOfInt[j] = (0xFF000000 | 0xFF0000 & i9 << 6 | 0xFF00 & i10 >> 2 | 0xFF & i11 >> 10);
        i4++;
        j++;
        i5 = i7;
        break;
        if (i9 <= 262143) {
          break label232;
        }
        i9 = 262143;
        break label232;
        label308:
        if (i10 <= 262143) {
          break label240;
        }
        i10 = 262143;
        break label240;
        label322:
        if (i11 > 262143) {
          i11 = 262143;
        }
      }
    }
  }
  
  public void autoFocus()
  {
    if (this.mCamera != null) {}
    try
    {
      this.mCamera.autoFocus(this.autoFocus);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      localRuntimeException.printStackTrace();
    }
  }
  
  public boolean isColorExtracting()
  {
    return this.mExtractColor;
  }
  
  public void pauseColorExtract()
  {
    this.mExtractColor = false;
  }
  
  public void releaseCamera()
  {
    if (this.mCamera != null)
    {
      this.mCamera.setPreviewCallback(null);
      this.mCamera.stopPreview();
      this.mCamera.release();
      this.mCamera = null;
    }
  }
  
  public void resumeColorExtract()
  {
    this.mExtractColor = true;
  }
  
  public void setFocusHeight(int paramInt)
  {
    this.mFocusHeight = paramInt;
  }
  
  public void setFocusWidth(int paramInt)
  {
    this.mFocusWidth = paramInt;
  }
  
  public void setFocusXoffset(int paramInt)
  {
    this.mFocusXoffset = paramInt;
  }
  
  public void setFocusYoffset(int paramInt)
  {
    this.mFocusYoffset = paramInt;
  }
  
  public void setHandle(Handler paramHandler)
  {
    this.mHandler = paramHandler;
  }
  
  public void startCamera()
  {
    if (this.mCamera != null) {
      this.mCamera.startPreview();
    }
  }
  
  public void startPreview()
  {
    if (this.mCamera != null) {}
    try
    {
      this.mCamera.startPreview();
      label14:
      this.mCamera.setPreviewCallback(this.mPreviewCallback);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      break label14;
    }
  }
  
  public void stopCamera()
  {
    if (this.mCamera != null) {
      this.mCamera.stopPreview();
    }
  }
  
  public void stopPreview()
  {
    if (this.mCamera != null) {
      this.mCamera.stopPreview();
    }
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    for (;;)
    {
      try
      {
        localParameters = this.mCamera.getParameters();
        localParameters.setPictureFormat(256);
        if (CommonUtil.getSDKInt() < 8) {
          continue;
        }
        this.mCamera.setDisplayOrientation(90);
        this.mCamera.setParameters(localParameters);
      }
      catch (Exception localException)
      {
        Camera.Parameters localParameters;
        localException.printStackTrace();
        continue;
      }
      startPreview();
      return;
      if (getResources().getConfiguration().orientation == 1)
      {
        localParameters.set("orientation", "portrait");
        localParameters.set("rotation", 90);
      }
    }
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if (this.mCamera == null) {}
    try
    {
      this.mCamera = Camera.open();
      try
      {
        label14:
        this.mCamera.setPreviewCallback(this.mPreviewCallback);
        this.mCamera.setPreviewDisplay(paramSurfaceHolder);
        return;
      }
      catch (Exception localException) {}
    }
    catch (RuntimeException localRuntimeException)
    {
      break label14;
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    releaseCamera();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.CameraView
 * JD-Core Version:    0.7.0.1
 */