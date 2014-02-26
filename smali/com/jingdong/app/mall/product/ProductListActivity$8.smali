.class Lcom/jingdong/app/mall/product/ProductListActivity$8;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v3, 0x0

    .line 510
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 511
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_0

    .line 512
    invoke-virtual {v0, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 516
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
