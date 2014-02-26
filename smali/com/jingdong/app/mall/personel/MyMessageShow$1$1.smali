.class Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;
.super Ljava/lang/Object;
.source "MyMessageShow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyMessageShow$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f0300a6

    .line 141
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/jingdong/app/mall/personel/MyMessageShow;->imageHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 145
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/MessageListItem;->getMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    iget v0, v0, Lcom/jingdong/app/mall/personel/MyMessageShow;->msgType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    iget v0, v0, Lcom/jingdong/app/mall/personel/MyMessageShow;->msgType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    const v1, 0x7f0300a5

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->setContentView(I)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/personel/MyMessageShow;->getMessageDetail()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow;)V

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/personel/MyMessageShow;->initTitle()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$2(Lcom/jingdong/app/mall/personel/MyMessageShow;)V

    .line 163
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jingdong/app/mall/personel/MyMessageShow;->runnable:Ljava/lang/Runnable;

    .line 164
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/personel/MyMessageShow;->setContentView(I)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    iget v0, v0, Lcom/jingdong/app/mall/personel/MyMessageShow;->msgType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 155
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/personel/MyMessageShow;->setContentView(I)V

    .line 156
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/personel/MyMessageShow;->initViewContentTypeReActivationUser()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$1(Lcom/jingdong/app/mall/personel/MyMessageShow;)V

    goto :goto_1

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/personel/MyMessageShow;->setContentView(I)V

    goto :goto_1
.end method
