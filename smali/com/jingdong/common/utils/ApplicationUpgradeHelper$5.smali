.class Lcom/jingdong/common/utils/ApplicationUpgradeHelper$5;
.super Ljava/lang/Object;
.source "ApplicationUpgradeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->tryUpgrade(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$description:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$5;->val$description:Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 173
    sget-object v0, Lcom/jingdong/common/res/StringUtil;->software_need_update_msg:Ljava/lang/String;

    .line 174
    .local v0, text:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$11()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n\n\u5347\u7ea7\u6539\u52a8\uff1a\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$5;->val$description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$11()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$12(Landroid/app/AlertDialog;)V

    .line 176
    return-void
.end method
