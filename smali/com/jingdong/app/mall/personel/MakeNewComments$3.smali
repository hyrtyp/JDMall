.class Lcom/jingdong/app/mall/personel/MakeNewComments$3;
.super Ljava/lang/Object;
.source "MakeNewComments.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewComments;->submitComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewComments;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MakeNewComments$3;)Lcom/jingdong/app/mall/personel/MakeNewComments;
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    return-object v0
.end method

.method private showDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "alertDialogBuilder"

    .prologue
    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewComments$3$3;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/personel/MakeNewComments$3$3;-><init>(Lcom/jingdong/app/mall/personel/MakeNewComments$3;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MakeNewComments;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    const v6, 0x7f07037c

    .line 284
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 285
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v4, "flag"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 286
    .local v1, flag:Ljava/lang/Boolean;
    const-string v4, "saveComment"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, saveComment:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f07026d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 295
    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 298
    :cond_0
    new-instance v4, Lcom/jingdong/app/mall/personel/MakeNewComments$3$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/MakeNewComments$3$1;-><init>(Lcom/jingdong/app/mall/personel/MakeNewComments$3;)V

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->showDialog(Landroid/app/AlertDialog$Builder;)V

    .line 343
    :goto_0
    return-void

    .line 328
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->mSubmit:Landroid/widget/Button;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$6(Lcom/jingdong/app/mall/personel/MakeNewComments;)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 329
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    .restart local v0       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f07026f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 331
    if-eqz v3, :cond_2

    .line 332
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 334
    :cond_2
    new-instance v4, Lcom/jingdong/app/mall/personel/MakeNewComments$3$2;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/MakeNewComments$3$2;-><init>(Lcom/jingdong/app/mall/personel/MakeNewComments$3;)V

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->showDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->mSubmit:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$6(Lcom/jingdong/app/mall/personel/MakeNewComments;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 264
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 276
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method
