.class Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "MyCommentDiscussActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILcom/jingdong/common/frame/IMyActivity;)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"
    .parameter

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    iput-object p7, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 231
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0c01ab

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 232
    .local v4, productTextView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/Product;

    .line 233
    .local v3, product:Lcom/jingdong/common/entity/Product;
    if-nez v3, :cond_0

    .line 315
    :goto_0
    return-object v5

    .line 237
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 238
    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v7

    const v6, 0x7f0c01ae

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v7, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewDiscuss:Landroid/widget/Button;

    .line 240
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v7

    const v6, 0x7f0c01ad

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v7, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewComment:Landroid/widget/Button;

    .line 247
    new-instance v0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-direct {v0, p0, v3, v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 291
    .local v0, cl:Landroid/view/View$OnClickListener;
    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getHasComment()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, hasComment:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->canCommentOrDiscuss(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 294
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewComment:Landroid/widget/Button;

    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v7

    const v8, 0x7f0704d1

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewComment:Landroid/widget/Button;

    const/4 v7, 0x2

    const/high16 v8, 0x4170

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 296
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewComment:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 304
    :goto_1
    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getHasDiscuss()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, hasDiscuss:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->canCommentOrDiscuss(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 306
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewDiscuss:Landroid/widget/Button;

    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v7

    const v8, 0x7f0704d2

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewDiscuss:Landroid/widget/Button;

    const/4 v7, 0x2

    const/high16 v8, 0x4170

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 308
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewDiscuss:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 299
    .end local v2           #hasDiscuss:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewComment:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewComment:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewComment:Landroid/widget/Button;

    const/4 v7, 0x2

    const/high16 v8, 0x4198

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 302
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewComment:Landroid/widget/Button;

    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v7

    const v8, 0x7f07036a

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 310
    .restart local v2       #hasDiscuss:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewDiscuss:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewDiscuss:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewDiscuss:Landroid/widget/Button;

    const/4 v7, 0x2

    const/high16 v8, 0x4198

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 313
    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mNewDiscuss:Landroid/widget/Button;

    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v7

    const v8, 0x7f070367

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
