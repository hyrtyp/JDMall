.class Lcom/jingdong/app/mall/MainFrameActivity$17;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->navigationInit(I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$17;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    .line 1432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity$17;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    const/4 v1, 0x0

    #calls: Lcom/jingdong/app/mall/MainFrameActivity;->showSearchActivity(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->access$10(Lcom/jingdong/app/mall/MainFrameActivity;Landroid/os/Bundle;)V

    .line 1438
    return-void
.end method
