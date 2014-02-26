.class Lcom/jingdong/app/mall/login/LoginActivity$9;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$9;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/login/LoginActivity$9;)Lcom/jingdong/app/mall/login/LoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$9;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 503
    new-instance v0, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v0}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 505
    .local v0, map:Lcom/jingdong/common/utils/URLParamMap;
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$9;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->findPdUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$11(Lcom/jingdong/app/mall/login/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    :goto_0
    return-void

    .line 509
    :cond_0
    const-string v1, "to"

    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity$9;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->findPdUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/login/LoginActivity;->access$11(Lcom/jingdong/app/mall/login/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    const-string v1, "to"

    new-instance v2, Lcom/jingdong/app/mall/login/LoginActivity$9$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/login/LoginActivity$9$1;-><init>(Lcom/jingdong/app/mall/login/LoginActivity$9;)V

    invoke-static {v1, v0, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    goto :goto_0
.end method
