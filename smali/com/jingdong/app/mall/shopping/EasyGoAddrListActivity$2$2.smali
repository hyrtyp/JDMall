.class Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$2;
.super Ljava/lang/Object;
.source "EasyGoAddrListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$2;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$2;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v1

    const v2, 0x7f070357

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 338
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$2;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    const-string v1, "com.360buy:singleInstanceFlag"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$2;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 363
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 347
    const-string v1, "\u60a8\u6dfb\u52a0\u7684\u8f7b\u677e\u8d2d\u8bbe\u7f6e\u8fbe\u5230\u4e0a\u9650\uff0c\u8bf7\u5220\u9664\u4e4b\u540e\u518d\u6dfb\u52a0"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$2;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/constant/Constants;->ShowMsg(Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;)V

    goto :goto_0

    .line 350
    :cond_1
    sput-boolean v4, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    .line 351
    sput-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    .line 352
    sput-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    .line 353
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$2;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$2;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->startTaskActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0
.end method
