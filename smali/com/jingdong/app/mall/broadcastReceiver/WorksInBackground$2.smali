.class Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$2;
.super Ljava/lang/Object;
.source "WorksInBackground.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnGroupCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->doUnExcuteFunctions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$2;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$2;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneUnExcute:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->access$3(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;Z)V

    .line 161
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$2;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

    #calls: Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->close()V
    invoke-static {v0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->access$1(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;)V

    .line 162
    return-void
.end method
