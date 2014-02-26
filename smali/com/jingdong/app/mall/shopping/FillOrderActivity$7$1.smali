.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$7$1;
.super Ljava/lang/Thread;
.source "FillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;

    .line 783
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 785
    const-string v0, "FillOrderActivity_handleClickEvent"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7$1;->setName(Ljava/lang/String;)V

    .line 787
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 788
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mSubmit:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    goto :goto_0
.end method
