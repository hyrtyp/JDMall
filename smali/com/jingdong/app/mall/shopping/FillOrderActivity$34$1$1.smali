.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;

    .line 5565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;
    .locals 1
    .parameter

    .prologue
    .line 5565
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 5569
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1$1$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 5577
    return-void
.end method
