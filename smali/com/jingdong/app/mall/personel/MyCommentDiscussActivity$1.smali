.class Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$1;
.super Ljava/lang/Object;
.source "MyCommentDiscussActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->InitComponenet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mInstructionButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    const-string v2, "http://m.jd.com/help/app/shaidan.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 122
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mInstructionButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 123
    return-void
.end method
