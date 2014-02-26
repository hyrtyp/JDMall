.class Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;
.super Ljava/lang/Object;
.source "ApplicationUpgradeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->onProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;

.field private final synthetic val$percent:I

.field private final synthetic val$size:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;->this$1:Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;

    iput p2, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;->val$percent:I

    iput-object p3, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;->val$size:Ljava/lang/String;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 265
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$9()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$2()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$2()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 274
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$8()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    .line 275
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$2()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u5019...\n\u5df2\u4e0b\u8f7d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;->val$size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;->this$1:Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;

    #getter for: Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->apkSizeStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->access$0(Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;->this$1:Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;

    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$8()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/FileService;->formatSize2(J)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->apkSizeStr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->access$1(Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;Ljava/lang/String;)V

    .line 282
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$2()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u5019...\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;->val$percent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\uff0c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;->val$size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;->this$1:Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;

    #getter for: Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->apkSizeStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->access$0(Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
