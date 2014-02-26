.class Lcom/jingdong/app/mall/personel/MyMessageShow$5;
.super Ljava/lang/Object;
.source "MyMessageShow.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyMessageShow;->getMessageDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyMessageShow;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "msgDetail"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 369
    .local v0, itemProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "others"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 374
    .local v1, other:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    new-instance v3, Lcom/jingdong/common/entity/MessageDetail;

    invoke-direct {v3, v0, v1}, Lcom/jingdong/common/entity/MessageDetail;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    #setter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$4(Lcom/jingdong/app/mall/personel/MyMessageShow;Lcom/jingdong/common/entity/MessageDetail;)V

    .line 389
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    new-instance v3, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;-><init>(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/MyMessageShow;->post(Ljava/lang/Runnable;)V

    .line 440
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    iget-object v2, v2, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageListItem;->getMsgId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/PushMessageUtils;->setMessageReaded(Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 447
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 453
    return-void
.end method
