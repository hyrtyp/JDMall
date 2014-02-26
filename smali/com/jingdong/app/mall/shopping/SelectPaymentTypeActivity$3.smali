.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$3;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->createAlertDiglog(ILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

.field private final synthetic val$defaultSelectId:I

.field private final synthetic val$operating:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$3;->val$operating:I

    iput p3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$3;->val$defaultSelectId:I

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 402
    iget v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$3;->val$defaultSelectId:I

    if-eq v0, p2, :cond_0

    .line 403
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$3;->val$operating:I

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selectChange(II)V
    invoke-static {v0, v1, p2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$11(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;II)V

    .line 405
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 407
    return-void
.end method
