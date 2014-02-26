.class Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$3;
.super Ljava/lang/Object;
.source "WorksInBackground.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->doUnExcuteFunctions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

.field private final synthetic val$temp:Lcom/jingdong/common/entity/UnExcuteFunction;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;Lcom/jingdong/common/entity/UnExcuteFunction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$3;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

    iput-object p2, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$3;->val$temp:Lcom/jingdong/common/entity/UnExcuteFunction;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 1
    .parameter "httpResponse"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$3;->val$temp:Lcom/jingdong/common/entity/UnExcuteFunction;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UnExcuteFunction;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/jingdong/common/database/table/UnExcuteFunctionTable;->deleteUnExcuteFunction(I)V

    .line 190
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 194
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 198
    return-void
.end method
