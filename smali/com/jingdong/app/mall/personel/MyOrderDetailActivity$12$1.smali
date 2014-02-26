.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$1;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$1;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$1;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07037c

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1053
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$1;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0703c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1054
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$1;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1055
    return-void
.end method
