package com.jingdong.lib.zxing.client.android;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import java.util.Hashtable;

final class DecodeHandler
  extends Handler
{
  private static final String TAG = DecodeHandler.class.getSimpleName();
  private final CaptureActivity activity;
  private final MultiFormatReader multiFormatReader = new MultiFormatReader();
  
  DecodeHandler(CaptureActivity paramCaptureActivity, Hashtable<DecodeHintType, Object> paramHashtable)
  {
    this.multiFormatReader.setHints(paramHashtable);
    this.activity = paramCaptureActivity;
  }
  
  /* Error */
  private void decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: invokestatic 45	java/lang/System:currentTimeMillis	()J
    //   3: lstore 4
    //   5: aload_1
    //   6: ifnonnull +4 -> 10
    //   9: return
    //   10: aload_1
    //   11: arraylength
    //   12: newarray byte
    //   14: astore 6
    //   16: iconst_0
    //   17: istore 7
    //   19: iload 7
    //   21: iload_3
    //   22: if_icmplt +155 -> 177
    //   25: invokestatic 51	com/jingdong/lib/zxing/client/android/camera/CameraManager:get	()Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;
    //   28: aload 6
    //   30: iload_3
    //   31: iload_2
    //   32: invokevirtual 55	com/jingdong/lib/zxing/client/android/camera/CameraManager:buildLuminanceSource	([BII)Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;
    //   35: astore 9
    //   37: new 57	com/google/zxing/BinaryBitmap
    //   40: dup
    //   41: new 59	com/google/zxing/common/HybridBinarizer
    //   44: dup
    //   45: aload 9
    //   47: invokespecial 62	com/google/zxing/common/HybridBinarizer:<init>	(Lcom/google/zxing/LuminanceSource;)V
    //   50: invokespecial 65	com/google/zxing/BinaryBitmap:<init>	(Lcom/google/zxing/Binarizer;)V
    //   53: astore 10
    //   55: aload_0
    //   56: getfield 29	com/jingdong/lib/zxing/client/android/DecodeHandler:multiFormatReader	Lcom/google/zxing/MultiFormatReader;
    //   59: aload 10
    //   61: invokevirtual 69	com/google/zxing/MultiFormatReader:decodeWithState	(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    //   64: astore 19
    //   66: aload 19
    //   68: astore 13
    //   70: aload_0
    //   71: getfield 29	com/jingdong/lib/zxing/client/android/DecodeHandler:multiFormatReader	Lcom/google/zxing/MultiFormatReader;
    //   74: invokevirtual 72	com/google/zxing/MultiFormatReader:reset	()V
    //   77: aload 13
    //   79: ifnull +169 -> 248
    //   82: invokestatic 45	java/lang/System:currentTimeMillis	()J
    //   85: lstore 14
    //   87: getstatic 20	com/jingdong/lib/zxing/client/android/DecodeHandler:TAG	Ljava/lang/String;
    //   90: new 74	java/lang/StringBuilder
    //   93: dup
    //   94: ldc 76
    //   96: invokespecial 79	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   99: lload 14
    //   101: lload 4
    //   103: lsub
    //   104: invokevirtual 83	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   107: ldc 85
    //   109: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: aload 13
    //   114: invokevirtual 93	com/google/zxing/Result:toString	()Ljava/lang/String;
    //   117: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: invokevirtual 94	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: invokestatic 100	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   126: pop
    //   127: aload_0
    //   128: getfield 35	com/jingdong/lib/zxing/client/android/DecodeHandler:activity	Lcom/jingdong/lib/zxing/client/android/CaptureActivity;
    //   131: invokevirtual 106	com/jingdong/lib/zxing/client/android/CaptureActivity:getHandler	()Landroid/os/Handler;
    //   134: ldc 107
    //   136: aload 13
    //   138: invokestatic 113	android/os/Message:obtain	(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    //   141: astore 17
    //   143: new 115	android/os/Bundle
    //   146: dup
    //   147: invokespecial 116	android/os/Bundle:<init>	()V
    //   150: astore 18
    //   152: aload 18
    //   154: ldc 118
    //   156: aload 9
    //   158: invokevirtual 124	com/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource:renderCroppedGreyscaleBitmap	()Landroid/graphics/Bitmap;
    //   161: invokevirtual 128	android/os/Bundle:putParcelable	(Ljava/lang/String;Landroid/os/Parcelable;)V
    //   164: aload 17
    //   166: aload 18
    //   168: invokevirtual 132	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   171: aload 17
    //   173: invokevirtual 135	android/os/Message:sendToTarget	()V
    //   176: return
    //   177: iconst_0
    //   178: istore 8
    //   180: iload 8
    //   182: iload_2
    //   183: if_icmplt +9 -> 192
    //   186: iinc 7 1
    //   189: goto -170 -> 19
    //   192: aload 6
    //   194: iconst_m1
    //   195: iload_3
    //   196: iload 8
    //   198: iload_3
    //   199: imul
    //   200: iadd
    //   201: iload 7
    //   203: isub
    //   204: iadd
    //   205: aload_1
    //   206: iload 8
    //   208: iload 7
    //   210: iload_2
    //   211: imul
    //   212: iadd
    //   213: baload
    //   214: bastore
    //   215: iinc 8 1
    //   218: goto -38 -> 180
    //   221: astore 12
    //   223: aload_0
    //   224: getfield 29	com/jingdong/lib/zxing/client/android/DecodeHandler:multiFormatReader	Lcom/google/zxing/MultiFormatReader;
    //   227: invokevirtual 72	com/google/zxing/MultiFormatReader:reset	()V
    //   230: aconst_null
    //   231: astore 13
    //   233: goto -156 -> 77
    //   236: astore 11
    //   238: aload_0
    //   239: getfield 29	com/jingdong/lib/zxing/client/android/DecodeHandler:multiFormatReader	Lcom/google/zxing/MultiFormatReader;
    //   242: invokevirtual 72	com/google/zxing/MultiFormatReader:reset	()V
    //   245: aload 11
    //   247: athrow
    //   248: aload_0
    //   249: getfield 35	com/jingdong/lib/zxing/client/android/DecodeHandler:activity	Lcom/jingdong/lib/zxing/client/android/CaptureActivity;
    //   252: invokevirtual 106	com/jingdong/lib/zxing/client/android/CaptureActivity:getHandler	()Landroid/os/Handler;
    //   255: ldc 136
    //   257: invokestatic 139	android/os/Message:obtain	(Landroid/os/Handler;I)Landroid/os/Message;
    //   260: invokevirtual 135	android/os/Message:sendToTarget	()V
    //   263: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	264	0	this	DecodeHandler
    //   0	264	1	paramArrayOfByte	byte[]
    //   0	264	2	paramInt1	int
    //   0	264	3	paramInt2	int
    //   3	99	4	l1	long
    //   14	179	6	arrayOfByte	byte[]
    //   17	195	7	i	int
    //   178	38	8	j	int
    //   35	122	9	localPlanarYUVLuminanceSource	PlanarYUVLuminanceSource
    //   53	7	10	localBinaryBitmap	com.google.zxing.BinaryBitmap
    //   236	10	11	localObject	Object
    //   221	1	12	localReaderException	com.google.zxing.ReaderException
    //   68	164	13	localResult1	com.google.zxing.Result
    //   85	15	14	l2	long
    //   141	31	17	localMessage	Message
    //   150	17	18	localBundle	android.os.Bundle
    //   64	3	19	localResult2	com.google.zxing.Result
    // Exception table:
    //   from	to	target	type
    //   55	66	221	com/google/zxing/ReaderException
    //   55	66	236	finally
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      return;
    case 2131492877: 
      decode((byte[])paramMessage.obj, paramMessage.arg1, paramMessage.arg2);
      return;
    }
    Looper.myLooper().quit();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.DecodeHandler
 * JD-Core Version:    0.7.0.1
 */