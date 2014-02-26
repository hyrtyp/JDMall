.class Lcom/jingdong/app/mall/more/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$3;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 205
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$3;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$3;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$3(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/more/SearchActivity;->searchSubmit(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$6(Lcom/jingdong/app/mall/more/SearchActivity;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
