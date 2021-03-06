.class public Lcom/jingdong/app/mall/utils/JumpUtil;
.super Ljava/lang/Object;
.source "JumpUtil.java"


# static fields
.field public static final FLAG_ABOUT:I = 0x4

.field public static final FLAG_BROWSING_HISTORY:I = 0x1

.field public static final FLAG_FEEDBACK:I = 0x3

.field public static final FLAG_HELP:I = 0x5

.field public static final FLAG_SETTING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "JumpUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jumpToActivity(ILandroid/app/Activity;)V
    .locals 4
    .parameter "flag"
    .parameter "context"

    .prologue
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 54
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/more/HistoryListActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 57
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/more/SettingActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/more/FeedbackActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/more/AboutActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    const-string v3, "helpurl"

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
