.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;
    .locals 1
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07014d

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 633
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 634
    return-void
.end method
