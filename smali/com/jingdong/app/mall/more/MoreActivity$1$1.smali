.class Lcom/jingdong/app/mall/more/MoreActivity$1$1;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/MoreActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/MoreActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/MoreActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/MoreActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/MoreActivity$1;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 375
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/MoreActivity$1;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/more/MoreActivity$1;->access$0(Lcom/jingdong/app/mall/more/MoreActivity$1;)Lcom/jingdong/app/mall/more/MoreActivity;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->hostEt:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/more/MoreActivity;->access$5(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, host:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/MoreActivity$1;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/more/MoreActivity$1;->access$0(Lcom/jingdong/app/mall/more/MoreActivity$1;)Lcom/jingdong/app/mall/more/MoreActivity;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->mhostEt:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/more/MoreActivity;->access$6(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, mhost:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/MoreActivity$1;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/more/MoreActivity$1;->access$0(Lcom/jingdong/app/mall/more/MoreActivity$1;)Lcom/jingdong/app/mall/more/MoreActivity;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->msghostEt:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/more/MoreActivity;->access$7(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, msghost:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/MoreActivity$1;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/more/MoreActivity$1;->access$0(Lcom/jingdong/app/mall/more/MoreActivity$1;)Lcom/jingdong/app/mall/more/MoreActivity;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->paihostEt:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/more/MoreActivity;->access$8(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, paihost:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/MoreActivity$1;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/more/MoreActivity$1;->access$0(Lcom/jingdong/app/mall/more/MoreActivity$1;)Lcom/jingdong/app/mall/more/MoreActivity;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->is_testmode:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/jingdong/app/mall/more/MoreActivity;->access$9(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 385
    .local v1, isTestMode:Ljava/lang/Boolean;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "host"

    invoke-static {v5}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 386
    const-string v5, "host"

    invoke-static {v5, v0}, Lcom/jingdong/common/config/Configuration;->setHostProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 389
    :cond_0
    const-string v5, "mHost"

    invoke-static {v5}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 390
    const-string v5, "mHost"

    invoke-static {v5, v2}, Lcom/jingdong/common/config/Configuration;->setHostProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 392
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "msgHost"

    invoke-static {v5}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 393
    const-string v5, "msgHost"

    invoke-static {v5, v3}, Lcom/jingdong/common/config/Configuration;->setHostProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 395
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "paiHost"

    invoke-static {v5}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 396
    const-string v5, "paiHost"

    invoke-static {v5, v4}, Lcom/jingdong/common/config/Configuration;->setHostProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    :cond_3
    const-string v5, "testMode"

    invoke-static {v5}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 399
    invoke-static {v1}, Lcom/jingdong/common/config/Configuration;->setTestModeProperty(Ljava/lang/Boolean;)V

    .line 402
    :cond_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 403
    return-void
.end method
