.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$7;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->showOrderDetails()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->setOrderStatus()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$29(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    .line 823
    return-void
.end method
