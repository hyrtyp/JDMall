.class Lcom/jingdong/app/mall/home/NewHomeActivity$11;
.super Ljava/lang/Thread;
.source "NewHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshData()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$11;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    .line 905
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$11;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #calls: Lcom/jingdong/app/mall/home/NewHomeActivity;->initData()V
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$15(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    .line 909
    return-void
.end method
