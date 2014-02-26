.class Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$6;
.super Ljava/lang/Object;
.source "CategoriesSelectionActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->showSelectedOrUnSelectedView(Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

.field private final synthetic val$hideView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$6;->val$hideView:Landroid/view/View;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x1

    .line 540
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$6;->val$hideView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->isClickable:Z
    invoke-static {v0, v2}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$14(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Z)V

    .line 542
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$10(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setClickable(Z)V

    .line 543
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 536
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->isClickable:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$14(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Z)V

    .line 531
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$10(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setClickable(Z)V

    .line 532
    return-void
.end method
