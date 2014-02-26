.class Lcom/jingdong/app/mall/utils/CommonUtil$1;
.super Lcom/jingdong/app/mall/utils/ui/DialogController;
.source "CommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CommonUtil;->checkSDKForPay()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/CommonUtil;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$1;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

    .line 89
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 92
    packed-switch p2, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    .line 95
    .local v1, myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MainFrameActivity;->finish()V

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v2, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
    .end packed-switch
.end method
