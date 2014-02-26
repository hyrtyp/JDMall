.class Lcom/jingdong/app/mall/home/NewHomeActivity$10;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnGroupCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;->makePullRefreshHttpGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$10;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$10;)Lcom/jingdong/app/mall/home/NewHomeActivity;
    .locals 1
    .parameter

    .prologue
    .line 814
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$10;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$10;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    new-instance v1, Lcom/jingdong/app/mall/home/NewHomeActivity$10$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/NewHomeActivity$10$1;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity$10;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->post(Ljava/lang/Runnable;)V

    .line 828
    return-void
.end method
