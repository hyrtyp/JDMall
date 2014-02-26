.class Lcom/jingdong/app/mall/ime/JDInputMethod$1;
.super Landroid/os/Handler;
.source "JDInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/ime/JDInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/ime/JDInputMethod;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/ime/JDInputMethod;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod$1;->this$0:Lcom/jingdong/app/mall/ime/JDInputMethod;

    .line 672
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 678
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 683
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod$1;->this$0:Lcom/jingdong/app/mall/ime/JDInputMethod;

    #getter for: Lcom/jingdong/app/mall/ime/JDInputMethod;->isPasswordTransformationMethod:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->access$0(Lcom/jingdong/app/mall/ime/JDInputMethod;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod$1;->this$0:Lcom/jingdong/app/mall/ime/JDInputMethod;

    #calls: Lcom/jingdong/app/mall/ime/JDInputMethod;->updatePopupWindow()V
    invoke-static {v0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->access$1(Lcom/jingdong/app/mall/ime/JDInputMethod;)V

    .line 685
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod$1;->this$0:Lcom/jingdong/app/mall/ime/JDInputMethod;

    #calls: Lcom/jingdong/app/mall/ime/JDInputMethod;->showKeyboardView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->access$2(Lcom/jingdong/app/mall/ime/JDInputMethod;)V

    goto :goto_0

    .line 689
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod$1;->this$0:Lcom/jingdong/app/mall/ime/JDInputMethod;

    #calls: Lcom/jingdong/app/mall/ime/JDInputMethod;->hideSystemInputMethod()Z
    invoke-static {v0}, Lcom/jingdong/app/mall/ime/JDInputMethod;->access$3(Lcom/jingdong/app/mall/ime/JDInputMethod;)Z

    .line 690
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod$1;->this$0:Lcom/jingdong/app/mall/ime/JDInputMethod;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x32

    #calls: Lcom/jingdong/app/mall/ime/JDInputMethod;->sentMessage(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/ime/JDInputMethod;->access$4(Lcom/jingdong/app/mall/ime/JDInputMethod;IJ)V

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
