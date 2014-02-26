.class Lcom/jingdong/common/utils/GlobalInitialization$1;
.super Ljava/lang/Thread;
.source "GlobalInitialization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/GlobalInitialization;->networkInitializationStart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/GlobalInitialization;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/GlobalInitialization;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/GlobalInitialization$1;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    .line 300
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    const-string v0, "GlobalInitialization_networkInitializationStart"

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/GlobalInitialization$1;->setName(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization$1;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    #getter for: Lcom/jingdong/common/utils/GlobalInitialization;->alreadyDevice:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/GlobalInitialization;->access$0(Lcom/jingdong/common/utils/GlobalInitialization;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization$1;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/GlobalInitialization;->registerDevice(Z)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization$1;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    #getter for: Lcom/jingdong/common/utils/GlobalInitialization;->alreadyConfig:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/GlobalInitialization;->access$1(Lcom/jingdong/common/utils/GlobalInitialization;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization$1;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    #calls: Lcom/jingdong/common/utils/GlobalInitialization;->serverConfig(Z)V
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/GlobalInitialization;->access$2(Lcom/jingdong/common/utils/GlobalInitialization;Z)V

    .line 318
    :cond_1
    return-void
.end method
