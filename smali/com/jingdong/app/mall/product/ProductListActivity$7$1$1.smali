.class Lcom/jingdong/app/mall/product/ProductListActivity$7$1$1;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity$7$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/product/ProductListActivity$7$1;

.field private final synthetic val$arrayAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity$7$1;Ljava/lang/CharSequence;Lcom/jingdong/common/utils/MySimpleAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$7$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7$1$1;->val$s:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7$1$1;->val$arrayAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 465
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$7$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$7;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity$7$1;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$7$1;)Lcom/jingdong/app/mall/product/ProductListActivity$7;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity$7;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$7;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, currentText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7$1$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$7$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$7;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity$7$1;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$7$1;)Lcom/jingdong/app/mall/product/ProductListActivity$7;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity$7;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$7;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->historyList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$25(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7$1$1;->val$arrayAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 468
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$7$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$7$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$7$1;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$7;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity$7$1;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$7$1;)Lcom/jingdong/app/mall/product/ProductListActivity$7;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity$7;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$7;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->historyList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$25(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 470
    :cond_0
    return-void
.end method
