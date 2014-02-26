.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$1;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->forwardLogin()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    .line 277
    return-void
.end method
