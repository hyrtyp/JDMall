.class Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$1;
.super Ljava/lang/Object;
.source "CategoriesSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$1;->this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$1;->this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$1;->this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->onShowCategoriesView(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$3(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Ljava/util/List;)V

    .line 326
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$1;->this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->submitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$4(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 327
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$1;->this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->loadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$5(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$1;->this$1:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->contentView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$6(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    return-void
.end method
