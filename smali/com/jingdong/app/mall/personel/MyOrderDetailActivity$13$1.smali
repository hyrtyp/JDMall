.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private final synthetic val$flagFinal:Ljava/lang/Boolean;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->val$flagFinal:Ljava/lang/Boolean;

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
    .locals 1
    .parameter

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1183
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07014d

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->val$flagFinal:Ljava/lang/Boolean;

    invoke-direct {v2, p0, v3}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1212
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1213
    return-void
.end method
