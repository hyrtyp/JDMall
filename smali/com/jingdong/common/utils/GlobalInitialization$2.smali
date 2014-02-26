.class Lcom/jingdong/common/utils/GlobalInitialization$2;
.super Ljava/util/TimerTask;
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
    iput-object p1, p0, Lcom/jingdong/common/utils/GlobalInitialization$2;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    .line 321
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization$2;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/jingdong/common/utils/GlobalInitialization;->checksofteWareUpdated(ZLcom/jingdong/common/frame/IMyActivity;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/GlobalInitialization;->access$3(Lcom/jingdong/common/utils/GlobalInitialization;ZLcom/jingdong/common/frame/IMyActivity;)V

    .line 325
    return-void
.end method
