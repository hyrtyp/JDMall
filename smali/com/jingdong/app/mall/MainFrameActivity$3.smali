.class Lcom/jingdong/app/mall/MainFrameActivity$3;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->checkAlways_Finish_Activities()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$3;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 363
    packed-switch p2, :pswitch_data_0

    .line 377
    :goto_0
    return-void

    .line 365
    :pswitch_0
    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity$3;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    const/4 v2, 0x1

    #setter for: Lcom/jingdong/app/mall/MainFrameActivity;->isCancleCheckAlways_Finish_Activities:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/MainFrameActivity;->access$3(Lcom/jingdong/app/mall/MainFrameActivity;Z)V

    .line 366
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 371
    :pswitch_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity$3;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
