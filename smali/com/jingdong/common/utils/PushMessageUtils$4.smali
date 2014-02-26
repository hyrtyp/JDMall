.class Lcom/jingdong/common/utils/PushMessageUtils$4;
.super Ljava/lang/Object;
.source "PushMessageUtils.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/PushMessageUtils;->setAllMessageReaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$broadcastReads:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/PushMessageUtils$4;->val$broadcastReads:Ljava/util/ArrayList;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 1
    .parameter "httpResponse"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/jingdong/common/utils/PushMessageUtils$4;->val$broadcastReads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/jingdong/common/utils/PushMessageUtils$4;->val$broadcastReads:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jingdong/common/database/table/PushMessageTable;->insertNotifyMessages(Ljava/util/ArrayList;)V

    .line 570
    :cond_0
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 563
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 559
    return-void
.end method
