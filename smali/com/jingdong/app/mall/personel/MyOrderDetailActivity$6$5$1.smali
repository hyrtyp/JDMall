.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;
    .locals 1
    .parameter

    .prologue
    .line 700
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 712
    return-void
.end method
