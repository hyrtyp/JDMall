.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$7;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Lcom/jingdong/common/frame/IResumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 1

    .prologue
    .line 231
    sget-boolean v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isGoFillOrder:Z

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isGoFillOrder:Z

    .line 233
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->forwardOrder()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$20(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    .line 236
    :cond_0
    return-void
.end method
