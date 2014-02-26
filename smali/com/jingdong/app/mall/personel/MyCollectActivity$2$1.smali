.class Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;
.super Ljava/lang/Object;
.source "MyCollectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$2;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$2;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;)Lcom/jingdong/app/mall/personel/MyCollectActivity$2;
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 214
    if-nez p2, :cond_0

    .line 215
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$2;

    #getter for: Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$2;)Lcom/jingdong/app/mall/personel/MyCollectActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070245

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 219
    const v1, 0x7f070246

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 220
    const v1, 0x7f07014d

    new-instance v2, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v2, p0, v3}, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    const v1, 0x7f0701a1

    new-instance v2, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1$2;-><init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 239
    .end local v0           #alertDialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method
