.class Lcom/jingdong/app/mall/signin/SignActivity$5$1;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity$5;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/signin/SignActivity$5;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$5$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$5;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$5$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$5;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$5;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity$5;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$5;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->verifyImg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$21(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02035a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    return-void
.end method
