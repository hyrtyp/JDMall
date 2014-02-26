.class Lcom/jingdong/common/utils/ApplicationUpgradeHelper$6;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$0()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, noUpdateAlert:Landroid/app/AlertDialog$Builder;
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->ok:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 187
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->software_no_update_msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 189
    return-void
.end method
