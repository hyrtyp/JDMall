.class Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;
.super Ljava/lang/Object;
.source "DiscussDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

.field private final synthetic val$orderComment:Lcom/jingdong/common/entity/OrderComment;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;Lcom/jingdong/common/entity/OrderComment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->val$orderComment:Lcom/jingdong/common/entity/OrderComment;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/high16 v9, 0x4375

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 142
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->commentDetailTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$2(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->val$orderComment:Lcom/jingdong/common/entity/OrderComment;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/OrderComment;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->userId:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$3(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v2

    const v3, 0x7f07036b

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->val$orderComment:Lcom/jingdong/common/entity/OrderComment;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/OrderComment;->getUserId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->creationTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$4(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v2

    const v3, 0x7f07036c

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->val$orderComment:Lcom/jingdong/common/entity/OrderComment;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/OrderComment;->getCreationTime()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->commentDetailContent:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$5(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->val$orderComment:Lcom/jingdong/common/entity/OrderComment;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/OrderComment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    new-instance v0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$1;

    .line 150
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v2

    .line 151
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->val$orderComment:Lcom/jingdong/common/entity/OrderComment;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/OrderComment;->getImageList()Ljava/util/List;

    move-result-object v3

    .line 152
    const v4, 0x7f03004b

    .line 153
    new-array v5, v7, [Ljava/lang/String;

    const-string v1, "small"

    aput-object v1, v5, v8

    .line 154
    new-array v6, v7, [I

    const v1, 0x7f0c01d1

    aput v1, v6, v8

    .line 156
    invoke-static {v9}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    int-to-float v8, v1

    .line 157
    invoke-static {v9}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    int-to-float v9, v1

    move-object v1, p0

    .line 148
    invoke-direct/range {v0 .. v9}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$1;-><init>(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IIFF)V

    .line 178
    .local v0, mySimpleAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->productImageGallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$6(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 179
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->productImageGallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$6(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/Gallery;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$2;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->val$orderComment:Lcom/jingdong/common/entity/OrderComment;

    invoke-direct {v2, p0, v3}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$2;-><init>(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;Lcom/jingdong/common/entity/OrderComment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 199
    return-void
.end method
