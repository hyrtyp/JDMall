.class Lcom/jingdong/common/utils/CPAUtils$Processor$1;
.super Ljava/lang/Object;
.source "CPAUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/CPAUtils$Processor;->beforeRegisterDevice()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/CPAUtils$Processor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$1;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/common/utils/CPAUtils$Processor$1;->this$1:Lcom/jingdong/common/utils/CPAUtils$Processor;

    #calls: Lcom/jingdong/common/utils/CPAUtils$Processor;->getCpaToken()V
    invoke-static {v0}, Lcom/jingdong/common/utils/CPAUtils$Processor;->access$0(Lcom/jingdong/common/utils/CPAUtils$Processor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method
