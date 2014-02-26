.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$2;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;

    .line 2111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2115
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v3

    const-class v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2116
    .local v2, t:Landroid/content/Intent;
    const-string v3, "pin"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->lsPin:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$26(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2117
    const-string v3, "isNoRegisterOrder"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v4

    iget-boolean v4, v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2118
    const-string v3, "PromiseTime"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2119
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v4, "IdPickSite"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2121
    :try_start_0
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v4, "IdPickSite"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2122
    .local v1, idPickSite:I
    const-string v3, "IdPickSite"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2128
    .end local v1           #idPickSite:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2130
    return-void

    .line 2123
    :catch_0
    move-exception v0

    .line 2124
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
