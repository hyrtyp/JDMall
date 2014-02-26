.class Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$2;
.super Ljava/lang/Object;
.source "CategoriesSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->showError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$2;->this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$2;->this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->contentView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$6(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$2;->this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$5(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$2;->this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$7(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$2;->this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingErrorView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$8(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    return-void
.end method
