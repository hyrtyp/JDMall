.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->cancelOrder()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    .locals 1
    .parameter

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 1061
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1062
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "cancelInfo"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, message:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0, v3, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;Landroid/app/AlertDialog$Builder;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1093
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 1057
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1039
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1098
    return-void
.end method
