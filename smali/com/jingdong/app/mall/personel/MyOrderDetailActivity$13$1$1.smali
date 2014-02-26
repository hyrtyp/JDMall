.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

.field private final synthetic val$flagFinal:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->val$flagFinal:Ljava/lang/Boolean;

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1188
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->val$flagFinal:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1189
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$28(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1190
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->finish()V

    .line 1191
    const/4 v0, 0x0

    .line 1192
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mEntranceFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$35(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1194
    const-string v1, "unfinishedOrder"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mEntranceFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$35(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1195
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1196
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v2

    const v3, 0x7f07046f

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1201
    :goto_0
    const-string v1, "functionId"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mEntranceFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$35(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1203
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 1208
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1209
    return-void

    .line 1199
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 1206
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13$1;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$28(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_1
.end method
