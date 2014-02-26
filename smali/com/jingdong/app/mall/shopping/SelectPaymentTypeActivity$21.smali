.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$21;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 1009
    const v0, 0x7f0c04a9

    if-ne p2, v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->isPhoneConfirm:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$30(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Z)V

    .line 1014
    :goto_0
    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->isPhoneConfirm:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$30(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Z)V

    goto :goto_0
.end method
