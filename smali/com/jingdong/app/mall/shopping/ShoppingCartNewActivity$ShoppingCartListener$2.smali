.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$2;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$2;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    .line 1825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$2;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->loadErrorLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$8(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1833
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$2;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$1(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$2;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$1(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$2;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->nodataLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$7(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1836
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$2;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v0

    const v1, 0x7f0704bb

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->setNoDataStateText(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$12(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V

    .line 1837
    return-void
.end method
