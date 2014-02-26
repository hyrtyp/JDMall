.class Lcom/jingdong/app/mall/home/PanicBuyingActivity$1;
.super Ljava/lang/Object;
.source "PanicBuyingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/home/PanicBuyingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/PanicBuyingActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/PanicBuyingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity$1;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 131
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity$1;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingActivity;

    const-class v2, Lcom/jingdong/app/mall/home/PanicBuyingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, service:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity$1;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingActivity;

    #getter for: Lcom/jingdong/app/mall/home/PanicBuyingActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->access$0(Lcom/jingdong/app/mall/home/PanicBuyingActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity$1;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 134
    iget-object v1, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity$1;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->finish()V

    goto :goto_0

    .line 138
    .end local v0           #service:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity$1;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->finish()V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0497
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
