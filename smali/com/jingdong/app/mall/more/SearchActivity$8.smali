.class Lcom/jingdong/app/mall/more/SearchActivity$8;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$8;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/SearchActivity$8;->val$type:Ljava/lang/String;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$8;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$3(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const v1, 0x7f0701db

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 403
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$8;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jingdong/app/mall/more/SearchActivity;->isUseHistoryWord:Z

    .line 404
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$8;->val$type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$8;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-static {v0}, Lcom/jingdong/common/utils/VoiceUtil;->showVoiceDialog(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 408
    :cond_0
    return-void
.end method
