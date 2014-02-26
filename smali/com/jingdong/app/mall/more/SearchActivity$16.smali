.class Lcom/jingdong/app/mall/more/SearchActivity$16;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$16;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 697
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$16;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jingdong/app/mall/more/SearchActivity;->isUseHistoryWord:Z

    .line 708
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$16;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$3(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 709
    .local v0, etext:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 710
    return-void
.end method
