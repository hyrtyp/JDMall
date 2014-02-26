.class Lcom/jingdong/app/mall/product/ProductListActivity$1;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

.field private final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$1;->val$items:[Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 240
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$1;->val$items:[Ljava/lang/String;

    aget-object v0, v1, p2

    .line 242
    .local v0, keyWord:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/product/ProductListActivity;->showSeachResult(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$3(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->listDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$13(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 251
    return-void
.end method
