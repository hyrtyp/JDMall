.class Lcom/jingdong/app/mall/product/CommentListActivity$1;
.super Ljava/lang/Object;
.source "CommentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/CommentListActivity;->first()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

.field private final synthetic val$buttonAll:Landroid/widget/RadioButton;

.field private final synthetic val$buttonBad:Landroid/widget/RadioButton;

.field private final synthetic val$buttonCenter:Landroid/widget/RadioButton;

.field private final synthetic val$buttonGood:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/CommentListActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->val$buttonGood:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->val$buttonCenter:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->val$buttonBad:Landroid/widget/RadioButton;

    iput-object p5, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->val$buttonAll:Landroid/widget/RadioButton;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->val$buttonGood:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    const/4 v1, 0x3

    #calls: Lcom/jingdong/app/mall/product/CommentListActivity;->showContent(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$0(Lcom/jingdong/app/mall/product/CommentListActivity;I)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->val$buttonCenter:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    const/4 v1, 0x2

    #calls: Lcom/jingdong/app/mall/product/CommentListActivity;->showContent(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$0(Lcom/jingdong/app/mall/product/CommentListActivity;I)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->val$buttonBad:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    const/4 v1, 0x1

    #calls: Lcom/jingdong/app/mall/product/CommentListActivity;->showContent(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$0(Lcom/jingdong/app/mall/product/CommentListActivity;I)V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->val$buttonAll:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$1;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    const/4 v1, 0x0

    #calls: Lcom/jingdong/app/mall/product/CommentListActivity;->showContent(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$0(Lcom/jingdong/app/mall/product/CommentListActivity;I)V

    goto :goto_0
.end method
