package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.activity.PayResultActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class m
  extends AsyncTask
{
  public m(PayItActivity paramPayItActivity) {}
  
  /* Error */
  protected u a(java.lang.Integer... paramVarArgs)
  {
    // Byte code:
    //   0: ldc 20
    //   2: astore_2
    //   3: getstatic 26	com/unionpay/upomp/bypay/other/eh:jdField_n_of_type_JavaLangString	Ljava/lang/String;
    //   6: ldc 28
    //   8: invokevirtual 34	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   11: ifeq +438 -> 449
    //   14: getstatic 37	com/unionpay/upomp/bypay/other/eh:o	Ljava/lang/String;
    //   17: ldc 28
    //   19: invokevirtual 34	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   22: ifeq +233 -> 255
    //   25: aload_0
    //   26: getfield 10	com/unionpay/upomp/bypay/other/m:a	Lcom/unionpay/upomp/bypay/activity/PayItActivity;
    //   29: invokestatic 42	com/unionpay/upomp/bypay/activity/PayItActivity:a	(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Ljava/lang/String;
    //   32: putstatic 45	com/unionpay/upomp/bypay/other/eh:R	Ljava/lang/String;
    //   35: invokestatic 49	com/unionpay/upomp/bypay/activity/PayItActivity:b	()Landroid/widget/EditText;
    //   38: invokevirtual 55	android/widget/EditText:getText	()Landroid/text/Editable;
    //   41: invokeinterface 61 1 0
    //   46: putstatic 64	com/unionpay/upomp/bypay/other/eh:V	Ljava/lang/String;
    //   49: invokestatic 67	com/unionpay/upomp/bypay/activity/PayItActivity:c	()Landroid/widget/EditText;
    //   52: invokevirtual 55	android/widget/EditText:getText	()Landroid/text/Editable;
    //   55: invokeinterface 61 1 0
    //   60: putstatic 70	com/unionpay/upomp/bypay/other/eh:p	Ljava/lang/String;
    //   63: invokestatic 73	com/unionpay/upomp/bypay/activity/PayItActivity:h	()Landroid/widget/EditText;
    //   66: invokevirtual 55	android/widget/EditText:getText	()Landroid/text/Editable;
    //   69: invokeinterface 61 1 0
    //   74: invokestatic 79	com/unionpay/upomp/bypay/util/Utils:j	(Ljava/lang/String;)Ljava/lang/String;
    //   77: putstatic 82	com/unionpay/upomp/bypay/other/eh:q	Ljava/lang/String;
    //   80: invokestatic 85	com/unionpay/upomp/bypay/activity/PayItActivity:b	()Landroid/widget/Button;
    //   83: invokevirtual 90	android/widget/Button:getText	()Ljava/lang/CharSequence;
    //   86: invokeinterface 93 1 0
    //   91: putstatic 96	com/unionpay/upomp/bypay/other/eh:r	Ljava/lang/String;
    //   94: getstatic 96	com/unionpay/upomp/bypay/other/eh:r	Ljava/lang/String;
    //   97: getstatic 82	com/unionpay/upomp/bypay/other/eh:q	Ljava/lang/String;
    //   100: getstatic 99	com/unionpay/upomp/bypay/other/eh:v	Ljava/lang/String;
    //   103: invokestatic 104	com/unionpay/upomp/bypay/other/dh:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   106: putstatic 96	com/unionpay/upomp/bypay/other/eh:r	Ljava/lang/String;
    //   109: getstatic 26	com/unionpay/upomp/bypay/other/eh:jdField_n_of_type_JavaLangString	Ljava/lang/String;
    //   112: getstatic 45	com/unionpay/upomp/bypay/other/eh:R	Ljava/lang/String;
    //   115: getstatic 64	com/unionpay/upomp/bypay/other/eh:V	Ljava/lang/String;
    //   118: getstatic 70	com/unionpay/upomp/bypay/other/eh:p	Ljava/lang/String;
    //   121: getstatic 82	com/unionpay/upomp/bypay/other/eh:q	Ljava/lang/String;
    //   124: getstatic 96	com/unionpay/upomp/bypay/other/eh:r	Ljava/lang/String;
    //   127: getstatic 107	com/unionpay/upomp/bypay/other/eh:s	Ljava/lang/String;
    //   130: getstatic 110	com/unionpay/upomp/bypay/other/eh:t	Ljava/lang/String;
    //   133: getstatic 113	com/unionpay/upomp/bypay/other/eh:as	Ljava/lang/String;
    //   136: getstatic 116	com/unionpay/upomp/bypay/other/eh:am	Ljava/lang/String;
    //   139: getstatic 119	com/unionpay/upomp/bypay/other/eh:an	Ljava/lang/String;
    //   142: getstatic 122	com/unionpay/upomp/bypay/other/eh:ap	Ljava/lang/String;
    //   145: getstatic 125	com/unionpay/upomp/bypay/other/eh:ao	Ljava/lang/String;
    //   148: getstatic 128	com/unionpay/upomp/bypay/other/eh:at	Ljava/lang/String;
    //   151: getstatic 131	com/unionpay/upomp/bypay/other/eh:u	Ljava/lang/String;
    //   154: getstatic 134	com/unionpay/upomp/bypay/other/eh:aj	Ljava/lang/String;
    //   157: getstatic 137	com/unionpay/upomp/bypay/other/eh:ab	Ljava/lang/String;
    //   160: getstatic 140	com/unionpay/upomp/bypay/other/eh:ac	Ljava/lang/String;
    //   163: ldc 20
    //   165: ldc 20
    //   167: invokestatic 143	com/unionpay/upomp/bypay/util/Utils:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   170: astore_2
    //   171: ldc 145
    //   173: aload_2
    //   174: invokestatic 147	com/unionpay/upomp/bypay/util/Utils:c	(Ljava/lang/String;)Ljava/lang/String;
    //   177: invokestatic 150	com/unionpay/upomp/bypay/util/Utils:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/upomp/bypay/other/af;
    //   180: astore 9
    //   182: aload 9
    //   184: putstatic 153	com/unionpay/upomp/bypay/other/eh:jdField_a_of_type_ComUnionpayUpompBypayOtherAf	Lcom/unionpay/upomp/bypay/other/af;
    //   187: new 155	com/unionpay/upomp/bypay/other/fv
    //   190: dup
    //   191: getstatic 158	com/unionpay/upomp/bypay/other/eh:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   194: invokespecial 161	com/unionpay/upomp/bypay/other/fv:<init>	(Landroid/content/Context;)V
    //   197: putstatic 164	com/unionpay/upomp/bypay/other/eh:jdField_a_of_type_ComUnionpayUpompBypayOtherFv	Lcom/unionpay/upomp/bypay/other/fv;
    //   200: getstatic 164	com/unionpay/upomp/bypay/other/eh:jdField_a_of_type_ComUnionpayUpompBypayOtherFv	Lcom/unionpay/upomp/bypay/other/fv;
    //   203: aload 9
    //   205: invokevirtual 167	com/unionpay/upomp/bypay/other/fv:a	(Lcom/unionpay/upomp/bypay/other/eu;)V
    //   208: iconst_0
    //   209: istore 10
    //   211: iconst_1
    //   212: putstatic 170	com/unionpay/upomp/bypay/other/eh:b	Z
    //   215: getstatic 173	com/unionpay/upomp/bypay/other/eh:aM	Ljava/lang/String;
    //   218: ifnonnull +15 -> 233
    //   221: getstatic 175	com/unionpay/upomp/bypay/other/eh:jdField_a_of_type_Boolean	Z
    //   224: ifeq +9 -> 233
    //   227: getstatic 170	com/unionpay/upomp/bypay/other/eh:b	Z
    //   230: ifne +445 -> 675
    //   233: getstatic 175	com/unionpay/upomp/bypay/other/eh:jdField_a_of_type_Boolean	Z
    //   236: istore 11
    //   238: iload 11
    //   240: ifne +527 -> 767
    //   243: aconst_null
    //   244: areturn
    //   245: astore 15
    //   247: aload 15
    //   249: invokevirtual 178	java/lang/Exception:printStackTrace	()V
    //   252: goto -143 -> 109
    //   255: getstatic 37	com/unionpay/upomp/bypay/other/eh:o	Ljava/lang/String;
    //   258: ldc 180
    //   260: invokevirtual 34	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   263: ifeq -92 -> 171
    //   266: aload_0
    //   267: getfield 10	com/unionpay/upomp/bypay/other/m:a	Lcom/unionpay/upomp/bypay/activity/PayItActivity;
    //   270: invokestatic 42	com/unionpay/upomp/bypay/activity/PayItActivity:a	(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Ljava/lang/String;
    //   273: putstatic 45	com/unionpay/upomp/bypay/other/eh:R	Ljava/lang/String;
    //   276: invokestatic 49	com/unionpay/upomp/bypay/activity/PayItActivity:b	()Landroid/widget/EditText;
    //   279: invokevirtual 55	android/widget/EditText:getText	()Landroid/text/Editable;
    //   282: invokeinterface 61 1 0
    //   287: putstatic 64	com/unionpay/upomp/bypay/other/eh:V	Ljava/lang/String;
    //   290: invokestatic 183	com/unionpay/upomp/bypay/activity/PayItActivity:d	()Landroid/widget/EditText;
    //   293: invokevirtual 55	android/widget/EditText:getText	()Landroid/text/Editable;
    //   296: invokeinterface 61 1 0
    //   301: putstatic 70	com/unionpay/upomp/bypay/other/eh:p	Ljava/lang/String;
    //   304: invokestatic 186	com/unionpay/upomp/bypay/activity/PayItActivity:i	()Landroid/widget/EditText;
    //   307: invokevirtual 55	android/widget/EditText:getText	()Landroid/text/Editable;
    //   310: invokeinterface 61 1 0
    //   315: invokestatic 79	com/unionpay/upomp/bypay/util/Utils:j	(Ljava/lang/String;)Ljava/lang/String;
    //   318: putstatic 82	com/unionpay/upomp/bypay/other/eh:q	Ljava/lang/String;
    //   321: ldc 20
    //   323: putstatic 96	com/unionpay/upomp/bypay/other/eh:r	Ljava/lang/String;
    //   326: new 188	java/lang/StringBuilder
    //   329: dup
    //   330: getstatic 191	com/unionpay/upomp/bypay/other/eh:jdField_n_of_type_ArrayOfJavaLangString	[Ljava/lang/String;
    //   333: getstatic 195	com/unionpay/upomp/bypay/other/eh:jdField_m_of_type_Int	I
    //   336: aaload
    //   337: invokestatic 199	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   340: invokespecial 202	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   343: getstatic 205	com/unionpay/upomp/bypay/other/eh:aL	Ljava/lang/String;
    //   346: iconst_2
    //   347: invokevirtual 209	java/lang/String:substring	(I)Ljava/lang/String;
    //   350: invokevirtual 213	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   356: putstatic 107	com/unionpay/upomp/bypay/other/eh:s	Ljava/lang/String;
    //   359: getstatic 107	com/unionpay/upomp/bypay/other/eh:s	Ljava/lang/String;
    //   362: invokestatic 217	com/unionpay/upomp/bypay/util/Utils:a	(Ljava/lang/String;)Z
    //   365: ifne +5 -> 370
    //   368: aconst_null
    //   369: areturn
    //   370: invokestatic 219	com/unionpay/upomp/bypay/activity/PayItActivity:c	()Landroid/widget/Button;
    //   373: invokevirtual 90	android/widget/Button:getText	()Ljava/lang/CharSequence;
    //   376: invokeinterface 93 1 0
    //   381: putstatic 110	com/unionpay/upomp/bypay/other/eh:t	Ljava/lang/String;
    //   384: getstatic 26	com/unionpay/upomp/bypay/other/eh:jdField_n_of_type_JavaLangString	Ljava/lang/String;
    //   387: getstatic 45	com/unionpay/upomp/bypay/other/eh:R	Ljava/lang/String;
    //   390: getstatic 64	com/unionpay/upomp/bypay/other/eh:V	Ljava/lang/String;
    //   393: getstatic 70	com/unionpay/upomp/bypay/other/eh:p	Ljava/lang/String;
    //   396: getstatic 82	com/unionpay/upomp/bypay/other/eh:q	Ljava/lang/String;
    //   399: getstatic 96	com/unionpay/upomp/bypay/other/eh:r	Ljava/lang/String;
    //   402: getstatic 107	com/unionpay/upomp/bypay/other/eh:s	Ljava/lang/String;
    //   405: getstatic 110	com/unionpay/upomp/bypay/other/eh:t	Ljava/lang/String;
    //   408: getstatic 113	com/unionpay/upomp/bypay/other/eh:as	Ljava/lang/String;
    //   411: getstatic 116	com/unionpay/upomp/bypay/other/eh:am	Ljava/lang/String;
    //   414: getstatic 119	com/unionpay/upomp/bypay/other/eh:an	Ljava/lang/String;
    //   417: getstatic 122	com/unionpay/upomp/bypay/other/eh:ap	Ljava/lang/String;
    //   420: getstatic 125	com/unionpay/upomp/bypay/other/eh:ao	Ljava/lang/String;
    //   423: getstatic 128	com/unionpay/upomp/bypay/other/eh:at	Ljava/lang/String;
    //   426: getstatic 131	com/unionpay/upomp/bypay/other/eh:u	Ljava/lang/String;
    //   429: getstatic 134	com/unionpay/upomp/bypay/other/eh:aj	Ljava/lang/String;
    //   432: getstatic 137	com/unionpay/upomp/bypay/other/eh:ab	Ljava/lang/String;
    //   435: getstatic 140	com/unionpay/upomp/bypay/other/eh:ac	Ljava/lang/String;
    //   438: ldc 20
    //   440: ldc 20
    //   442: invokestatic 143	com/unionpay/upomp/bypay/util/Utils:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   445: astore_2
    //   446: goto -275 -> 171
    //   449: getstatic 26	com/unionpay/upomp/bypay/other/eh:jdField_n_of_type_JavaLangString	Ljava/lang/String;
    //   452: ldc 180
    //   454: invokevirtual 34	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   457: ifeq +84 -> 541
    //   460: invokestatic 222	com/unionpay/upomp/bypay/activity/PayItActivity:f	()Landroid/widget/EditText;
    //   463: invokevirtual 55	android/widget/EditText:getText	()Landroid/text/Editable;
    //   466: invokeinterface 61 1 0
    //   471: putstatic 64	com/unionpay/upomp/bypay/other/eh:V	Ljava/lang/String;
    //   474: getstatic 26	com/unionpay/upomp/bypay/other/eh:jdField_n_of_type_JavaLangString	Ljava/lang/String;
    //   477: getstatic 225	com/unionpay/upomp/bypay/other/eh:S	Ljava/lang/String;
    //   480: getstatic 64	com/unionpay/upomp/bypay/other/eh:V	Ljava/lang/String;
    //   483: getstatic 70	com/unionpay/upomp/bypay/other/eh:p	Ljava/lang/String;
    //   486: getstatic 82	com/unionpay/upomp/bypay/other/eh:q	Ljava/lang/String;
    //   489: getstatic 96	com/unionpay/upomp/bypay/other/eh:r	Ljava/lang/String;
    //   492: getstatic 107	com/unionpay/upomp/bypay/other/eh:s	Ljava/lang/String;
    //   495: getstatic 110	com/unionpay/upomp/bypay/other/eh:t	Ljava/lang/String;
    //   498: getstatic 113	com/unionpay/upomp/bypay/other/eh:as	Ljava/lang/String;
    //   501: getstatic 116	com/unionpay/upomp/bypay/other/eh:am	Ljava/lang/String;
    //   504: getstatic 119	com/unionpay/upomp/bypay/other/eh:an	Ljava/lang/String;
    //   507: getstatic 122	com/unionpay/upomp/bypay/other/eh:ap	Ljava/lang/String;
    //   510: getstatic 125	com/unionpay/upomp/bypay/other/eh:ao	Ljava/lang/String;
    //   513: getstatic 128	com/unionpay/upomp/bypay/other/eh:at	Ljava/lang/String;
    //   516: getstatic 131	com/unionpay/upomp/bypay/other/eh:u	Ljava/lang/String;
    //   519: getstatic 134	com/unionpay/upomp/bypay/other/eh:aj	Ljava/lang/String;
    //   522: getstatic 137	com/unionpay/upomp/bypay/other/eh:ab	Ljava/lang/String;
    //   525: getstatic 140	com/unionpay/upomp/bypay/other/eh:ac	Ljava/lang/String;
    //   528: getstatic 228	com/unionpay/upomp/bypay/other/eh:O	Ljava/lang/String;
    //   531: invokestatic 230	com/unionpay/upomp/bypay/activity/PayItActivity:a	()Ljava/lang/String;
    //   534: invokestatic 143	com/unionpay/upomp/bypay/util/Utils:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   537: astore_2
    //   538: goto -367 -> 171
    //   541: getstatic 26	com/unionpay/upomp/bypay/other/eh:jdField_n_of_type_JavaLangString	Ljava/lang/String;
    //   544: ldc 232
    //   546: invokevirtual 34	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   549: ifeq -378 -> 171
    //   552: invokestatic 234	com/unionpay/upomp/bypay/activity/PayItActivity:j	()Landroid/widget/EditText;
    //   555: invokevirtual 55	android/widget/EditText:getText	()Landroid/text/Editable;
    //   558: invokeinterface 61 1 0
    //   563: invokestatic 79	com/unionpay/upomp/bypay/util/Utils:j	(Ljava/lang/String;)Ljava/lang/String;
    //   566: astore_3
    //   567: invokestatic 237	com/unionpay/upomp/bypay/activity/PayItActivity:e	()Landroid/widget/Button;
    //   570: invokevirtual 90	android/widget/Button:getText	()Ljava/lang/CharSequence;
    //   573: invokeinterface 93 1 0
    //   578: astore 4
    //   580: aload 4
    //   582: aload_3
    //   583: getstatic 99	com/unionpay/upomp/bypay/other/eh:v	Ljava/lang/String;
    //   586: invokestatic 104	com/unionpay/upomp/bypay/other/dh:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   589: astore 14
    //   591: aload 14
    //   593: astore 4
    //   595: invokestatic 240	com/unionpay/upomp/bypay/activity/PayItActivity:g	()Landroid/widget/EditText;
    //   598: invokevirtual 55	android/widget/EditText:getText	()Landroid/text/Editable;
    //   601: invokeinterface 61 1 0
    //   606: astore 6
    //   608: getstatic 26	com/unionpay/upomp/bypay/other/eh:jdField_n_of_type_JavaLangString	Ljava/lang/String;
    //   611: ldc 20
    //   613: ldc 20
    //   615: aload 6
    //   617: aload_3
    //   618: aload 4
    //   620: ldc 20
    //   622: ldc 20
    //   624: getstatic 113	com/unionpay/upomp/bypay/other/eh:as	Ljava/lang/String;
    //   627: getstatic 116	com/unionpay/upomp/bypay/other/eh:am	Ljava/lang/String;
    //   630: getstatic 119	com/unionpay/upomp/bypay/other/eh:an	Ljava/lang/String;
    //   633: getstatic 122	com/unionpay/upomp/bypay/other/eh:ap	Ljava/lang/String;
    //   636: getstatic 125	com/unionpay/upomp/bypay/other/eh:ao	Ljava/lang/String;
    //   639: getstatic 128	com/unionpay/upomp/bypay/other/eh:at	Ljava/lang/String;
    //   642: getstatic 131	com/unionpay/upomp/bypay/other/eh:u	Ljava/lang/String;
    //   645: getstatic 134	com/unionpay/upomp/bypay/other/eh:aj	Ljava/lang/String;
    //   648: getstatic 137	com/unionpay/upomp/bypay/other/eh:ab	Ljava/lang/String;
    //   651: getstatic 140	com/unionpay/upomp/bypay/other/eh:ac	Ljava/lang/String;
    //   654: ldc 20
    //   656: ldc 20
    //   658: invokestatic 143	com/unionpay/upomp/bypay/util/Utils:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   661: astore_2
    //   662: goto -491 -> 171
    //   665: astore 5
    //   667: aload 5
    //   669: invokevirtual 178	java/lang/Exception:printStackTrace	()V
    //   672: goto -77 -> 595
    //   675: getstatic 153	com/unionpay/upomp/bypay/other/eh:jdField_a_of_type_ComUnionpayUpompBypayOtherAf	Lcom/unionpay/upomp/bypay/other/af;
    //   678: ifnull +11 -> 689
    //   681: iload 10
    //   683: sipush 240
    //   686: if_icmple +31 -> 717
    //   689: aconst_null
    //   690: putstatic 153	com/unionpay/upomp/bypay/other/eh:jdField_a_of_type_ComUnionpayUpompBypayOtherAf	Lcom/unionpay/upomp/bypay/other/af;
    //   693: new 242	java/text/SimpleDateFormat
    //   696: dup
    //   697: ldc 244
    //   699: invokespecial 245	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   702: new 247	java/util/Date
    //   705: dup
    //   706: invokespecial 248	java/util/Date:<init>	()V
    //   709: invokevirtual 252	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   712: putstatic 254	com/unionpay/upomp/bypay/other/eh:jdField_e_of_type_JavaLangString	Ljava/lang/String;
    //   715: aconst_null
    //   716: areturn
    //   717: iinc 10 1
    //   720: ldc2_w 255
    //   723: invokestatic 262	java/lang/Thread:sleep	(J)V
    //   726: goto -511 -> 215
    //   729: astore 13
    //   731: aload 13
    //   733: invokevirtual 263	java/lang/InterruptedException:printStackTrace	()V
    //   736: goto -521 -> 215
    //   739: astore 7
    //   741: aload 7
    //   743: invokevirtual 178	java/lang/Exception:printStackTrace	()V
    //   746: getstatic 173	com/unionpay/upomp/bypay/other/eh:aM	Ljava/lang/String;
    //   749: ifnull +30 -> 779
    //   752: getstatic 173	com/unionpay/upomp/bypay/other/eh:aM	Ljava/lang/String;
    //   755: invokestatic 265	com/unionpay/upomp/bypay/util/Utils:b	(Ljava/lang/String;)Z
    //   758: ifne +21 -> 779
    //   761: aconst_null
    //   762: putstatic 173	com/unionpay/upomp/bypay/other/eh:aM	Ljava/lang/String;
    //   765: aconst_null
    //   766: areturn
    //   767: getstatic 170	com/unionpay/upomp/bypay/other/eh:b	Z
    //   770: istore 12
    //   772: iload 12
    //   774: ifne -28 -> 746
    //   777: aconst_null
    //   778: areturn
    //   779: ldc_w 267
    //   782: putstatic 271	com/unionpay/upomp/bypay/other/ae:jdField_a_of_type_JavaLangString	Ljava/lang/String;
    //   785: getstatic 173	com/unionpay/upomp/bypay/other/eh:aM	Ljava/lang/String;
    //   788: new 273	com/unionpay/upomp/bypay/other/dw
    //   791: dup
    //   792: invokespecial 274	com/unionpay/upomp/bypay/other/dw:<init>	()V
    //   795: invokestatic 277	com/unionpay/upomp/bypay/other/ae:a	(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Lorg/xml/sax/helpers/DefaultHandler;
    //   798: checkcast 273	com/unionpay/upomp/bypay/other/dw
    //   801: invokevirtual 280	com/unionpay/upomp/bypay/other/dw:a	()Lcom/unionpay/upomp/bypay/other/u;
    //   804: astore 8
    //   806: aconst_null
    //   807: putstatic 173	com/unionpay/upomp/bypay/other/eh:aM	Ljava/lang/String;
    //   810: aload 8
    //   812: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	813	0	this	m
    //   0	813	1	paramVarArgs	java.lang.Integer[]
    //   2	660	2	str1	String
    //   566	52	3	str2	String
    //   578	41	4	localObject	java.lang.Object
    //   665	3	5	localException1	java.lang.Exception
    //   606	10	6	str3	String
    //   739	3	7	localException2	java.lang.Exception
    //   804	7	8	localu	u
    //   180	24	9	localaf	af
    //   209	509	10	i	int
    //   236	3	11	bool1	boolean
    //   770	3	12	bool2	boolean
    //   729	3	13	localInterruptedException	java.lang.InterruptedException
    //   589	3	14	str4	String
    //   245	3	15	localException3	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   94	109	245	java/lang/Exception
    //   580	591	665	java/lang/Exception
    //   720	726	729	java/lang/InterruptedException
    //   171	208	739	java/lang/Exception
    //   211	215	739	java/lang/Exception
    //   215	233	739	java/lang/Exception
    //   233	238	739	java/lang/Exception
    //   675	681	739	java/lang/Exception
    //   689	715	739	java/lang/Exception
    //   720	726	739	java/lang/Exception
    //   731	736	739	java/lang/Exception
    //   767	772	739	java/lang/Exception
  }
  
  protected void a(u paramu)
  {
    super.onPostExecute(paramu);
    if (!eh.b) {
      Utils.a();
    }
    do
    {
      return;
      Utils.a();
    } while (!eh.jdField_a_of_type_Boolean);
    if (paramu == null)
    {
      if (eh.jdField_n_of_type_JavaLangString.equals("1")) {
        if (eh.o.equals("1")) {
          PayItActivity.b();
        }
      }
      for (;;)
      {
        Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
        return;
        if (eh.o.equals("2"))
        {
          PayItActivity.c();
          continue;
          if (eh.jdField_n_of_type_JavaLangString.equals("2")) {
            PayItActivity.e();
          } else if (eh.jdField_n_of_type_JavaLangString.equals("3")) {
            PayItActivity.f();
          }
        }
      }
    }
    if (paramu.c().equals("0000"))
    {
      eh.av = paramu.b();
      eh.aw = paramu.a();
      com.unionpay.upomp.bypay.util.UPOMP.payResult = true;
      eh.jdField_m_of_type_JavaLangString = "";
      eh.jdField_m_of_type_JavaLangString += "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>";
      eh.jdField_m_of_type_JavaLangString = eh.jdField_m_of_type_JavaLangString + "<upomp application=\"UpClose.Rsp\" pluginVersion=\"" + eh.H + "\">";
      eh.jdField_m_of_type_JavaLangString = eh.jdField_m_of_type_JavaLangString + "<merchantId>" + eh.am + "</merchantId>";
      eh.jdField_m_of_type_JavaLangString += "<respCode>0000</respCode>";
      eh.jdField_m_of_type_JavaLangString = eh.jdField_m_of_type_JavaLangString + "<respDesc>" + paramu.d() + "</respDesc>";
      eh.jdField_m_of_type_JavaLangString += "</upomp>";
      eh.jdField_e_of_type_JavaLangBoolean = Boolean.valueOf(true);
      Intent localIntent2 = new Intent();
      localIntent2.setClass(eh.jdField_a_of_type_AndroidContentContext, PayResultActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent2);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return;
    }
    if ((paramu.c().equals("5309")) && (eh.jdField_n_of_type_JavaLangString.equals("2")))
    {
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramu.d() + "|" + paramu.c());
      eh.k = 1;
      PayItActivity.a(this.a);
      return;
    }
    eh.jdField_m_of_type_JavaLangString = "";
    eh.jdField_m_of_type_JavaLangString += "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>";
    eh.jdField_m_of_type_JavaLangString = eh.jdField_m_of_type_JavaLangString + "<upomp application=\"UpClose.Rsp\" pluginVersion=\"" + eh.H + "\">";
    eh.jdField_m_of_type_JavaLangString = eh.jdField_m_of_type_JavaLangString + "<merchantId>" + eh.am + "</merchantId>";
    eh.jdField_m_of_type_JavaLangString += "<respCode>0002</respCode>";
    eh.jdField_m_of_type_JavaLangString = eh.jdField_m_of_type_JavaLangString + "<respDesc>" + this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_payfail")) + "</respDesc>";
    eh.jdField_m_of_type_JavaLangString += "</upomp>";
    eh.jdField_e_of_type_JavaLangBoolean = Boolean.valueOf(false);
    eh.aI = paramu.d() + "|" + paramu.c();
    Intent localIntent1 = new Intent();
    localIntent1.setClass(eh.jdField_a_of_type_AndroidContentContext, PayResultActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent1);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    eh.jdField_a_of_type_JavaLangString = "payit";
    Utils.b(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.m
 * JD-Core Version:    0.7.0.1
 */