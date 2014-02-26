.class Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;
.super Ljava/lang/Object;
.source "QuickRegisterActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/register/QuickRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;)Lcom/jingdong/app/mall/register/QuickRegisterActivity;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    return-object v0
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .parameter "errorMessage"

    .prologue
    .line 172
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v2, "\u6ce8\u518c\u5931\u8d25"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 174
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const-string v2, "\u5f02\u5e38\u64cd\u4f5c"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;Ljava/lang/String;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 237
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 177
    .restart local v0       #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    .line 232
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method
