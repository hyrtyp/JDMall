.class Lcom/jingdong/app/mall/product/BuyAskListActivity$2;
.super Ljava/lang/Object;
.source "BuyAskListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/BuyAskListActivity;->handleButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/BuyAskListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/BuyAskListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->this$0:Lcom/jingdong/app/mall/product/BuyAskListActivity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/BuyAskListActivity$2;)Lcom/jingdong/app/mall/product/BuyAskListActivity;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->this$0:Lcom/jingdong/app/mall/product/BuyAskListActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 196
    new-instance v0, Lcom/jingdong/app/mall/product/BuyAskListActivity$2$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/BuyAskListActivity$2$1;-><init>(Lcom/jingdong/app/mall/product/BuyAskListActivity$2;)V

    .line 209
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->this$0:Lcom/jingdong/app/mall/product/BuyAskListActivity;

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method
