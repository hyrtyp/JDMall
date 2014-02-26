.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1$1;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 629
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 630
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->finish()V

    .line 631
    return-void
.end method
