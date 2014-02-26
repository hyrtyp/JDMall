.class Lcom/jingdong/common/constant/Constants$1;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/constant/Constants;->ShowMsg(Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$actvity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/constant/Constants$1;->val$actvity:Lcom/jingdong/common/frame/IMyActivity;

    iput-object p2, p0, Lcom/jingdong/common/constant/Constants$1;->val$msg:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/common/constant/Constants$1;->val$actvity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 214
    iget-object v1, p0, Lcom/jingdong/common/constant/Constants$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 215
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->ok:Ljava/lang/String;

    new-instance v2, Lcom/jingdong/common/constant/Constants$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/common/constant/Constants$1$1;-><init>(Lcom/jingdong/common/constant/Constants$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 223
    return-void
.end method
