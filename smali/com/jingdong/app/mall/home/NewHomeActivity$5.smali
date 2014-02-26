.class Lcom/jingdong/app/mall/home/NewHomeActivity$5;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;->resolveAutoComplete(Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

.field private final synthetic val$autoCompleteTextView:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$5;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$5;->val$autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 578
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
    .line 581
    packed-switch p2, :pswitch_data_0

    .line 586
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 583
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$5;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$5;->val$autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/home/NewHomeActivity;->searchSubmit(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$9(Lcom/jingdong/app/mall/home/NewHomeActivity;Ljava/lang/String;)V

    .line 584
    const/4 v0, 0x1

    goto :goto_0

    .line 581
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
