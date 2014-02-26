.class Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1$1;
.super Ljava/lang/Object;
.source "EasyGoAddrListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 138
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    .line 140
    sput-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    .line 141
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->startTaskActivityInFrame(Landroid/content/Intent;)V

    .line 152
    :goto_0
    return-void

    .line 147
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v1, "com.360buy:singleInstanceFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->startSingleActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0
.end method
