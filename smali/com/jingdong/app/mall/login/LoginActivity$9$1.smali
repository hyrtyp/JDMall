.class Lcom/jingdong/app/mall/login/LoginActivity$9$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/login/LoginActivity$9;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$9$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$9;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/login/LoginActivity$9$1;)Lcom/jingdong/app/mall/login/LoginActivity$9;
    .locals 1
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$9$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$9;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$9$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$9;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$9;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$9;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$9;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/login/LoginActivity$9$1$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/login/LoginActivity$9$1$1;-><init>(Lcom/jingdong/app/mall/login/LoginActivity$9$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->post(Ljava/lang/Runnable;)V

    .line 524
    return-void
.end method
