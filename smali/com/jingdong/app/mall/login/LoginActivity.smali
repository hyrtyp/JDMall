.class public Lcom/jingdong/app/mall/login/LoginActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "LoginActivity.java"


# static fields
.field public static final AUTO_SAVE_USER_NAME:Ljava/lang/String; = "auto_save_user_name_for_select"

.field public static final FIND_PD_KEY:Ljava/lang/String; = "findpwd"

.field public static final NAME_LOG_IN:I = 0x0

.field public static final PHONE_LOG_IN:I = 0x1

.field public static final PREF_LOGIN:Ljava/lang/String; = "loginFlag"

.field public static final PREF_NAME:Ljava/lang/String; = "userInfo"

.field public static final RESEND_FLAG:Ljava/lang/String; = "com.360buy:loginResendFlag"

.field private static final RETRY_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LoginActivity"

.field public static final TO_FINISH:I = 0x0

.field public static final TO_JD_ACCOUNT_SAFE:I = 0x7

.field public static final TO_JD_COLLECT:I = 0x4

.field public static final TO_JD_COMMENT_DISCUSS:I = 0x5

.field public static final TO_JD_EASY_BUY:I = 0x6

.field public static final TO_JD_GAME:I = 0x2

.field public static final TO_JD_MESSAGE:I = 0x3

.field public static final TO_JD_ORDER:I = 0x9

.field public static final TO_JD_REPAIR_CHANGE:I = 0x8

.field public static final TO_MY_JD:I = 0x1

.field public static final TO_UNKNOW:I = -0x1

.field private static mUserPassword:Landroid/widget/EditText; = null

.field public static final passwordTag:Ljava/lang/String; = "jdPasswordTag"


# instance fields
.field private final HISTORY_HIDE:Z

.field private final HISTORY_SHOW:Z

.field private alertDialog:Landroid/app/AlertDialog;

.field private bRememberMe:Z

.field private findPassword:Landroid/widget/TextView;

.field private findPdUrl:Ljava/lang/String;

.field private historyUserNameLayout:Landroid/widget/LinearLayout;

.field private loginDividerLine:Landroid/view/View;

.field loginNameSelectorClickListener:Landroid/view/View$OnClickListener;

.field private login_name_selector:Landroid/widget/ImageView;

.field private login_page_input_name_layout:Landroid/widget/RelativeLayout;

.field private login_user_icon:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mInputMethod:Lcom/jingdong/app/mall/ime/JDInputMethod;

.field private mInputmethodView:Landroid/widget/TextView;

.field mLoginCancel:Landroid/widget/Button;

.field mLoginConfirm:Landroid/widget/Button;

.field mLoginUser:Lcom/jingdong/common/login/LoginUserBase;

.field mRegLink:Landroid/widget/Button;

.field mRememberMe:Landroid/widget/CheckBox;

.field mTitle:Landroid/widget/TextView;

.field private mUserNameTxt:Landroid/widget/EditText;

.field nameTextView:Landroid/widget/TextView;

.field private names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field passwordTextView:Landroid/widget/TextView;

.field sUserName:Ljava/lang/String;

.field sUserPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->HISTORY_SHOW:Z

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->HISTORY_HIDE:Z

    .line 1290
    new-instance v0, Lcom/jingdong/app/mall/login/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/login/LoginActivity$1;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->loginNameSelectorClickListener:Landroid/view/View$OnClickListener;

    .line 95
    return-void
.end method

.method public static EncryptPassword2(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 616
    const/4 v3, 0x0

    .line 619
    .local v3, messageDigest:Ljava/security/MessageDigest;
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 621
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 623
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 638
    .local v0, byteArray:[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 640
    .local v2, md5StrBuff:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 647
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 641
    :cond_0
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 642
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 644
    :cond_1
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 629
    .end local v0           #byteArray:[B
    .end local v1           #i:I
    .end local v2           #md5StrBuff:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 624
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/login/LoginActivity;)Lcom/jingdong/app/mall/ime/JDInputMethod;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mInputMethod:Lcom/jingdong/app/mall/ime/JDInputMethod;

    return-object v0
.end method

.method static synthetic access$1()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/login/LoginActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->bRememberMe:Z

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/login/LoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->findPdUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/login/LoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->bRememberMe:Z

    return v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/login/LoginActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/login/LoginActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->names:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/login/LoginActivity;->delUserNameFromCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/login/LoginActivity;->setUserName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/login/LoginActivity;->loginSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->showAllSavedUserName()V

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/login/LoginActivity;->loginError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/login/LoginActivity;Landroid/view/animation/Animation;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1313
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/login/LoginActivity;->showOrhidHistoryUserName(Landroid/view/animation/Animation;Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_user_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1228
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->closeJDInputMethod()V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->onLogin()V

    return-void
.end method

.method public static afterSuccess(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x1

    .line 886
    if-nez p0, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 892
    .local v3, myIntent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 896
    const-string v6, "com.360buy:loginResendFlag"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 901
    .local v4, resendFlag:I
    const/4 v2, 0x0

    .line 902
    .local v2, intent:Landroid/content/Intent;
    packed-switch v4, :pswitch_data_0

    .line 1001
    :goto_1
    const/4 p0, 0x0

    .line 1003
    goto :goto_0

    .line 905
    :pswitch_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->noShowAgain()V

    .line 906
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v6, Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 907
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "com.360buy:singleInstanceFlag"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 908
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 909
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "pinName"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 911
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_1

    .line 916
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_1
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->getCookie()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {p0, v6, v7, v8}, Lcom/jingdong/common/utils/JDGameUtil;->gotoJDGameUtil(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 917
    const/16 v6, 0x3e8

    invoke-static {p0, v6}, Lcom/jingdong/app/mall/login/LoginActivity;->finishWithDelay(Lcom/jingdong/app/mall/utils/MyActivity;I)V

    goto :goto_1

    .line 921
    :pswitch_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->noShowAgain()V

    .line 922
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v6, Lcom/jingdong/app/mall/personel/MyCollectActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 923
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "com.360buy:singleInstanceFlag"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 924
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_1

    .line 929
    :pswitch_3
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->noShowAgain()V

    .line 930
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v6, Lcom/jingdong/app/mall/personel/MyWebMessage;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 931
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "com.360buy:singleInstanceFlag"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 932
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_1

    .line 937
    :pswitch_4
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->noShowAgain()V

    .line 941
    invoke-static {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->queryAccountSecurity(Lcom/jingdong/app/mall/utils/MyActivity;)V

    goto :goto_1

    .line 946
    :pswitch_5
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->noShowAgain()V

    .line 947
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 948
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "com.360buy:singleInstanceFlag"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 949
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_1

    .line 954
    :pswitch_6
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->noShowAgain()V

    .line 955
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v6, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 956
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "com.360buy:singleInstanceFlag"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 957
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 962
    :pswitch_7
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->noShowAgain()V

    .line 963
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v6, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 964
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "com.360buy:singleInstanceFlag"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 965
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 970
    :pswitch_8
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->noShowAgain()V

    .line 971
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v6, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 972
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "com.360buy:singleInstanceFlag"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 973
    const-string v6, "functionId"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, functonId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 978
    const-string v6, "functionId"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    :cond_2
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 986
    .end local v1           #functonId:Ljava/lang/String;
    :pswitch_9
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 988
    .local v5, result:Landroid/content/Intent;
    const-string v6, "username"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    const-string v6, "cookie"

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->getCookie()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    const-string v6, "commonParams"

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getDeviceInfoStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->setResult(ILandroid/content/Intent;)V

    .line 994
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->finish()V

    goto/16 :goto_1

    .line 902
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private checkDownPointerInView(Landroid/view/View;FF)Z
    .locals 5
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 873
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 874
    .local v0, location2:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 875
    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    aget v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-ltz v3, :cond_0

    aget v3, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gtz v3, :cond_0

    .line 878
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static clearRemember(ZZZ)V
    .locals 0
    .parameter "username"
    .parameter "password"
    .parameter "remember"

    .prologue
    .line 1104
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->clearSafety()V

    .line 1105
    if-eqz p0, :cond_0

    .line 1106
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->removeUsername()V

    .line 1108
    :cond_0
    if-eqz p1, :cond_1

    .line 1109
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->removePassword()V

    .line 1111
    :cond_1
    if-eqz p2, :cond_2

    .line 1112
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->removeRemember()V

    .line 1114
    :cond_2
    return-void
.end method

.method private closeJDInputMethod()V
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mInputMethod:Lcom/jingdong/app/mall/ime/JDInputMethod;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mInputMethod:Lcom/jingdong/app/mall/ime/JDInputMethod;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissPopupwindow()V

    .line 1232
    :cond_0
    return-void
.end method

.method private delUserNameFromCache(Ljava/lang/String;)V
    .locals 3
    .parameter "pinName"

    .prologue
    const/4 v2, 0x0

    .line 760
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-static {p1}, Lcom/jingdong/common/database/table/UserNamesTable;->delUserName(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->clearSafety()V

    .line 766
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_user_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 768
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_user_icon:Landroid/widget/ImageView;

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private static finishWithDelay(Lcom/jingdong/app/mall/utils/MyActivity;I)V
    .locals 1
    .parameter "activity"
    .parameter "delay"

    .prologue
    .line 236
    new-instance v0, Lcom/jingdong/app/mall/login/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/login/LoginActivity$3;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {p0, v0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;I)V

    .line 245
    return-void
.end method

.method public static getAllUserName()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    invoke-static {}, Lcom/jingdong/common/database/table/UserNamesTable;->getUserNames()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getRememberedUser()V
    .locals 2

    .prologue
    .line 1128
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, name:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, passowrd:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #name:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->setUserName(Ljava/lang/String;)V

    .line 1131
    if-eqz v1, :cond_1

    .end local v1           #passowrd:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->setUserPassword(Ljava/lang/String;)V

    .line 1132
    return-void

    .line 1130
    .restart local v0       #name:Ljava/lang/String;
    .restart local v1       #passowrd:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1131
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private getUserName()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->sUserName:Ljava/lang/String;

    .line 570
    return-void
.end method

.method private getUserPassword()V
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->EncryptPassword2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->sUserPassword:Ljava/lang/String;

    .line 587
    return-void
.end method

.method private getUserPasswordNoCode()V
    .locals 1

    .prologue
    .line 612
    sget-object v0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->sUserPassword:Ljava/lang/String;

    .line 613
    return-void
.end method

.method private handleClickEvent()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 381
    const v2, 0x7f0c02ef

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 382
    .local v1, scrollview:Landroid/widget/ScrollView;
    new-instance v2, Lcom/jingdong/app/mall/login/LoginActivity$5;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/login/LoginActivity$5;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 420
    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mLoginConfirm:Landroid/widget/Button;

    new-instance v3, Lcom/jingdong/app/mall/login/LoginActivity$6;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/login/LoginActivity$6;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mRegLink:Landroid/widget/Button;

    new-instance v3, Lcom/jingdong/app/mall/login/LoginActivity$7;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/login/LoginActivity$7;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mRememberMe:Landroid/widget/CheckBox;

    new-instance v3, Lcom/jingdong/app/mall/login/LoginActivity$8;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/login/LoginActivity$8;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 479
    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mRememberMe:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 481
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
    .local v0, preferences:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    .line 487
    const-string v2, "findpwd"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->findPdUrl:Ljava/lang/String;

    .line 492
    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->findPdUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->findPassword:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->findPassword:Landroid/widget/TextView;

    new-instance v3, Lcom/jingdong/app/mall/login/LoginActivity$9;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/login/LoginActivity$9;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    return-void

    .line 497
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->findPassword:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideOrShowText()V
    .locals 2

    .prologue
    .line 1178
    const v1, 0x7f0c02fa

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1179
    .local v0, slipButton:Landroid/widget/CheckBox;
    new-instance v1, Lcom/jingdong/app/mall/login/LoginActivity$15;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity$15;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1202
    return-void
.end method

.method private initBtn()V
    .locals 2

    .prologue
    .line 263
    const v0, 0x7f0c02f4

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->nameTextView:Landroid/widget/TextView;

    .line 264
    const v0, 0x7f0c02f9

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->passwordTextView:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f0c02fd

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mLoginConfirm:Landroid/widget/Button;

    .line 270
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mRegLink:Landroid/widget/Button;

    .line 272
    const v0, 0x7f0c02fc

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mRememberMe:Landroid/widget/CheckBox;

    .line 274
    const v0, 0x7f0c02f1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_user_icon:Landroid/widget/ImageView;

    .line 275
    const v0, 0x7f0c02ff

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->findPassword:Landroid/widget/TextView;

    .line 276
    const v0, 0x7f0c02f5

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;

    .line 277
    const v0, 0x7f0c02f3

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_page_input_name_layout:Landroid/widget/RelativeLayout;

    .line 278
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 279
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->loginNameSelectorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mTitle:Landroid/widget/TextView;

    .line 285
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f070318

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 287
    const v0, 0x7f0c0304

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;

    .line 288
    const v0, 0x7f0c02f7

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->loginDividerLine:Landroid/view/View;

    .line 289
    return-void
.end method

.method private initEditTxt()V
    .locals 3

    .prologue
    .line 299
    const v1, 0x7f0c02f6

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    .line 300
    const v1, 0x7f0c02fb

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    .line 301
    sget-object v1, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    const-string v2, "jdPasswordTag"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 302
    const v1, 0x7f0c0303

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mInputmethodView:Landroid/widget/TextView;

    .line 305
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    new-instance v2, Lcom/jingdong/app/mall/login/LoginActivity$4;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/login/LoginActivity$4;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 350
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->isRemember()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getRememberedUser()V

    .line 363
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->setUserName(Ljava/lang/String;)V

    .line 360
    :goto_1
    sget-object v1, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private initJDInputMethod()V
    .locals 4

    .prologue
    .line 1213
    iput-object p0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mContext:Landroid/content/Context;

    .line 1214
    sget-object v0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1215
    new-instance v0, Lcom/jingdong/app/mall/ime/JDInputMethod;

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    sget-object v2, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    const v3, 0x7f0c02ee

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/jingdong/app/mall/ime/JDInputMethod;-><init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mInputMethod:Lcom/jingdong/app/mall/ime/JDInputMethod;

    .line 1216
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mInputMethod:Lcom/jingdong/app/mall/ime/JDInputMethod;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->initIME()V

    .line 1217
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mInputMethod:Lcom/jingdong/app/mall/ime/JDInputMethod;

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mInputmethodView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->initInputmethodView(Landroid/widget/TextView;)V

    .line 1218
    return-void
.end method

.method private isJDGame()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1336
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.360buy:loginResendFlag"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loginError(Ljava/lang/String;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 660
    new-instance v0, Lcom/jingdong/app/mall/login/LoginActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/login/LoginActivity$10;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->post(Ljava/lang/Runnable;)V

    .line 700
    return-void
.end method

.method private loginSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "pinName"

    .prologue
    .line 711
    new-instance v0, Lcom/jingdong/app/mall/login/LoginActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/login/LoginActivity$11;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->post(Ljava/lang/Runnable;)V

    .line 746
    return-void
.end method

.method private nameCheck()Z
    .locals 5

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, checkFlag:Z
    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, checkStr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    const/4 v0, 0x1

    .line 537
    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07020c

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 540
    :cond_0
    return v0
.end method

.method private onLogin()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1015
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->nameCheck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->passWordCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 1020
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    sget-object v0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1021
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getUserName()V

    .line 1022
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getPassword()Ljava/lang/String;

    move-result-object v7

    .line 1027
    .local v7, password:Ljava/lang/String;
    sget-object v0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_2

    .end local v7           #password:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1028
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getUserPasswordNoCode()V

    .line 1032
    :goto_2
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->sUserPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->sUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 1037
    invoke-static {v1}, Lcom/jingdong/common/utils/PushMessageUtils;->saveBindState(Z)V

    .line 1040
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->sUserName:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->sUserPassword:Ljava/lang/String;

    new-instance v5, Lcom/jingdong/app/mall/login/LoginActivity$14;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/login/LoginActivity$14;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/jingdong/common/login/LoginUserBase;->login(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/jingdong/common/login/LoginUserBase$LoginRequestListener;)V

    goto :goto_0

    .line 1027
    .restart local v7       #password:Ljava/lang/String;
    :cond_2
    const-string v7, ""

    goto :goto_1

    .line 1030
    .end local v7           #password:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getUserPassword()V

    goto :goto_2
.end method

.method private passWordCheck()Z
    .locals 5

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, checkFlag:Z
    sget-object v2, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, checkStr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    const/4 v0, 0x1

    .line 548
    sget-object v2, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07020d

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 551
    :cond_0
    return v0
.end method

.method public static queryAccountSecurity(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 1348
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1349
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "jdHomeShowItem"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1350
    new-instance v1, Lcom/jingdong/app/mall/login/LoginActivity$17;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/login/LoginActivity$17;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1414
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1415
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1417
    return-void
.end method

.method public static saveUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "pinName"

    .prologue
    .line 752
    invoke-static {p0}, Lcom/jingdong/common/database/table/UserNamesTable;->insertUserName(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method private setScreenOrientation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1308
    invoke-virtual {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1309
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->setRequestedOrientation(I)V

    .line 1311
    :cond_0
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 591
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, oldName:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    sget-object v1, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 600
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private setUserPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 606
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 607
    sget-object v0, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :cond_0
    return-void
.end method

.method private showAllSavedUserName()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 773
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 774
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03008a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 781
    .local v11, view:Landroid/view/View;
    const v1, 0x7f0c0305

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 782
    .local v8, namesList:Landroid/widget/ListView;
    invoke-static {}, Lcom/jingdong/app/mall/login/LoginActivity;->getAllUserName()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->names:Ljava/util/ArrayList;

    .line 783
    new-instance v0, Lcom/jingdong/app/mall/login/LoginActivity$12;

    iget-object v3, p0, Lcom/jingdong/app/mall/login/LoginActivity;->names:Ljava/util/ArrayList;

    const v4, 0x7f03008b

    new-array v5, v6, [Ljava/lang/String;

    new-array v6, v6, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/login/LoginActivity$12;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 843
    .local v0, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 844
    new-instance v1, Lcom/jingdong/app/mall/login/LoginActivity$13;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/login/LoginActivity$13;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;)V

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 859
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 860
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 861
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 862
    iget v10, v9, Landroid/graphics/Rect;->top:I

    .line 863
    .local v10, statusBarHeight:I
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->loginDividerLine:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 864
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 865
    .local v7, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v10

    add-int/lit8 v1, v1, -0x1

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 866
    iget v1, v9, Landroid/graphics/Rect;->left:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 867
    iget v1, v9, Landroid/graphics/Rect;->left:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 868
    const/high16 v1, 0x4120

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 869
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/login/LoginActivity;->showOrhidHistoryUserName(Landroid/view/animation/Animation;Z)V

    .line 870
    return-void
.end method

.method private showOrhidHistoryUserName(Landroid/view/animation/Animation;Z)V
    .locals 3
    .parameter "animaition"
    .parameter "isShow"

    .prologue
    const/4 v2, 0x0

    .line 1315
    if-eqz p1, :cond_0

    .line 1316
    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1318
    :cond_0
    if-eqz p2, :cond_1

    .line 1319
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;

    const v1, 0x7f02039e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1320
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1321
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1328
    :goto_0
    return-void

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1324
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1325
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1326
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1287
    :goto_0
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1268
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1269
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    goto :goto_0

    .line 1266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 174
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->setScreenOrientation()V

    .line 175
    const v0, 0x7f030089

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->setContentView(I)V

    .line 184
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->initBtn()V

    .line 185
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->initEditTxt()V

    .line 186
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->handleClickEvent()V

    .line 193
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->initJDInputMethod()V

    .line 195
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->hideOrShowText()V

    .line 197
    const v0, 0x7f0c0300

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/login/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/login/LoginActivity$2;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 216
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->mInputMethod:Lcom/jingdong/app/mall/ime/JDInputMethod;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPopupwindowShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->closeJDInputMethod()V

    .line 227
    :goto_0
    return v0

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->isJDGame()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x3

    invoke-static {p0, v1, v2, v3}, Lcom/jingdong/common/utils/JDGameUtil;->gotoJDGameUtil(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    const/16 v1, 0x3e8

    invoke-static {p0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->finishWithDelay(Lcom/jingdong/app/mall/utils/MyActivity;I)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1173
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->closeJDInputMethod()V

    .line 1174
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 1175
    return-void
.end method

.method public onRemember()V
    .locals 4

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->nameCheck()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->passWordCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1080
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getUserName()V

    .line 1083
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, password:Ljava/lang/String;
    sget-object v1, Lcom/jingdong/app/mall/login/LoginActivity;->mUserPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    .end local v0           #password:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1085
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getUserPasswordNoCode()V

    .line 1089
    :goto_2
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->sUserName:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity;->sUserPassword:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/login/SafetyManager;->saveSafety(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1084
    .restart local v0       #password:Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 1087
    .end local v0           #password:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/jingdong/app/mall/login/LoginActivity;->getUserPassword()V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1236
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 1238
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->isCanClick()Z

    .line 1240
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/login/LoginActivity;->showOrhidHistoryUserName(Landroid/view/animation/Animation;Z)V

    .line 1242
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1243
    new-instance v1, Lcom/jingdong/app/mall/login/LoginActivity$16;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/login/LoginActivity$16;-><init>(Lcom/jingdong/app/mall/login/LoginActivity;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->post(Ljava/lang/Runnable;)V

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1252
    invoke-static {}, Lcom/jingdong/app/mall/login/LoginActivity;->getAllUserName()Ljava/util/ArrayList;

    move-result-object v0

    .line 1253
    .local v0, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1254
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1261
    .end local v0           #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 1256
    .restart local v0       #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1168
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStart()V

    .line 1169
    return-void
.end method
