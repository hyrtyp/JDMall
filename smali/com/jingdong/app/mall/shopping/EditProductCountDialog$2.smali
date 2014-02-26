.class Lcom/jingdong/app/mall/shopping/EditProductCountDialog$2;
.super Ljava/lang/Object;
.source "EditProductCountDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->showInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$2;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$2;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$0(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$2;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$2(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 331
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$2;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$0(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 333
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
