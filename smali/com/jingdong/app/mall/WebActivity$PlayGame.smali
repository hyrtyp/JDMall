.class final Lcom/jingdong/app/mall/WebActivity$PlayGame;
.super Ljava/lang/Object;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PlayGame"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/WebActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/WebActivity$PlayGame;)V
    .locals 0
    .parameter

    .prologue
    .line 1004
    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity$PlayGame;->loginCallBack()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/WebActivity$PlayGame;)Lcom/jingdong/app/mall/WebActivity;
    .locals 1
    .parameter

    .prologue
    .line 959
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame;->this$0:Lcom/jingdong/app/mall/WebActivity;

    return-object v0
.end method

.method private loginCallBack()V
    .locals 3

    .prologue
    .line 1006
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$0(Lcom/jingdong/app/mall/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:loginCallback(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserCert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'<head>\' + document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_0
    return-void

    .line 1010
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public beginFighter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 964
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity$PlayGame;->loginCallBack()V

    .line 980
    :goto_0
    return-void

    .line 967
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/WebActivity$PlayGame$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/WebActivity$PlayGame$1;-><init>(Lcom/jingdong/app/mall/WebActivity$PlayGame;)V

    .line 974
    .local v0, runnableService:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/WebActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 975
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/WebActivity;->setRequestedOrientation(I)V

    .line 978
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public beginShare(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 986
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 987
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame;->this$0:Lcom/jingdong/app/mall/WebActivity;

    const-string v2, "\u5206\u4eab\u5230\uff1a"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/WebActivity;->startActivity(Landroid/content/Intent;)V

    .line 990
    return-void
.end method

.method public endFighter()V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame;->this$0:Lcom/jingdong/app/mall/WebActivity;

    new-instance v1, Lcom/jingdong/app/mall/WebActivity$PlayGame$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/WebActivity$PlayGame$2;-><init>(Lcom/jingdong/app/mall/WebActivity$PlayGame;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/WebActivity;->post(Ljava/lang/Runnable;)V

    .line 1002
    return-void
.end method
