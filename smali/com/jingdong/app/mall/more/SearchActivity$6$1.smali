.class Lcom/jingdong/app/mall/more/SearchActivity$6$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity$6;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$1;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$1;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$3(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$1;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->searchCleanButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$9(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$1;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->voiceButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$8(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 255
    return-void
.end method
