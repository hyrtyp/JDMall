.class Lcom/jingdong/app/mall/personel/MyWebMessage$3$3;
.super Ljava/lang/Object;
.source "MyWebMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyWebMessage$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$3;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$3;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->list:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$17(Lcom/jingdong/app/mall/personel/MyWebMessage;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$3;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->list:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$17(Lcom/jingdong/app/mall/personel/MyWebMessage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$3;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$3(Lcom/jingdong/app/mall/personel/MyWebMessage;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$3;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$3(Lcom/jingdong/app/mall/personel/MyWebMessage;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$3;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    const v1, 0x10057

    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/NotificationUtils;->removeNotify(Landroid/content/Context;I)V

    .line 257
    :cond_1
    return-void
.end method
