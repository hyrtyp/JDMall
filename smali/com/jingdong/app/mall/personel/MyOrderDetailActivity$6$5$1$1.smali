.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1$1;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1$1;->this$3:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1$1;->val$url:Ljava/lang/String;

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 706
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1$1;->this$3:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 707
    .local v0, webIntent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1$1;->this$3:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 709
    return-void
.end method
