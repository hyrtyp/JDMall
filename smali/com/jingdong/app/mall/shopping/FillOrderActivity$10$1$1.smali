.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendtips:Landroid/widget/TextView;

    const-string v1, "\u77ed\u4fe1\u5bc6\u7801\u53d1\u9001\u6210\u529f,\u8bf7\u8f93\u5165..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    return-void
.end method
