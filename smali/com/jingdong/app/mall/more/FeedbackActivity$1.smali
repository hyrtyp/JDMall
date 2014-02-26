.class Lcom/jingdong/app/mall/more/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/FeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

.field private final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/FeedbackActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1;->val$items:[Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/FeedbackActivity$1;)Lcom/jingdong/app/mall/more/FeedbackActivity;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 52
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/more/FeedbackActivity;->choosedType:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 54
    const v2, 0x7f0702c9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 56
    iget-object v2, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/more/FeedbackActivity;->choosedType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 57
    .local v1, whichChoosed:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1;->val$items:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lcom/jingdong/app/mall/more/FeedbackActivity$1$1;

    iget-object v5, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1;->val$items:[Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/jingdong/app/mall/more/FeedbackActivity$1$1;-><init>(Lcom/jingdong/app/mall/more/FeedbackActivity$1;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 70
    return-void
.end method
