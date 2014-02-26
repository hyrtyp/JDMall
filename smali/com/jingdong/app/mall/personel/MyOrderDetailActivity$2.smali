.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->initComponent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderCancelButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 195
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderCancelButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;)V

    .line 202
    const-wide/16 v3, 0x3e8

    .line 195
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0702c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 206
    const v1, 0x7f070244

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 207
    const v1, 0x7f07014d

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$2;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    const v1, 0x7f0701a1

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$3;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 225
    return-void
.end method
