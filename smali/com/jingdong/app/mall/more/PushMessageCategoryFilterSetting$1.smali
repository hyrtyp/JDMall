.class Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;
.super Ljava/lang/Object;
.source "PushMessageCategoryFilterSetting.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->initCategory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->categories:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$3(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->categories:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$3(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "scribeMsgs"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/common/entity/MessageCategory;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->categories:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$4(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;Ljava/util/ArrayList;)V

    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1$2;-><init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1$1;-><init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 60
    return-void
.end method
