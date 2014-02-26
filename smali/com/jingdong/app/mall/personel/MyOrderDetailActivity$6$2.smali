.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$2;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 648
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 649
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->finish()V

    .line 650
    return-void
.end method
