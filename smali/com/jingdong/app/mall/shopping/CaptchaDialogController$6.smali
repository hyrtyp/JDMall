.class Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6;
.super Ljava/lang/Object;
.source "CaptchaDialogController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->bindImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6;)Lcom/jingdong/app/mall/shopping/CaptchaDialogController;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 2
    .parameter "httpResponse"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->currentMyActivity:Lcom/jingdong/common/frame/IMyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$2(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6$2;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6$2;-><init>(Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->currentMyActivity:Lcom/jingdong/common/frame/IMyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$2(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6$1;-><init>(Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 4
    .parameter "httpSettingParams"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readDeviceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    const/4 v3, 0x6

    #calls: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->randomText(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$10(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->captchaKey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$11(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;Ljava/lang/String;)V

    .line 168
    const-string v0, "key"

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$6;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->captchaKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$12(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putMapParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method
