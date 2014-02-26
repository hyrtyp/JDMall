.class Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;
.super Ljava/lang/Object;
.source "MakeNewBuyAsk.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->saveConsultation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    const v6, 0x7f07037c

    .line 276
    .line 277
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 280
    .local v3, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    const-string v4, "saveConsulation"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 288
    .local v2, flag:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->noShowAgain()V

    .line 294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 295
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    .line 294
    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f07026d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 298
    const v4, 0x7f07026e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 301
    new-instance v4, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$1;-><init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;)V

    .line 299
    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    new-instance v5, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$2;

    invoke-direct {v5, p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$2;-><init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->post(Ljava/lang/Runnable;)V

    .line 359
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v2           #flag:Ljava/lang/String;
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, e:Lorg/json/JSONException;
    goto :goto_0

    .line 325
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #flag:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->submitButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$13(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 327
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    .line 326
    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .restart local v0       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f07026f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 331
    new-instance v4, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$3;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$3;-><init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;)V

    .line 329
    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    new-instance v5, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$4;

    invoke-direct {v5, p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$4;-><init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->submitButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$13(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 260
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 272
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method
