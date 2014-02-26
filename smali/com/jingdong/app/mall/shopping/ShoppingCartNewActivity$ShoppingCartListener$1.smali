.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$1;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

.field private final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$1;->val$errorMessage:Ljava/lang/String;

    .line 1787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->nodataLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$7(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1792
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->loadErrorLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$8(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1794
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v0

    const/4 v1, 0x1

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->handleLayoutGone(Z)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$9(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Z)V

    .line 1796
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$1;->val$errorMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$1;->val$errorMessage:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->toastShow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;)V

    .line 1799
    :cond_0
    return-void
.end method
