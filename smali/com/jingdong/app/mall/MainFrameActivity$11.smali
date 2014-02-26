.class Lcom/jingdong/app/mall/MainFrameActivity$11;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->forwardGetCoupon(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainFrameActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$11;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/MainFrameActivity$11;)Lcom/jingdong/app/mall/MainFrameActivity;
    .locals 1
    .parameter

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity$11;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity$11;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    new-instance v1, Lcom/jingdong/app/mall/MainFrameActivity$11$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/MainFrameActivity$11$1;-><init>(Lcom/jingdong/app/mall/MainFrameActivity$11;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1103
    return-void
.end method
