.class Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;
.super Ljava/lang/Object;
.source "EasyGoAddrListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    .locals 1
    .parameter

    .prologue
    .line 433
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 438
    move v1, p3

    .line 439
    .local v1, index:I
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v3

    const v4, 0x7f070353

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v4

    const v5, 0x7f070354

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v4

    const v5, 0x7f070355

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 440
    .local v2, items:[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 441
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070356

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 444
    new-instance v3, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;[Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 538
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 539
    return v6
.end method
