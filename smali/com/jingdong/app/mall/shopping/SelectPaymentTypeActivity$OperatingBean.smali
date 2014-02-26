.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OperatingBean"
.end annotation


# instance fields
.field defaultSelect:I

.field items:[Ljava/lang/String;

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->defaultSelect:I

    return-void
.end method
