.class Lcom/jingdong/app/mall/more/SearchActivity$1;
.super Landroid/os/Handler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/more/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$1;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    .line 142
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$1;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/more/SearchActivity;->isAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$0(Lcom/jingdong/app/mall/more/SearchActivity;Z)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$1;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #calls: Lcom/jingdong/app/mall/more/SearchActivity;->init()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$1(Lcom/jingdong/app/mall/more/SearchActivity;)V

    .line 150
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$1;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #calls: Lcom/jingdong/app/mall/more/SearchActivity;->showHotKeyWords()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$2(Lcom/jingdong/app/mall/more/SearchActivity;)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
