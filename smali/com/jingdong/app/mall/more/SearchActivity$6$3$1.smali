.class Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity$6$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/more/SearchActivity$6$3;

.field private final synthetic val$arrayAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity$6$3;Ljava/lang/CharSequence;Lcom/jingdong/common/utils/MySimpleAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;->this$2:Lcom/jingdong/app/mall/more/SearchActivity$6$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;->val$s:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;->val$arrayAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 326
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;->this$2:Lcom/jingdong/app/mall/more/SearchActivity$6$3;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6$3;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6$3;)Lcom/jingdong/app/mall/more/SearchActivity$6;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$3(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, currentText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;->this$2:Lcom/jingdong/app/mall/more/SearchActivity$6$3;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6$3;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6$3;)Lcom/jingdong/app/mall/more/SearchActivity$6;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/more/SearchActivity;->showSearchResult()V
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$11(Lcom/jingdong/app/mall/more/SearchActivity;)V

    .line 329
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;->this$2:Lcom/jingdong/app/mall/more/SearchActivity$6$3;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6$3;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6$3;)Lcom/jingdong/app/mall/more/SearchActivity$6;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->delHistoryButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$12(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;->this$2:Lcom/jingdong/app/mall/more/SearchActivity$6$3;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6$3;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6$3;)Lcom/jingdong/app/mall/more/SearchActivity$6;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$10(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;->val$arrayAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;->this$2:Lcom/jingdong/app/mall/more/SearchActivity$6$3;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6$3;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6$3;)Lcom/jingdong/app/mall/more/SearchActivity$6;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$10(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 332
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;->this$2:Lcom/jingdong/app/mall/more/SearchActivity$6$3;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6$3;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6$3;)Lcom/jingdong/app/mall/more/SearchActivity$6;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v1

    const/4 v2, 0x0

    #setter for: Lcom/jingdong/app/mall/more/SearchActivity;->isInitHistory:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/more/SearchActivity;->access$13(Lcom/jingdong/app/mall/more/SearchActivity;Z)V

    .line 334
    :cond_0
    return-void
.end method
