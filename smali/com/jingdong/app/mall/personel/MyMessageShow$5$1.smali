.class Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;
.super Ljava/lang/Object;
.source "MyMessageShow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyMessageShow$5;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/personel/MyMessageShow;->checkWhichToView()V
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$5(Lcom/jingdong/app/mall/personel/MyMessageShow;)V

    .line 397
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageDetail;->getProductImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageDetail;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageDetail;->getProductImageUrl()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/personel/MyMessageShow;->setLeftProductImage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$6(Lcom/jingdong/app/mall/personel/MyMessageShow;Ljava/lang/String;)V

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageDetail;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<font color=\'red\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageDetail;->getProductAdWard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, styledText:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyMessageShow;->productTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    const v2, 0x7f0c03b5

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 411
    .end local v0           #styledText:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    iget v1, v1, Lcom/jingdong/app/mall/personel/MyMessageShow;->msgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 412
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionUser:Landroid/widget/TextView;

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionCreatTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageDetail;->getCreatedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionBody:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageDetail;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyMessageShow;->mAnswerTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageDetail;->getAskReplyTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyMessageShow;->mAnswerBody:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageDetail;->getAskReplyContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    const v2, 0x7f070247

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 431
    :catch_0
    move-exception v1

    goto :goto_0

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionUser:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageListItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionCreatTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageListItem;->getCreatedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyMessageShow;->mAnswerBody:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow$5;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;->access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$5;)Lcom/jingdong/app/mall/personel/MyMessageShow;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageListItem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
