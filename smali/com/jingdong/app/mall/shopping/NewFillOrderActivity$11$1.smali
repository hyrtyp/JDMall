.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11$1;
.super Ljava/lang/Thread;
.source "NewFillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;

    .line 952
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 955
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 956
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mButtonSubmit:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$20(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    :goto_0
    return-void

    .line 957
    :catch_0
    move-exception v0

    goto :goto_0
.end method
