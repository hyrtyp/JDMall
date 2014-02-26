.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$2;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 212
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->cancelOrder()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$1(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    .line 213
    return-void
.end method
