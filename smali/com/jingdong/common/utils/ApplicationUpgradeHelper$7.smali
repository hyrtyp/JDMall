.class Lcom/jingdong/common/utils/ApplicationUpgradeHelper$7;
.super Ljava/lang/Object;
.source "ApplicationUpgradeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$2()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$2()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 226
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$2()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method
