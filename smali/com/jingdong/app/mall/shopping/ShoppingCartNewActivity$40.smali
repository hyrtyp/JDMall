.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$40;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createSingleView(Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

.field private final synthetic val$selectCb:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$40;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$40;->val$selectCb:Landroid/widget/CheckBox;

    .line 1499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$40;->val$selectCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 1504
    return-void
.end method
