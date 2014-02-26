.class Lcom/jingdong/app/lib/base/activity/JDActivity$1;
.super Ljava/lang/Object;
.source "JDActivity.java"

# interfaces
.implements Lcom/jingdong/app/lib/pay/PayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/lib/base/activity/JDActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/lib/base/activity/JDActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$1;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayFail()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$1;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$1;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    #getter for: Lcom/jingdong/app/lib/base/activity/JDActivity;->xml:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/lib/base/activity/JDActivity;->access$0(Lcom/jingdong/app/lib/base/activity/JDActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/jingdong/app/lib/base/activity/JDActivity;->showDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/lib/base/activity/JDActivity;->access$1(Lcom/jingdong/app/lib/base/activity/JDActivity;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onPaySuccess()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, result:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$1;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/lib/base/activity/JDActivity;->setResult(ILandroid/content/Intent;)V

    .line 42
    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$1;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/lib/base/activity/JDActivity;->finish()V

    .line 43
    return-void
.end method
