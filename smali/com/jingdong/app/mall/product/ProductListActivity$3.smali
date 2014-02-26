.class Lcom/jingdong/app/mall/product/ProductListActivity$3;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;->initComponent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$16(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$16(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$16(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/Keyword;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, keyword:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    .end local v0           #keyword:Ljava/lang/String;
    :goto_0
    return-void

    .line 338
    .restart local v0       #keyword:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductListActivity;->showSeachResult(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$3(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 344
    .end local v0           #keyword:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductListActivity;->hidefloatLayout()V
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$4(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const v2, 0x7f070258

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
