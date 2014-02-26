.class Lcom/jingdong/common/utils/PushMessageUtils$2;
.super Ljava/lang/Object;
.source "PushMessageUtils.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/PushMessageUtils;->bindUser(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$delay:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/PushMessageUtils$2;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/jingdong/common/utils/PushMessageUtils$2;->val$delay:J

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/jingdong/common/utils/PushMessageUtils$2;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/jingdong/common/utils/PushMessageUtils$2;->val$delay:J

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jingdong/common/utils/PushMessageUtils;->saveBindState(Z)V

    .line 207
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 201
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 196
    const-string v0, "devicetoken"

    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getDeviceTokenFromLocal()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    return-void
.end method
