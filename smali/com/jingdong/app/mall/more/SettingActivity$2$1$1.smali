.class Lcom/jingdong/app/mall/more/SettingActivity$2$1$1;
.super Lcom/jingdong/app/mall/utils/ui/DialogController;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SettingActivity$2$1;->onFinish(Lcom/jingdong/common/lbs/ProductInfoUtil;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/more/SettingActivity$2$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SettingActivity$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/more/SettingActivity$2$1;

    .line 173
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 177
    packed-switch p2, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 179
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
