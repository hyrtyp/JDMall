.class Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/more/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 644
    :sswitch_0
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SearchActivity;->access$3(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 645
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SearchActivity;->access$3(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 646
    .local v0, editable:Landroid/text/Editable;
    const/4 v1, 0x0

    .line 648
    .local v1, isHotkeyword:Z
    if-eqz v0, :cond_0

    .line 652
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, keyword:Ljava/lang/String;
    sget-boolean v3, Lcom/jingdong/app/mall/more/SearchActivity;->hasSubmit:Z

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SearchActivity;->access$3(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 655
    const/4 v1, 0x1

    .line 658
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #calls: Lcom/jingdong/app/mall/more/SearchActivity;->searchSubmit(Ljava/lang/String;Z)V
    invoke-static {v3, v2, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$4(Lcom/jingdong/app/mall/more/SearchActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 663
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #isHotkeyword:Z
    .end local v2           #keyword:Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-static {v3}, Lcom/jingdong/common/utils/VoiceUtil;->showVoiceDialog(Lcom/jingdong/common/frame/IMyActivity;)V

    goto :goto_0

    .line 667
    :sswitch_2
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 668
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/more/SearchActivity;->finish()V

    .line 669
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    const-class v6, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 674
    :sswitch_3
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 675
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/more/SearchActivity;->finish()V

    .line 676
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    const-class v6, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 642
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c011c -> :sswitch_2
        0x7f0c011d -> :sswitch_3
        0x7f0c0619 -> :sswitch_0
        0x7f0c061b -> :sswitch_1
    .end sparse-switch
.end method
