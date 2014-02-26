.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;Landroid/app/AlertDialog$Builder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->val$message:Ljava/lang/String;

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;
    .locals 1
    .parameter

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1069
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07037c

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->val$message:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1086
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1088
    return-void
.end method
