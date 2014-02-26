.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$10;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

.field private final synthetic val$action:Ljava/lang/String;

.field private final synthetic val$token:J


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$10;->val$action:Ljava/lang/String;

    iput-wide p3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$10;->val$token:J

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$10;->val$action:Ljava/lang/String;

    iget-wide v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$10;->val$token:J

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->handleData(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;J)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$12(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;J)V

    .line 786
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 780
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 775
    return-void
.end method
