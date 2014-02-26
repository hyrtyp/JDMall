.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$28(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1223
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0702ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1224
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07014d

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1231
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$2;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1232
    return-void
.end method
