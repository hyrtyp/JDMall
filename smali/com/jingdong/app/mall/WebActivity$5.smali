.class Lcom/jingdong/app/mall/WebActivity$5;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro(Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/WebActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$5;->this$0:Lcom/jingdong/app/mall/WebActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/WebActivity$5;)Lcom/jingdong/app/mall/WebActivity;
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$5;->this$0:Lcom/jingdong/app/mall/WebActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$5;->this$0:Lcom/jingdong/app/mall/WebActivity;

    new-instance v1, Lcom/jingdong/app/mall/WebActivity$5$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/WebActivity$5$1;-><init>(Lcom/jingdong/app/mall/WebActivity$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/WebActivity;->post(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method
