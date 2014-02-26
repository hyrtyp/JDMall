.class Lcom/jingdong/app/mall/signin/SignActivity$1;
.super Landroid/os/Handler;
.source "SignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/signin/SignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/signin/SignActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$1;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    .line 124
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$1;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->httpSigninInfo()V
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$0(Lcom/jingdong/app/mall/signin/SignActivity;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
