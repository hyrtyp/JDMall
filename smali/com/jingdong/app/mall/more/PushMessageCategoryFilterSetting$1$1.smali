.class Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1$1;
.super Ljava/lang/Object;
.source "PushMessageCategoryFilterSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->removeLoadingDialog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$1(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V

    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->refreshPushMsgCategoryError()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$2(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V

    .line 69
    return-void
.end method
