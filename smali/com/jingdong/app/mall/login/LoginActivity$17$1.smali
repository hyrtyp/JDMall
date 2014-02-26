.class Lcom/jingdong/app/mall/login/LoginActivity$17$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity$17;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/login/LoginActivity$17;

.field private final synthetic val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$functionId:Ljava/lang/String;

.field private final synthetic val$tempUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity$17;Ljava/lang/String;Ljava/lang/String;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$17$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$17;

    iput-object p2, p0, Lcom/jingdong/app/mall/login/LoginActivity$17$1;->val$tempUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/login/LoginActivity$17$1;->val$functionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/app/mall/login/LoginActivity$17$1;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1385
    new-instance v0, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v0}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 1386
    .local v0, param:Lcom/jingdong/common/utils/URLParamMap;
    const-string v1, "to"

    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity$17$1;->val$tempUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1387
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$17$1;->val$functionId:Ljava/lang/String;

    new-instance v2, Lcom/jingdong/app/mall/login/LoginActivity$17$1$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/login/LoginActivity$17$1;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v2, p0, v3}, Lcom/jingdong/app/mall/login/LoginActivity$17$1$1;-><init>(Lcom/jingdong/app/mall/login/LoginActivity$17$1;Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-static {v1, v0, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 1406
    return-void
.end method
