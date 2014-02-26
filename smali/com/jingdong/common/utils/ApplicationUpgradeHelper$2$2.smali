.class Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$2;
.super Ljava/lang/Object;
.source "ApplicationUpgradeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$2;->this$1:Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$2()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u51fa\u9519\u3002\u8bf7\u53d6\u6d88\u540e\u91cd\u65b0\u5c1d\u8bd5\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method
