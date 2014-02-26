.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$1;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 201
    return-void
.end method
