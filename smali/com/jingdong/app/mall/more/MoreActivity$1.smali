.class Lcom/jingdong/app/mall/more/MoreActivity$1;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/MoreActivity;->setHost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/MoreActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/MoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/MoreActivity$1;)Lcom/jingdong/app/mall/more/MoreActivity;
    .locals 1
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 360
    :try_start_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 361
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v4, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    const v5, 0x7f0704c9

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/more/MoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v4, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/more/MoreActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 363
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030074

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 364
    .local v3, layout:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 365
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    const v4, 0x7f0c02a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    #setter for: Lcom/jingdong/app/mall/more/MoreActivity;->hostEt:Landroid/widget/EditText;
    invoke-static {v5, v4}, Lcom/jingdong/app/mall/more/MoreActivity;->access$0(Lcom/jingdong/app/mall/more/MoreActivity;Landroid/widget/EditText;)V

    .line 366
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    const v4, 0x7f0c02a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    #setter for: Lcom/jingdong/app/mall/more/MoreActivity;->mhostEt:Landroid/widget/EditText;
    invoke-static {v5, v4}, Lcom/jingdong/app/mall/more/MoreActivity;->access$1(Lcom/jingdong/app/mall/more/MoreActivity;Landroid/widget/EditText;)V

    .line 367
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    const v4, 0x7f0c02a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    #setter for: Lcom/jingdong/app/mall/more/MoreActivity;->msghostEt:Landroid/widget/EditText;
    invoke-static {v5, v4}, Lcom/jingdong/app/mall/more/MoreActivity;->access$2(Lcom/jingdong/app/mall/more/MoreActivity;Landroid/widget/EditText;)V

    .line 368
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    const v4, 0x7f0c02a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    #setter for: Lcom/jingdong/app/mall/more/MoreActivity;->paihostEt:Landroid/widget/EditText;
    invoke-static {v5, v4}, Lcom/jingdong/app/mall/more/MoreActivity;->access$3(Lcom/jingdong/app/mall/more/MoreActivity;Landroid/widget/EditText;)V

    .line 369
    iget-object v5, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    const v4, 0x7f0c02a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    #setter for: Lcom/jingdong/app/mall/more/MoreActivity;->is_testmode:Landroid/widget/CheckBox;
    invoke-static {v5, v4}, Lcom/jingdong/app/mall/more/MoreActivity;->access$4(Lcom/jingdong/app/mall/more/MoreActivity;Landroid/widget/CheckBox;)V

    .line 370
    iget-object v4, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    const v5, 0x7f07014d

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/more/MoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/jingdong/app/mall/more/MoreActivity$1$1;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/more/MoreActivity$1$1;-><init>(Lcom/jingdong/app/mall/more/MoreActivity$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 406
    iget-object v4, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    const v5, 0x7f0701a1

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/more/MoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/jingdong/app/mall/more/MoreActivity$1$2;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/more/MoreActivity$1$2;-><init>(Lcom/jingdong/app/mall/more/MoreActivity$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 415
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 418
    iget-object v4, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->hostEt:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/jingdong/app/mall/more/MoreActivity;->access$5(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, "host"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v4, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->mhostEt:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/jingdong/app/mall/more/MoreActivity;->access$6(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, "mHost"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v4, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->msghostEt:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/jingdong/app/mall/more/MoreActivity;->access$7(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, "msgHost"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v4, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->paihostEt:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/jingdong/app/mall/more/MoreActivity;->access$8(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, "paiHost"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v4, p0, Lcom/jingdong/app/mall/more/MoreActivity$1;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->is_testmode:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/jingdong/app/mall/more/MoreActivity;->access$9(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    const-string v5, "testMode"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #layout:Landroid/view/View;
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
