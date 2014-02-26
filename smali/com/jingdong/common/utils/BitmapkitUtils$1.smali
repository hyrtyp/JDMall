.class Lcom/jingdong/common/utils/BitmapkitUtils$1;
.super Lcom/jingdong/common/ui/DialogController;
.source "BitmapkitUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/BitmapkitUtils;->alertLoadlibFailedDialog(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/BitmapkitUtils;

.field private final synthetic val$mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/BitmapkitUtils;Lcom/jingdong/common/frame/IMainActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/BitmapkitUtils$1;->this$0:Lcom/jingdong/common/utils/BitmapkitUtils;

    iput-object p2, p0, Lcom/jingdong/common/utils/BitmapkitUtils$1;->val$mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

    .line 49
    invoke-direct {p0}, Lcom/jingdong/common/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 53
    packed-switch p2, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/common/utils/BitmapkitUtils$1;->this$0:Lcom/jingdong/common/utils/BitmapkitUtils;

    iget-object v1, p0, Lcom/jingdong/common/utils/BitmapkitUtils$1;->val$mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/BitmapkitUtils;->actionFeedbackWebsite(Lcom/jingdong/common/frame/IMainActivity;)V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/common/utils/BitmapkitUtils$1;->this$0:Lcom/jingdong/common/utils/BitmapkitUtils;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/BitmapkitUtils;->actionClose()V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method
