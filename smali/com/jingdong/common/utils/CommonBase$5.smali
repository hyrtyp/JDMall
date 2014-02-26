.class Lcom/jingdong/common/utils/CommonBase$5;
.super Ljava/util/TimerTask;
.source "CommonBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/CommonBase;->isCanClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/CommonBase;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/CommonBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/CommonBase$5;->this$0:Lcom/jingdong/common/utils/CommonBase;

    .line 986
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/jingdong/common/utils/CommonBase$5;->this$0:Lcom/jingdong/common/utils/CommonBase;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/common/utils/CommonBase;->canShowInToastTime:Z
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/CommonBase;->access$0(Lcom/jingdong/common/utils/CommonBase;Z)V

    .line 991
    return-void
.end method
