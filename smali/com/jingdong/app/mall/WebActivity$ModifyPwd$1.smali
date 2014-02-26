.class Lcom/jingdong/app/mall/WebActivity$ModifyPwd$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/WebActivity$ModifyPwd;->onModifyPwd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/WebActivity$ModifyPwd;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity$ModifyPwd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$ModifyPwd$1;->this$1:Lcom/jingdong/app/mall/WebActivity$ModifyPwd;

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 942
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$ModifyPwd$1;->this$1:Lcom/jingdong/app/mall/WebActivity$ModifyPwd;

    #getter for: Lcom/jingdong/app/mall/WebActivity$ModifyPwd;->this$0:Lcom/jingdong/app/mall/WebActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/WebActivity$ModifyPwd;->access$0(Lcom/jingdong/app/mall/WebActivity$ModifyPwd;)Lcom/jingdong/app/mall/WebActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/WebActivity;->finish()V

    .line 943
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity$ModifyPwd$1;->this$1:Lcom/jingdong/app/mall/WebActivity$ModifyPwd;

    #getter for: Lcom/jingdong/app/mall/WebActivity$ModifyPwd;->this$0:Lcom/jingdong/app/mall/WebActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/WebActivity$ModifyPwd;->access$0(Lcom/jingdong/app/mall/WebActivity$ModifyPwd;)Lcom/jingdong/app/mall/WebActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 944
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.360buy:singleInstanceFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 945
    const-string v1, "com.360buy:loginResendFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 946
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 947
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/WebActivity$ModifyPwd$1;->this$1:Lcom/jingdong/app/mall/WebActivity$ModifyPwd;

    #getter for: Lcom/jingdong/app/mall/WebActivity$ModifyPwd;->this$0:Lcom/jingdong/app/mall/WebActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/WebActivity$ModifyPwd;->access$0(Lcom/jingdong/app/mall/WebActivity$ModifyPwd;)Lcom/jingdong/app/mall/WebActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->startActivityInFrame(Landroid/content/Context;Landroid/content/Intent;)V

    .line 949
    return-void
.end method
