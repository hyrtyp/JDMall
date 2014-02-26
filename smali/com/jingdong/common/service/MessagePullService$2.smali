.class Lcom/jingdong/common/service/MessagePullService$2;
.super Landroid/os/Handler;
.source "MessagePullService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/service/MessagePullService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/service/MessagePullService;


# direct methods
.method constructor <init>(Lcom/jingdong/common/service/MessagePullService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    .line 680
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v6, 0x1388

    const/4 v5, 0x0

    .line 689
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 691
    :sswitch_0
    iget-object v6, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #getter for: Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I
    invoke-static {v4}, Lcom/jingdong/common/service/MessagePullService;->access$0(Lcom/jingdong/common/service/MessagePullService;)I

    move-result v4

    iget-object v7, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #getter for: Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/jingdong/common/service/MessagePullService;->access$1(Lcom/jingdong/common/service/MessagePullService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_1

    iget-object v7, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #getter for: Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I
    invoke-static {v7}, Lcom/jingdong/common/service/MessagePullService;->access$0(Lcom/jingdong/common/service/MessagePullService;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I
    invoke-static {v7, v4}, Lcom/jingdong/common/service/MessagePullService;->access$2(Lcom/jingdong/common/service/MessagePullService;I)V

    :goto_1
    #setter for: Lcom/jingdong/common/service/MessagePullService;->updateWidgetIndex:I
    invoke-static {v6, v4}, Lcom/jingdong/common/service/MessagePullService;->access$2(Lcom/jingdong/common/service/MessagePullService;I)V

    .line 692
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #calls: Lcom/jingdong/common/service/MessagePullService;->updateWidget()V
    invoke-static {v4}, Lcom/jingdong/common/service/MessagePullService;->access$3(Lcom/jingdong/common/service/MessagePullService;)V

    .line 693
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #getter for: Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;
    invoke-static {v4}, Lcom/jingdong/common/service/MessagePullService;->access$4(Lcom/jingdong/common/service/MessagePullService;)Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    move-result-object v4

    if-nez v4, :cond_0

    .line 694
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    new-instance v6, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    iget-object v7, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;-><init>(Lcom/jingdong/common/service/MessagePullService;JZ)V

    #setter for: Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;
    invoke-static {v4, v6}, Lcom/jingdong/common/service/MessagePullService;->access$5(Lcom/jingdong/common/service/MessagePullService;Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;)V

    .line 695
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #getter for: Lcom/jingdong/common/service/MessagePullService;->autoUpdateWidgetThread:Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;
    invoke-static {v4}, Lcom/jingdong/common/service/MessagePullService;->access$4(Lcom/jingdong/common/service/MessagePullService;)Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/service/MessagePullService$AutoUpdateWidgetThread;->start()V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 691
    goto :goto_1

    .line 702
    :sswitch_1
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #calls: Lcom/jingdong/common/service/MessagePullService;->updateWidget()V
    invoke-static {v4}, Lcom/jingdong/common/service/MessagePullService;->access$3(Lcom/jingdong/common/service/MessagePullService;)V

    goto :goto_0

    .line 705
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "Action_Get_Widget_Info"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    const-class v5, Lcom/jingdong/common/service/MessagePullService;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 707
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    invoke-virtual {v4, v2}, Lcom/jingdong/common/service/MessagePullService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 710
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 711
    .local v3, url:Ljava/lang/String;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 712
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    .line 713
    invoke-virtual {v0, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 714
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 715
    new-instance v4, Lcom/jingdong/common/service/MessagePullService$2$1;

    invoke-direct {v4, p0, v3}, Lcom/jingdong/common/service/MessagePullService$2$1;-><init>(Lcom/jingdong/common/service/MessagePullService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 721
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #getter for: Lcom/jingdong/common/service/MessagePullService;->httpGroup:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;
    invoke-static {v4}, Lcom/jingdong/common/service/MessagePullService;->access$6(Lcom/jingdong/common/service/MessagePullService;)Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0

    .line 729
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v3           #url:Ljava/lang/String;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 730
    .local v1, i:Landroid/content/Intent;
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    #getter for: Lcom/jingdong/common/service/MessagePullService;->network_retry_time:I
    invoke-static {v4}, Lcom/jingdong/common/service/MessagePullService;->access$7(Lcom/jingdong/common/service/MessagePullService;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    #setter for: Lcom/jingdong/common/service/MessagePullService;->network_retry_time:I
    invoke-static {v4, v5}, Lcom/jingdong/common/service/MessagePullService;->access$8(Lcom/jingdong/common/service/MessagePullService;I)V

    .line 731
    iget-object v4, p0, Lcom/jingdong/common/service/MessagePullService$2;->this$0:Lcom/jingdong/common/service/MessagePullService;

    invoke-virtual {v4, v1}, Lcom/jingdong/common/service/MessagePullService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 689
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x1100 -> :sswitch_1
        0x1101 -> :sswitch_2
        0x1102 -> :sswitch_3
        0x1103 -> :sswitch_4
    .end sparse-switch
.end method
