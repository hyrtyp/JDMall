.class Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity;Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 662
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 663
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 667
    :sswitch_0
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    const-string v2, "type"

    const-string v3, "voice"

    #calls: Lcom/jingdong/app/mall/home/NewHomeActivity;->gotoSearch(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$0(Lcom/jingdong/app/mall/home/NewHomeActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :sswitch_1
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #calls: Lcom/jingdong/app/mall/home/NewHomeActivity;->dismissQuicklyBarPopup()V
    invoke-static {v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$1(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    .line 673
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->checkCameraHardware(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    const-class v4, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 680
    :sswitch_2
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #calls: Lcom/jingdong/app/mall/home/NewHomeActivity;->dismissQuicklyBarPopup()V
    invoke-static {v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$1(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    .line 681
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->checkCameraHardware(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    const-class v4, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 688
    :sswitch_3
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #calls: Lcom/jingdong/app/mall/home/NewHomeActivity;->dismissQuicklyBarPopup()V
    invoke-static {v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$1(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    .line 689
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->checkCameraHardware(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/CameraActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 691
    .local v0, cameraIntent:Landroid/content/Intent;
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 663
    :sswitch_data_0
    .sparse-switch
        0x7f0c00a6 -> :sswitch_0
        0x7f0c011c -> :sswitch_1
        0x7f0c011d -> :sswitch_2
        0x7f0c011f -> :sswitch_3
    .end sparse-switch
.end method
