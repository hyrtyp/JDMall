.class public Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;
.super Ljava/lang/Object;
.source "DownPlugTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlugTaskThread"


# instance fields
.field private mActivity:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask$1;-><init>(Lcom/jingdong/app/mall/plug/framework/download/DownPlugTask;)V

    invoke-static {v0, v1}, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->loadPlugsFromNetWrok(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 74
    return-void
.end method
