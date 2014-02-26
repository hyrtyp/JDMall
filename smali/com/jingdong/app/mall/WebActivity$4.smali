.class Lcom/jingdong/app/mall/WebActivity$4;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Lcom/jingdong/common/frame/IResumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/WebActivity;->loginCallback(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/WebActivity;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$4;->this$0:Lcom/jingdong/app/mall/WebActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/WebActivity$4;->val$uri:Landroid/net/Uri;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$4;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v1, p0}, Lcom/jingdong/app/mall/WebActivity;->removeResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V

    .line 197
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$4;->this$0:Lcom/jingdong/app/mall/WebActivity;

    const/4 v2, 0x0

    #setter for: Lcom/jingdong/app/mall/WebActivity;->loginFlag:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/WebActivity;->access$1(Lcom/jingdong/app/mall/WebActivity;Z)V

    .line 214
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$4;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$4;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, from:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "from_ebook"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$4;->this$0:Lcom/jingdong/app/mall/WebActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/WebActivity$4;->val$uri:Landroid/net/Uri;

    const-string v3, "ebook_login"

    #calls: Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro(Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/jingdong/app/mall/WebActivity;->access$2(Lcom/jingdong/app/mall/WebActivity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    .end local v0           #from:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$4;->this$0:Lcom/jingdong/app/mall/WebActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/WebActivity$4;->val$uri:Landroid/net/Uri;

    #calls: Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro(Landroid/net/Uri;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/WebActivity;->access$3(Lcom/jingdong/app/mall/WebActivity;Landroid/net/Uri;)V

    goto :goto_0
.end method
