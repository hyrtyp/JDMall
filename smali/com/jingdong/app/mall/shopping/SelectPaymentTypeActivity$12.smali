.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$12;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->updatePickSitesData(Lorg/json/JSONArray;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->createPickAlertDiglog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$28(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    .line 706
    return-void
.end method
