.class Lcom/jingdong/app/mall/product/ProductListActivity$5;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;->initComponent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 359
    const/16 v2, 0x42

    if-ne p2, v2, :cond_1

    .line 360
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, key:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductListActivity;->showSeachResult(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$3(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V

    .line 371
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 365
    :cond_1
    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    .line 366
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->hasShowSearchFloat:Z
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$17(Lcom/jingdong/app/mall/product/ProductListActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$5;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductListActivity;->hidefloatLayout()V
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$4(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    goto :goto_0

    .line 371
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
