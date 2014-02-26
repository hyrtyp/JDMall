.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->confrimGoods()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    .locals 1
    .parameter

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    .line 1166
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 1168
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v4, "flag"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1169
    .local v0, flag:Ljava/lang/Boolean;
    const-string v4, "message"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1170
    .local v3, message:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1171
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    const v5, 0x7f0703c5

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1172
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1177
    :cond_0
    :goto_0
    move-object v1, v0

    .line 1178
    .local v1, flagFinal:Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v5, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0, v6, v3, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1215
    return-void

    .line 1174
    .end local v1           #flagFinal:Ljava/lang/Boolean;
    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1234
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 1239
    return-void
.end method
