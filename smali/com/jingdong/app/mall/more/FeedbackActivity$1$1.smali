.class Lcom/jingdong/app/mall/more/FeedbackActivity$1$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/FeedbackActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$1;

.field private final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/FeedbackActivity$1;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1$1;->val$items:[Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$1;

    #getter for: Lcom/jingdong/app/mall/more/FeedbackActivity$1;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/FeedbackActivity$1;->access$0(Lcom/jingdong/app/mall/more/FeedbackActivity$1;)Lcom/jingdong/app/mall/more/FeedbackActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/more/FeedbackActivity;->choosedType:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$1;

    #getter for: Lcom/jingdong/app/mall/more/FeedbackActivity$1;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/FeedbackActivity$1;->access$0(Lcom/jingdong/app/mall/more/FeedbackActivity$1;)Lcom/jingdong/app/mall/more/FeedbackActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/more/FeedbackActivity;->choosedType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$1$1;->val$items:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    return-void
.end method
