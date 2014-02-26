.class Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2$1;
.super Landroid/os/Handler;
.source "ScrollableTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2$1;->this$1:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;

    .line 149
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 153
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2$1;->this$1:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;

    #calls: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->onChange()V
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;->access$0(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;)V

    .line 154
    return-void
.end method
