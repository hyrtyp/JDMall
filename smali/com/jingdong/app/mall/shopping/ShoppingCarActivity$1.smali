.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$1;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Lcom/jingdong/common/frame/IResumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 1

    .prologue
    .line 162
    sget-boolean v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->isGoFillOrder:Z

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->isGoFillOrder:Z

    .line 164
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->forwardOrder()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 166
    :cond_0
    return-void
.end method
