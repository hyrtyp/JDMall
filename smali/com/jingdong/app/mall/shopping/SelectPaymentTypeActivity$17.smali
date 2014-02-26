.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$17;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->updatePayMentsData(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mSendTimeJSON:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$25(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lorg/json/JSONObject;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->createAlertDiglog(ILorg/json/JSONObject;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$3(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;ILorg/json/JSONObject;)V

    .line 877
    return-void
.end method
