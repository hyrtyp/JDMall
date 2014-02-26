.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

.field private final synthetic val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    .locals 1
    .parameter

    .prologue
    .line 912
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    return-object v0
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$3;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$3;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 969
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    const/16 v1, 0x78

    iput v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->timerI:I

    .line 917
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 925
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;)V

    .line 955
    const-wide/16 v2, 0x3e8

    .line 925
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 956
    return-void
.end method
