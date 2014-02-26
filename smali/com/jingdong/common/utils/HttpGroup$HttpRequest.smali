.class public Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$StopController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;
    }
.end annotation


# static fields
.field private static final CONNECTION_RESET_BY_PEER:Ljava/lang/String; = "Connection reset by peer"

.field protected static final MODULE_STATE_DISABLE:I = 0x0

.field protected static final MODULE_STATE_ENCRYPT:I = 0x3


# instance fields
.field private cacheHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

.field protected conn:Ljava/net/HttpURLConnection;

.field private connectionHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

.field protected connectionRetry:Z

.field private connectionThreadPoolsHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

.field private contentHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

.field private continueListener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;

.field private currentHandlerIndex:I

.field protected errorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/utils/HttpGroup$HttpError;",
            ">;"
        }
    .end annotation
.end field

.field private firstHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

.field private handlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/utils/HttpGroup$Handler;",
            ">;"
        }
    .end annotation
.end field

.field protected httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

.field protected httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

.field protected inputStream:Ljava/io/InputStream;

.field private ioProgressListener:Lcom/jingdong/common/utils/IOUtil$ProgressListener;

.field public isNeedConnection:Z

.field protected manualRetry:Z

.field private paramHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

.field private stopFlag:Z

.field private testHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

.field final synthetic this$0:Lcom/jingdong/common/utils/HttpGroup;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V
    .locals 2
    .parameter
    .parameter "httpSetting"

    .prologue
    const/4 v1, 0x0

    .line 860
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->currentHandlerIndex:I

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlers:Ljava/util/ArrayList;

    .line 864
    iput-boolean v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->isNeedConnection:Z

    .line 979
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$1;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$1;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->paramHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    .line 998
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$2;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->firstHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    .line 1123
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$3;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->testHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    .line 1385
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$4;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->cacheHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    .line 1657
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$5;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$5;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionThreadPoolsHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    .line 1721
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    .line 2138
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->contentHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    .line 2167
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$8;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$8;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->ioProgressListener:Lcom/jingdong/common/utils/IOUtil$ProgressListener;

    .line 2176
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$9;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$9;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->continueListener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;

    .line 861
    iput-object p2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    .line 862
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->nextHandler()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1869
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->urlParam()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->clearErrorList()V

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2188
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->jsonContent()V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2332
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->imageContent()V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 2360
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->fileContent()V

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;
    .locals 1
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup$HttpError;
    .locals 1
    .parameter

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getLastError()Lcom/jingdong/common/utils/HttpGroup$HttpError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1093
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->callBack()V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 906
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->findCachesFileByMd5()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1475
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->doNetAndCache()V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1574
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->saveCache()V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1676
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->rsaEncrypt()V

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1897
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->beforeConnection()V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handleGetOrPost()V

    return-void
.end method

.method private alertAttestationWIFIDialog()V
    .locals 2

    .prologue
    .line 757
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;

    invoke-direct {v0, p0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 806
    .local v0, httpDialogController:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;
    const-string v1, "WIFI\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 807
    const-string v1, "\u60a8\u6240\u8fde\u63a5\u7684\u7f51\u7edc\u53ef\u80fd\u9700\u8981\u9a8c\u8bc1\uff0c\u73b0\u5728\u6253\u5f00\u6d4f\u89c8\u5668\u8fdb\u884c\u9a8c\u8bc1\uff1f"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 809
    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 811
    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 812
    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->notifyUser(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;)V

    .line 813
    return-void
.end method

.method private alertErrorDialog(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 4
    .parameter "httpError"

    .prologue
    const/4 v3, 0x0

    .line 666
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isNotifyUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    :goto_0
    return-void

    .line 675
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;

    invoke-direct {v0, p0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 719
    .local v0, httpDialogController:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setCanceledOnTouchOutside(Z)V

    .line 721
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->getErrorCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 722
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->alert_message_poor_data_error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 727
    :goto_1
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getAlertErrorDialogType()I

    move-result v1

    if-nez v1, :cond_4

    .line 729
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->retry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isNotifyUserWithExit()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/jingdong/common/res/StringUtil;->exit:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 748
    :cond_1
    :goto_3
    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->notifyUser(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;)V

    goto :goto_0

    .line 724
    :cond_2
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->alert_message_poor_network2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 731
    :cond_3
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->cancel:Ljava/lang/String;

    goto :goto_2

    .line 732
    :cond_4
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getAlertErrorDialogType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 734
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->ok:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 735
    :cond_5
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getAlertErrorDialogType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 737
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->retry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 739
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->back_page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 740
    :cond_6
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getAlertErrorDialogType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 741
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setSynchronizHTTP(Z)V

    .line 743
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->go_setup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 745
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->cancel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private alertSignatureFailedDialog()V
    .locals 2

    .prologue
    .line 830
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$13;

    invoke-direct {v0, p0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$13;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 850
    .local v0, httpDialogController:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 851
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->alert_message_signature_error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 853
    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 854
    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->notifyUser(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;)V

    .line 856
    return-void
.end method

.method private beforeConnection()V
    .locals 5

    .prologue
    .line 1899
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->checkModule(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1903
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$12()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1904
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->continueListener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;

    invoke-static {v1}, Lcom/jingdong/common/utils/HttpGroup;->queryMd5Key(Lcom/jingdong/common/utils/HttpGroup$CompleteListener;)V

    .line 1907
    monitor-enter p0

    .line 1912
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1921
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&hash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getJsonParams()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$12()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/common/utils/Md5Encrypt;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFinalUrl(Ljava/lang/String;)V

    .line 1923
    :cond_1
    return-void

    .line 1916
    :catch_0
    move-exception v0

    .line 1917
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1907
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private callBack()V
    .locals 2

    .prologue
    .line 1095
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->isNeedConnection:Z

    if-eqz v0, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/HttpGroup;->addCompletesCount()V

    .line 1100
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->isLastError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getLastError()Lcom/jingdong/common/utils/HttpGroup$HttpError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    goto :goto_0

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup;->addStep(I)V

    .line 1110
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    goto :goto_0
.end method

.method private clearErrorList()V
    .locals 1

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getErrorList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 465
    return-void
.end method

.method private doNetAndCache()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1482
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getCacheMode()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 1483
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "no cache"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 1484
    .local v0, httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setNoRetry(Z)V

    .line 1485
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 1502
    .end local v0           #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getCacheMode()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->readAssetsCache()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1494
    :cond_2
    iput-boolean v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->isNeedConnection:Z

    .line 1501
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onStart()V

    goto :goto_0
.end method

.method private fileContent()V
    .locals 10

    .prologue
    .line 2364
    :try_start_0
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getSavePath()Lcom/jingdong/common/utils/FileGuider;

    move-result-object v7

    .line 2372
    .local v7, savePath:Lcom/jingdong/common/utils/FileGuider;
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getLength()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/jingdong/common/utils/FileGuider;->setAvailableSize(J)V

    .line 2373
    invoke-static {v7}, Lcom/jingdong/common/utils/FileService;->openFileOutput(Lcom/jingdong/common/utils/FileGuider;)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 2374
    .local v4, fileOutputStream:Ljava/io/FileOutputStream;
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    iget-object v9, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->ioProgressListener:Lcom/jingdong/common/utils/IOUtil$ProgressListener;

    invoke-static {v8, v4, v9, p0}, Lcom/jingdong/common/utils/IOUtil;->readAsFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lcom/jingdong/common/utils/IOUtil$ProgressListener;Lcom/jingdong/common/utils/HttpGroup$StopController;)V

    .line 2376
    const/4 v2, 0x0

    .line 2377
    .local v2, dir:Ljava/io/File;
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2379
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/common/MyApplication;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 2380
    .local v5, filePath:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/jingdong/common/utils/FileGuider;->getChildDirName()Ljava/lang/String;

    move-result-object v1

    .line 2381
    .local v1, childDirName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2382
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2386
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2           #dir:Ljava/io/File;
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2387
    .restart local v2       #dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2388
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2393
    .end local v1           #childDirName:Ljava/lang/String;
    .end local v5           #filePath:Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/FileGuider;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2397
    .local v0, apkFilePath:Ljava/io/File;
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->isStop()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2398
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2400
    :cond_2
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v8, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setSaveFile(Ljava/io/File;)V

    .line 2410
    .end local v0           #apkFilePath:Ljava/io/File;
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v7           #savePath:Lcom/jingdong/common/utils/FileGuider;
    :goto_1
    return-void

    .line 2391
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v7       #savePath:Lcom/jingdong/common/utils/FileGuider;
    :cond_3
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/common/MyApplication;->getFilesDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2401
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v7           #savePath:Lcom/jingdong/common/utils/FileGuider;
    :catch_0
    move-exception v3

    .line 2405
    .local v3, e:Ljava/lang/Exception;
    new-instance v6, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v6, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 2406
    .local v6, httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {p0, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2407
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    goto :goto_1
.end method

.method private findCachesFileByMd5()Ljava/io/File;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 911
    const/4 v1, 0x0

    .line 912
    .local v1, directory:Lcom/jingdong/common/utils/FileService$Directory;
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getMd5()Ljava/lang/String;

    move-result-object v3

    .line 915
    .local v3, fileName:Ljava/lang/String;
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 939
    :goto_0
    if-nez v1, :cond_2

    move-object v2, v5

    .line 972
    :cond_0
    :goto_1
    return-object v2

    .line 918
    :sswitch_0
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isForeverCache()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 919
    const/4 v6, 0x5

    invoke-static {v6}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v1

    .line 923
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 924
    goto :goto_0

    .line 921
    :cond_1
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v1

    goto :goto_2

    .line 928
    :sswitch_1
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v1

    .line 929
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".image"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 942
    :cond_2
    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$Directory;->getDir()Ljava/io/File;

    move-result-object v0

    .line 953
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$Directory;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 954
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$Directory;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 956
    .local v4, filePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .end local v2           #file:Ljava/io/File;
    .end local v4           #filePath:Ljava/lang/String;
    :cond_3
    move-object v2, v5

    .line 972
    goto :goto_1

    .line 915
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x1388 -> :sswitch_1
    .end sparse-switch
.end method

.method private get()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1941
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;-><init>(Lcom/jingdong/common/utils/HttpGroup;Ljava/net/HttpURLConnection;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1942
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1946
    return-void
.end method

.method private getErrorList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/utils/HttpGroup$HttpError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->errorList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->errorList:Ljava/util/ArrayList;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->errorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getLastError()Lcom/jingdong/common/utils/HttpGroup$HttpError;
    .locals 3

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getErrorList()Ljava/util/ArrayList;

    move-result-object v0

    .line 456
    .local v0, errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpError;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 457
    .local v1, size:I
    if-lez v1, :cond_0

    .line 458
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    .line 460
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getResponseJson(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 10
    .parameter "inputStreamString"

    .prologue
    const/4 v7, 0x0

    .line 2520
    const/4 v4, 0x0

    .line 2522
    .local v4, responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    new-instance v5, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2523
    .end local v4           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .local v5, responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_1
    const-string v8, "code"

    invoke-virtual {v5, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2529
    .local v0, codeString:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 2530
    const-string v3, ""

    .line 2532
    .local v3, encContent:Ljava/lang/String;
    const-string v8, "6"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2533
    const-string v8, "des"

    invoke-virtual {v5, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2537
    .local v1, desContent:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2538
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/jingdong/common/secure/SecureNetwork;->getTrueKey(Z)Ljava/lang/String;

    move-result-object v6

    .line 2539
    .local v6, trueKey:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 2540
    const-string v7, "utf-8"

    invoke-static {v1, v6, v7}, Lcom/jingdong/common/secure/DesUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2544
    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    .end local v0           #codeString:Ljava/lang/String;
    .end local v1           #desContent:Ljava/lang/String;
    .end local v3           #encContent:Ljava/lang/String;
    .end local v5           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v6           #trueKey:Ljava/lang/String;
    .restart local v4       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    move-object v7, v4

    .line 2567
    :goto_1
    return-object v7

    .end local v4           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v0       #codeString:Ljava/lang/String;
    .restart local v1       #desContent:Ljava/lang/String;
    .restart local v3       #encContent:Ljava/lang/String;
    .restart local v5       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    move-object v4, v5

    .line 2548
    .end local v5           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v4       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    goto :goto_1

    .line 2551
    .end local v1           #desContent:Ljava/lang/String;
    .end local v4           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v5       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    const-string v8, "8"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "11"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "7"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2552
    :cond_2
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/jingdong/common/secure/SecureNetwork;->doPreparation(ZZ)V

    .line 2553
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->rsaConnectionRetry()V

    move-object v4, v5

    .line 2554
    .end local v5           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v4       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    goto :goto_1

    .line 2555
    .end local v4           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v5       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_3
    const-string v8, "12"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2556
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedEncrypt(Z)V

    .line 2557
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->rsaConnectionRetry()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 2558
    .end local v5           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v4       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    goto :goto_1

    .line 2562
    .end local v0           #codeString:Ljava/lang/String;
    .end local v3           #encContent:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2563
    .local v2, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2564
    .end local v2           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 2565
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2564
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v5       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v4       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    goto :goto_3

    .line 2562
    .end local v4           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v5       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v4       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    goto :goto_2

    .end local v4           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v0       #codeString:Ljava/lang/String;
    .restart local v5       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_4
    move-object v4, v5

    .end local v5           #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v4       #responseJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    goto :goto_0
.end method

.method private handleGetOrPost()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->post()V

    .line 1931
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionHandler2()V

    .line 1932
    return-void

    .line 1929
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->get()V

    goto :goto_0
.end method

.method private handlerJsonData()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 2435
    :try_start_0
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 2436
    .local v7, is:Ljava/io/InputStream;
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$5()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->ioProgressListener:Lcom/jingdong/common/utils/IOUtil$ProgressListener;

    invoke-static {v7, v10, v11}, Lcom/jingdong/common/utils/IOUtil;->readAsString(Ljava/io/InputStream;Ljava/lang/String;Lcom/jingdong/common/utils/IOUtil$ProgressListener;)Ljava/lang/String;

    move-result-object v6

    .line 2455
    .local v6, inputStreamString:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getResponseJson(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    .line 2456
    .local v8, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v8, :cond_0

    .line 2509
    .end local v6           #inputStreamString:Ljava/lang/String;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    return-void

    .line 2460
    .restart local v6       #inputStreamString:Ljava/lang/String;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    const-string v10, "encryptContent"

    invoke-virtual {v8, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2465
    .local v4, encryptContent:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 2466
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup;->httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->getMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v9

    .line 2468
    .local v9, myActivity:Lcom/jingdong/common/frame/IMyActivity;
    invoke-static {v4}, Lcom/jingdong/common/utils/ContentConvertUtil;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 2469
    .local v3, encryptContenByte:[B
    const/4 v1, 0x0

    .line 2471
    .local v1, decodeSrc:[B
    if-nez v9, :cond_1

    .line 2472
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/MyApplication;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v9

    .line 2475
    :cond_1
    if-eqz v9, :cond_2

    .line 2476
    const/4 v10, 0x1

    invoke-interface {v9}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v3, v10, v11}, Lcom/jingdong/common/utils/BitmapkitUtils;->encodeJni([BZLandroid/app/Activity;)[B

    move-result-object v1

    .line 2479
    :cond_2
    const/4 v0, 0x0

    .line 2480
    .local v0, decodeEncryptContent:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 2482
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->alertSignatureFailedDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2498
    .end local v0           #decodeEncryptContent:Ljava/lang/String;
    .end local v1           #decodeSrc:[B
    .end local v3           #encryptContenByte:[B
    .end local v4           #encryptContent:Ljava/lang/String;
    .end local v6           #inputStreamString:Ljava/lang/String;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v9           #myActivity:Lcom/jingdong/common/frame/IMyActivity;
    :catch_0
    move-exception v2

    .line 2502
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v5, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 2503
    .local v5, httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {p0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2504
    iput-boolean v12, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    goto :goto_0

    .line 2484
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    .restart local v0       #decodeEncryptContent:Ljava/lang/String;
    .restart local v1       #decodeSrc:[B
    .restart local v3       #encryptContenByte:[B
    .restart local v4       #encryptContent:Ljava/lang/String;
    .restart local v6       #inputStreamString:Ljava/lang/String;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v9       #myActivity:Lcom/jingdong/common/frame/IMyActivity;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/String;

    .end local v0           #decodeEncryptContent:Ljava/lang/String;
    const-string v10, "UTF-8"

    invoke-direct {v0, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2488
    .restart local v0       #decodeEncryptContent:Ljava/lang/String;
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v10, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 2506
    .end local v0           #decodeEncryptContent:Ljava/lang/String;
    .end local v1           #decodeSrc:[B
    .end local v3           #encryptContenByte:[B
    .end local v4           #encryptContent:Ljava/lang/String;
    .end local v6           #inputStreamString:Ljava/lang/String;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v9           #myActivity:Lcom/jingdong/common/frame/IMyActivity;
    :catch_1
    move-exception v10

    goto :goto_0

    .line 2492
    .restart local v4       #encryptContent:Ljava/lang/String;
    .restart local v6       #inputStreamString:Ljava/lang/String;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_4
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method

.method private imageContent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2344
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->ioProgressListener:Lcom/jingdong/common/utils/IOUtil$ProgressListener;

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/IOUtil;->readAsBytes(Ljava/io/InputStream;Lcom/jingdong/common/utils/IOUtil$ProgressListener;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setInputData([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2355
    :goto_0
    return-void

    .line 2345
    :catch_0
    move-exception v0

    .line 2349
    .local v0, e:Ljava/lang/Throwable;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 2350
    .local v1, httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2351
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    goto :goto_0
.end method

.method private jsonContent()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 2201
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlerJsonData()V

    .line 2205
    :try_start_0
    new-instance v3, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    .line 2206
    .local v3, jsProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v5, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setJsonObject(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2217
    const/4 v4, 0x0

    .line 2219
    .local v4, jsonCode:Ljava/lang/Integer;
    :try_start_1
    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 2237
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    .line 2239
    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2240
    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->continueListener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;

    invoke-static {v5}, Lcom/jingdong/common/utils/HttpGroup;->queryMd5Key(Lcom/jingdong/common/utils/HttpGroup$CompleteListener;)V

    .line 2243
    monitor-enter p0

    .line 2248
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2243
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2258
    iput-boolean v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    .line 2327
    .end local v3           #jsProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v4           #jsonCode:Ljava/lang/Integer;
    :cond_0
    :goto_1
    return-void

    .line 2208
    :catch_0
    move-exception v0

    .line 2212
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v2, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 2213
    .local v2, httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2214
    iput-boolean v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    goto :goto_1

    .line 2220
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    .restart local v3       #jsProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v4       #jsonCode:Ljava/lang/Integer;
    :catch_1
    move-exception v0

    .line 2224
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v2, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 2225
    .restart local v2       #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2226
    iput-boolean v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    goto :goto_1

    .line 2228
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :catch_2
    move-exception v0

    .line 2232
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v2, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 2233
    .restart local v2       #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2234
    iput-boolean v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    goto :goto_1

    .line 2252
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :catch_3
    move-exception v0

    .line 2253
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2243
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 2263
    :cond_1
    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2266
    invoke-virtual {p0, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->setModule(I)V

    .line 2269
    iput-boolean v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    goto :goto_1

    .line 2273
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v7, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 2274
    :cond_3
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>()V

    .line 2275
    .local v1, error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setErrorCode(I)V

    .line 2276
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setJsonCode(I)V

    .line 2277
    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setHttpResponse(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 2278
    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2279
    iput-boolean v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    goto :goto_1

    .line 2283
    .end local v1           #error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_5

    .line 2285
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>()V

    .line 2286
    .restart local v1       #error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {v1, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setErrorCode(I)V

    .line 2287
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setJsonCode(I)V

    .line 2288
    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setHttpResponse(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 2289
    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2290
    iput-boolean v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    goto/16 :goto_1

    .line 2294
    .end local v1           #error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x1e

    if-ne v5, v6, :cond_6

    .line 2296
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>()V

    .line 2297
    .restart local v1       #error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {v1, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setErrorCode(I)V

    .line 2298
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setJsonCode(I)V

    .line 2299
    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setHttpResponse(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 2300
    invoke-virtual {v1, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setNoRetry(Z)V

    .line 2301
    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    goto/16 :goto_1

    .line 2306
    .end local v1           #error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 2308
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->logoutOnlineInfo()V

    .line 2310
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>()V

    .line 2311
    .restart local v1       #error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {v1, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setErrorCode(I)V

    .line 2312
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setJsonCode(I)V

    .line 2313
    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setHttpResponse(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 2314
    invoke-virtual {v1, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setNoRetry(Z)V

    .line 2315
    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    goto/16 :goto_1
.end method

.method private nextHandler()V
    .locals 2

    .prologue
    .line 895
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->currentHandlerIndex:I

    .line 899
    .local v0, i:I
    iget v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->currentHandlerIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->currentHandlerIndex:I

    .line 900
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/utils/HttpGroup$Handler;

    invoke-interface {v1}, Lcom/jingdong/common/utils/HttpGroup$Handler;->run()V

    .line 902
    iput v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->currentHandlerIndex:I

    .line 904
    :cond_0
    return-void
.end method

.method private notifyUser(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;)V
    .locals 8
    .parameter "httpDialogController"

    .prologue
    .line 602
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v6, v6, Lcom/jingdong/common/utils/HttpGroup;->httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->getMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v4

    .line 603
    .local v4, myActivity:Lcom/jingdong/common/frame/IMyActivity;
    if-nez v4, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const/4 v5, 0x0

    .line 608
    .local v5, result:Z
    const/4 v2, 0x0

    .line 609
    .local v2, httpRequestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpRequest;>;"
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$10()Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 610
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$10()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 611
    if-nez v2, :cond_2

    .line 612
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 613
    .end local v2           #httpRequestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpRequest;>;"
    .local v3, httpRequestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpRequest;>;"
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$10()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 614
    const/4 v5, 0x1

    move-object v2, v3

    .line 616
    .end local v3           #httpRequestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpRequest;>;"
    .restart local v2       #httpRequestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpRequest;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 623
    if-eqz v5, :cond_3

    .line 626
    invoke-virtual {p1, v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->init(Ljava/util/ArrayList;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 628
    new-instance v6, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$10;

    invoke-direct {v6, p0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$10;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;)V

    invoke-interface {v4, v6}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 637
    :cond_3
    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->isSynchronizHTTP:Z
    invoke-static {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->access$0(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 639
    monitor-enter p0

    .line 644
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 639
    :goto_1
    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 609
    :catchall_1
    move-exception v6

    :goto_2
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 609
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #httpRequestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpRequest;>;"
    .restart local v3       #httpRequestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpRequest;>;"
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3           #httpRequestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpRequest;>;"
    .restart local v2       #httpRequestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpRequest;>;"
    goto :goto_2
.end method

.method private post()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1955
    new-instance v8, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v9, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-direct {v8, v9, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;-><init>(Lcom/jingdong/common/utils/HttpGroup;Ljava/net/HttpURLConnection;)V

    iput-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1956
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v9, "POST"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1957
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1958
    const/4 v0, 0x0

    .line 1959
    .local v0, data:[B
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getMapParams()Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1960
    const-string v8, "body="

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1985
    :goto_0
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v9, "Content-Length"

    array-length v10, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v9, "Content-Type"

    const-string v10, "application/x-www-form-urlencoded"

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    new-instance v5, Ljava/io/DataOutputStream;

    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1994
    .local v5, outStream:Ljava/io/DataOutputStream;
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 2002
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 2006
    return-void

    .line 1963
    .end local v5           #outStream:Ljava/io/DataOutputStream;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1965
    .local v6, sb:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getMapParams()Ljava/util/Map;

    move-result-object v4

    .line 1966
    .local v4, mapParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1967
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1982
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1968
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1969
    .local v2, key:Ljava/lang/String;
    const-string v8, "functionId"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1972
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1976
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1978
    const-string v8, "&"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private readAssetsCache()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1513
    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v5, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 1515
    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1568
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 1523
    :sswitch_0
    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getMd5()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".json"

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/AssetsCacheUtils;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1525
    .local v1, assetsInput:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 1527
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/jingdong/common/utils/IOUtil;->readAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setString(Ljava/lang/String;)V

    .line 1528
    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    new-instance v5, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setJsonObject(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1530
    :catch_0
    move-exception v2

    .line 1534
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1535
    iput-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    goto :goto_0

    .line 1546
    .end local v1           #assetsInput:Ljava/io/InputStream;
    .end local v2           #e:Ljava/lang/Exception;
    :sswitch_1
    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getMd5()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".image"

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/AssetsCacheUtils;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1547
    .restart local v1       #assetsInput:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 1549
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v1, v4}, Lcom/jingdong/common/utils/IOUtil;->readAsBytes(Ljava/io/InputStream;Lcom/jingdong/common/utils/IOUtil$ProgressListener;)[B

    move-result-object v0

    .line 1550
    .local v0, assetsBytes:[B
    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    array-length v5, v0

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setLength(J)V

    .line 1551
    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v4, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setInputData([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1553
    .end local v0           #assetsBytes:[B
    :catch_1
    move-exception v2

    .line 1557
    .local v2, e:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1558
    iput-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    goto :goto_0

    .line 1515
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x1388 -> :sswitch_1
    .end sparse-switch
.end method

.method private rsaConnectionRetry()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2571
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "attestation RSA"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 2572
    .local v0, httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setNoRetry(Z)V

    .line 2573
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2574
    iput-boolean v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    .line 2575
    return-void
.end method

.method private rsaEncrypt()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1678
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v3

    .line 1679
    .local v3, functionId:Ljava/lang/String;
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getJsonParams()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1681
    .local v0, body:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1716
    :goto_0
    return-void

    .line 1685
    :cond_0
    invoke-static {v3}, Lcom/jingdong/common/secure/SecureAPI;->checkApi(Ljava/lang/String;)Z

    move-result v4

    .line 1686
    .local v4, moduleState:Z
    const-string v2, "false"

    .line 1688
    .local v2, encrypted:Ljava/lang/String;
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getNeedAgainEncrypt()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1689
    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v8, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedEncrypt(Z)V

    .line 1690
    if-eqz v4, :cond_3

    move v4, v6

    .line 1696
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 1698
    const/4 v6, 0x1

    :try_start_0
    invoke-static {v6}, Lcom/jingdong/common/secure/SecureNetwork;->getTrueKey(Z)Ljava/lang/String;

    move-result-object v5

    .line 1699
    .local v5, trueKey:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 1700
    invoke-static {v0, v5}, Lcom/jingdong/common/secure/DesUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1704
    const-string v2, "true"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    .end local v5           #trueKey:Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    const-string v7, "body"

    invoke-virtual {v6, v7, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putMapParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    const-string v7, "encrypted"

    invoke-virtual {v6, v7, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putMapParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v4, v7

    .line 1690
    goto :goto_1

    .line 1706
    :catch_0
    move-exception v1

    .line 1707
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private saveCache()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1575
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->isLastError()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1580
    :cond_1
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isLocalFileCache()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1581
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 1588
    :sswitch_0
    const/4 v1, 0x0

    .line 1589
    .local v1, directory:Lcom/jingdong/common/utils/FileService$Directory;
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isForeverCache()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1590
    const/4 v7, 0x5

    invoke-static {v7}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v1

    .line 1594
    :goto_1
    if-eqz v1, :cond_0

    .line 1595
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getMd5()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1596
    .local v4, fileName:Ljava/lang/String;
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    if-eqz v7, :cond_0

    .line 1599
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1603
    .local v3, fileContent:Ljava/lang/String;
    invoke-static {v1, v4, v3, v10}, Lcom/jingdong/common/utils/FileService;->saveToSDCardWithType(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 1604
    .local v5, result:Z
    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getLocalFileCacheTime()J

    move-result-wide v7

    cmp-long v7, v7, v11

    if-eqz v7, :cond_0

    .line 1605
    new-instance v0, Lcom/jingdong/common/entity/CacheFile;

    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getLocalFileCacheTime()J

    move-result-wide v7

    invoke-direct {v0, v4, v7, v8}, Lcom/jingdong/common/entity/CacheFile;-><init>(Ljava/lang/String;J)V

    .line 1606
    .local v0, cacheFile:Lcom/jingdong/common/entity/CacheFile;
    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/CacheFile;->setDirectory(Lcom/jingdong/common/utils/FileService$Directory;)V

    .line 1607
    invoke-static {v0}, Lcom/jingdong/common/database/table/CacheFileTable;->insertOrUpdate(Lcom/jingdong/common/entity/CacheFile;)V

    goto :goto_0

    .line 1592
    .end local v0           #cacheFile:Lcom/jingdong/common/entity/CacheFile;
    .end local v3           #fileContent:Ljava/lang/String;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v5           #result:Z
    :cond_2
    invoke-static {v10}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v1

    goto :goto_1

    .line 1621
    .end local v1           #directory:Lcom/jingdong/common/utils/FileService$Directory;
    :sswitch_1
    invoke-static {v9}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v1

    .line 1622
    .restart local v1       #directory:Lcom/jingdong/common/utils/FileService$Directory;
    if-eqz v1, :cond_0

    .line 1623
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getMd5()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".image"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1624
    .restart local v4       #fileName:Ljava/lang/String;
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    if-eqz v7, :cond_0

    .line 1627
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getInputData()[B

    move-result-object v3

    .line 1628
    .local v3, fileContent:[B
    invoke-static {v1, v4, v3, v9}, Lcom/jingdong/common/utils/FileService;->saveToSDCardWithType(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;[BI)Z

    move-result v5

    .line 1629
    .restart local v5       #result:Z
    if-eqz v5, :cond_0

    .line 1630
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getLocalFileCacheTime()J

    move-result-wide v7

    cmp-long v7, v7, v11

    if-eqz v7, :cond_3

    .line 1631
    new-instance v0, Lcom/jingdong/common/entity/CacheFile;

    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getLocalFileCacheTime()J

    move-result-wide v7

    invoke-direct {v0, v4, v7, v8}, Lcom/jingdong/common/entity/CacheFile;-><init>(Ljava/lang/String;J)V

    .line 1632
    .restart local v0       #cacheFile:Lcom/jingdong/common/entity/CacheFile;
    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/CacheFile;->setDirectory(Lcom/jingdong/common/utils/FileService$Directory;)V

    .line 1633
    invoke-static {v0}, Lcom/jingdong/common/database/table/CacheFileTable;->insertOrUpdate(Lcom/jingdong/common/entity/CacheFile;)V

    .line 1635
    .end local v0           #cacheFile:Lcom/jingdong/common/entity/CacheFile;
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$Directory;->getDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v2, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1636
    .local v2, file:Ljava/io/File;
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isNeedShareImage()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1637
    invoke-static {v2}, Lcom/jingdong/common/utils/FileService;->saveShareImage(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 1638
    .local v6, shareImagePath:Ljava/lang/String;
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v7, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setShareImagePath(Ljava/lang/String;)V

    .line 1640
    .end local v6           #shareImagePath:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v7, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setSaveFile(Ljava/io/File;)V

    goto/16 :goto_0

    .line 1581
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x1388 -> :sswitch_1
    .end sparse-switch
.end method

.method private urlParam()V
    .locals 5

    .prologue
    .line 1871
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isPost()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1873
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getMapParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1875
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    #getter for: Lcom/jingdong/common/utils/HttpGroup;->reportUserInfoFlag:Z
    invoke-static {v1}, Lcom/jingdong/common/utils/HttpGroup;->access$11(Lcom/jingdong/common/utils/HttpGroup;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1876
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "functionId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getMapParams()Ljava/util/Map;

    move-result-object v1

    const-string v4, "functionId"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isNeedGlobalInitialization()Z

    move-result v3

    invoke-static {v3}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getReportString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 1895
    :cond_0
    :goto_0
    return-void

    .line 1878
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "functionId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getMapParams()Ljava/util/Map;

    move-result-object v1

    const-string v4, "functionId"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1885
    :cond_2
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getMapParams()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/HttpGroup;->mergerUrlAndParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1887
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    #getter for: Lcom/jingdong/common/utils/HttpGroup;->reportUserInfoFlag:Z
    invoke-static {v1}, Lcom/jingdong/common/utils/HttpGroup;->access$11(Lcom/jingdong/common/utils/HttpGroup;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    .line 1888
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isNeedGlobalInitialization()Z

    move-result v3

    invoke-static {v3}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getReportString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1890
    :cond_3
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkErrorInteraction()V
    .locals 3

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getLastError()Lcom/jingdong/common/utils/HttpGroup$HttpError;

    move-result-object v0

    .line 500
    .local v0, lastError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 502
    const-string v1, "attestation WIFI"

    invoke-virtual {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->alertAttestationWIFIDialog()V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->isLastError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->alertErrorDialog(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    goto :goto_0
.end method

.method protected checkModule(I)Z
    .locals 3
    .parameter "state"

    .prologue
    .line 2584
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2585
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$13()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2586
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$13()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2587
    .local v0, state_:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2588
    const/4 v1, 0x1

    .line 2591
    .end local v0           #state_:Ljava/lang/Integer;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected connectionHandler2()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2016
    :try_start_0
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 2021
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 2039
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setCode(I)V

    .line 2042
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setLength(J)V

    .line 2043
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getLength()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/HttpGroup;->addMaxProgress(I)V

    .line 2045
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setType(Ljava/lang/String;)V

    .line 2061
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_1

    .line 2062
    new-instance v3, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>()V

    .line 2063
    .local v3, error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setErrorCode(I)V

    .line 2064
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getCode()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setResponseCode(I)V

    .line 2065
    invoke-virtual {p0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2066
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    .line 2133
    .end local v3           #error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :cond_0
    :goto_0
    return-void

    .line 2072
    :cond_1
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isUseCookies()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2074
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v7, "Set-Cookie"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2075
    .local v0, cookie:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2079
    const/4 v6, 0x0

    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jingdong/common/utils/HttpGroup;->access$8(Ljava/lang/String;)V

    .line 2083
    .end local v0           #cookie:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .line 2085
    .local v5, is:Ljava/io/InputStream;
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v7, "Content-Encoding"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2086
    .local v2, encoding:Ljava/lang/String;
    const-string v6, "gzip"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2087
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2091
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_1
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2098
    :try_start_1
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->nextHandler()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2101
    :try_start_2
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2102
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 2103
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setInputStream(Ljava/io/InputStream;)V

    .line 2107
    :cond_3
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_0

    .line 2108
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2109
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2112
    :catch_0
    move-exception v6

    goto :goto_0

    .line 2089
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_1

    .line 2099
    :catchall_0
    move-exception v6

    .line 2101
    :try_start_4
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2102
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 2103
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->setInputStream(Ljava/io/InputStream;)V

    .line 2107
    :cond_5
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_6

    .line 2108
    iget-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2109
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2114
    :cond_6
    :goto_2
    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2115
    .end local v2           #encoding:Ljava/lang/String;
    .end local v5           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 2116
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2117
    instance-of v6, v1, Ljava/net/SocketTimeoutException;

    if-eqz v6, :cond_7

    .line 2118
    new-instance v3, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>()V

    .line 2119
    .restart local v3       #error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {v3, v9}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setErrorCode(I)V

    .line 2120
    invoke-virtual {p0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2130
    .end local v3           #error:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :goto_3
    iput-boolean v9, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    goto/16 :goto_0

    .line 2121
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Connection reset by peer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2122
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->appendOneAttempts()V

    goto :goto_3

    .line 2127
    :cond_8
    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v4, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 2128
    .local v4, httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    invoke-virtual {p0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    goto :goto_3

    .line 2112
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    .restart local v2       #encoding:Ljava/lang/String;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method public getHttpSetting()Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    return-object v0
.end method

.method public isLastError()Z
    .locals 4

    .prologue
    .line 468
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->errorList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->errorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getAttempts()I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    .line 469
    .local v1, result:Z
    :goto_0
    if-nez v1, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getLastError()Lcom/jingdong/common/utils/HttpGroup$HttpError;

    move-result-object v0

    .line 471
    .local v0, lastError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->isNoRetry()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    const/4 v1, 0x1

    .line 478
    .end local v0           #lastError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :cond_0
    return v1

    .line 468
    .end local v1           #result:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->stopFlag:Z

    return v0
.end method

.method public needConnectionHandler()V
    .locals 2

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->isNeedConnection:Z

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 883
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionThreadPoolsHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->contentHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->nextHandler()V

    .line 888
    :cond_0
    return-void
.end method

.method public noNeedConnectionHandler()V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->paramHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->firstHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->testHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->cacheHandler:Lcom/jingdong/common/utils/HttpGroup$Handler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->nextHandler()V

    .line 875
    return-void
.end method

.method protected setModule(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2598
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2599
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$13()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2601
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$13()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFunctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/jingdong/common/utils/JSONObjectProxy;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2606
    :cond_0
    :goto_0
    return-void

    .line 2602
    :catch_0
    move-exception v0

    .line 2603
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->stopFlag:Z

    .line 425
    return-void
.end method

.method public throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getErrorList()Ljava/util/ArrayList;

    move-result-object v0

    .line 483
    .local v0, errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpError;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->setTimes(I)V

    .line 489
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->checkErrorInteraction()V

    .line 490
    return-void
.end method

.method public typeHandler()V
    .locals 0

    .prologue
    .line 2416
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->nextHandler()V

    .line 2417
    return-void
.end method
