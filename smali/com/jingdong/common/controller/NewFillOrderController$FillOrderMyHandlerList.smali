.class public Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;
.super Lcom/jingdong/common/utils/MyHandlerList;
.source "NewFillOrderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/NewFillOrderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FillOrderMyHandlerList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$FinalTask;,
        Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;,
        Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;,
        Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;,
        Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;
    }
.end annotation


# static fields
.field public static final EVENT_QUERY_CURRENT_ORDER:I = 0x0

.field public static final EVENT_SUBMIT:I = 0x6


# instance fields
.field public event:I

.field private newFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

.field final synthetic this$0:Lcom/jingdong/common/controller/NewFillOrderController;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;

    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/MyHandlerList;-><init>(Z)V

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->event:I

    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/controller/NewFillOrderController;Z)V
    .locals 1
    .parameter
    .parameter "multiThread"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;

    .line 187
    invoke-direct {p0, p2}, Lcom/jingdong/common/utils/MyHandlerList;-><init>(Z)V

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->event:I

    .line 188
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->onFinish(IZ)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->miaoShaoMd5Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;)Lcom/jingdong/common/controller/NewFillOrderController;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    new-instance v0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCurrentOrderMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 207
    new-instance v0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryCouponsMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 208
    new-instance v0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$QueryGiftCartMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 210
    new-instance v0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$SubmitOrderMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 212
    new-instance v0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$FinalTask;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$FinalTask;-><init>(Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList$FinalTask;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 213
    return-void
.end method

.method private miaoShaoMd5Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "functionId"
    .parameter "date"

    .prologue
    .line 587
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 589
    .local v0, sb:Landroid/text/SpannableStringBuilder;
    const-string v1, "clientVersion"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 590
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getSoftwareVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 592
    const-string v1, "client"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 593
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 595
    const-string v1, "functionId"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 596
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 598
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 599
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 601
    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 602
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readDeviceUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 604
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getMiaoShaKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 605
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/common/utils/Md5Encrypt;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private onFinish(IZ)V
    .locals 3
    .parameter "ResultCode"
    .parameter "isSucceed"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->newFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    if-eqz v0, :cond_1

    .line 192
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/jingdong/common/controller/NewFillOrderController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onFinish() -->>  ResultCode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSucceed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->newFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    iget-object v1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->this$0:Lcom/jingdong/common/controller/NewFillOrderController;

    #getter for: Lcom/jingdong/common/controller/NewFillOrderController;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v1}, Lcom/jingdong/common/controller/NewFillOrderController;->access$4(Lcom/jingdong/common/controller/NewFillOrderController;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;->onFinish(Lcom/jingdong/common/entity/NewCurrentOrder;IZ)V

    .line 197
    :cond_1
    return-void
.end method


# virtual methods
.method public setArg1(Ljava/lang/Object;)V
    .locals 0
    .parameter "arg1"

    .prologue
    .line 180
    return-void
.end method

.method public setEvent(I)V
    .locals 0
    .parameter "e"

    .prologue
    .line 216
    iput p1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->event:I

    .line 217
    return-void
.end method

.method public setListener(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->newFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    .line 177
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 221
    iget v0, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->event:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_1

    .line 225
    sget-object v0, Lcom/jingdong/common/controller/NewFillOrderController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " PageManageMyHandlerList start... -->> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->event:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/common/controller/NewFillOrderController$FillOrderMyHandlerList;->init()V

    .line 228
    invoke-super {p0}, Lcom/jingdong/common/utils/MyHandlerList;->start()V

    goto :goto_0
.end method
