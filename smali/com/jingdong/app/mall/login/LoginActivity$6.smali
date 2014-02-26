.class Lcom/jingdong/app/mall/login/LoginActivity$6;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$6;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$6;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->closeJDInputMethod()V
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$8(Lcom/jingdong/app/mall/login/LoginActivity;)V

    .line 427
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$6;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->onLogin()V
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$9(Lcom/jingdong/app/mall/login/LoginActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
