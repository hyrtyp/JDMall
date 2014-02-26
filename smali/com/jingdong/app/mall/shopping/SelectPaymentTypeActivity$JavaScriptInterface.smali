.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1171
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    .locals 1
    .parameter

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    return-object v0
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .prologue
    .line 1173
    sget-wide v0, Lcom/jingdong/common/lbs/LocManager;->lati:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 1177
    sget-wide v0, Lcom/jingdong/common/lbs/LocManager;->longi:D

    return-wide v0
.end method

.method public getPickSitesInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPickSitesJSON:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pickSitesSelected(Ljava/lang/String;)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1185
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1186
    .local v0, pos:I
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    new-instance v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface$1;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface$1;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;I)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->post(Ljava/lang/Runnable;)V

    .line 1194
    return-void
.end method
