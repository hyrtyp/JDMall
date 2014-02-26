.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface$1;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;->pickSitesSelected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface$1;->val$pos:I

    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;->access$1(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface$1;->val$pos:I

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->pickSitesSelectedByJs(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$1(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V

    .line 1191
    return-void
.end method
