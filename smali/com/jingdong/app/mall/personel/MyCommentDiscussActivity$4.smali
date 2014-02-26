.class Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;
.super Ljava/lang/Object;
.source "MyCommentDiscussActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustOrder(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;ILcom/jingdong/common/entity/Product;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;ILcom/jingdong/common/entity/Product;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$type:I

    iput-object p4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$product:Lcom/jingdong/common/entity/Product;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 9
    .parameter "httpResponse"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    .line 430
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 433
    .local v3, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    const-string v4, "flag"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 441
    .local v2, flag:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 445
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    instance-of v4, v4, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    if-eqz v4, :cond_2

    .line 446
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$intent:Landroid/content/Intent;

    const-string v5, "from_which"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    :goto_0
    iget v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$type:I

    if-ne v4, v6, :cond_0

    .line 451
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v5, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$1;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$intent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v5, p0, v6, v7}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$1;-><init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;Landroid/content/Intent;Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 461
    :cond_0
    iget v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$type:I

    if-ne v4, v8, :cond_1

    .line 462
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v5, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$intent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v8, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;-><init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;Landroid/content/Intent;Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 509
    .end local v2           #flag:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, e:Lorg/json/JSONException;
    goto :goto_1

    .line 448
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #flag:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$intent:Landroid/content/Intent;

    const-string v5, "from_which"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 480
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    iget v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$type:I

    if-ne v4, v6, :cond_4

    .line 483
    const v4, 0x7f070379

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 484
    const v4, 0x7f070391

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 486
    :cond_4
    iget v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$type:I

    if-ne v4, v8, :cond_5

    .line 487
    const v4, 0x7f07037a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 488
    const v4, 0x7f070392

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 491
    :cond_5
    const v4, 0x7f070223

    new-instance v5, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$3;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$3;-><init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v5, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$4;

    invoke-direct {v5, p0, v0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$4;-><init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 411
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 423
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method
