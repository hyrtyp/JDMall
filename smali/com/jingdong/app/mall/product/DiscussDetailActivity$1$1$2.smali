.class Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$2;
.super Ljava/lang/Object;
.source "DiscussDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;

.field private final synthetic val$orderComment:Lcom/jingdong/common/entity/OrderComment;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;Lcom/jingdong/common/entity/OrderComment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$2;->this$2:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$2;->val$orderComment:Lcom/jingdong/common/entity/OrderComment;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/Adapter;

    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Image;

    .line 184
    .local v2, image:Lcom/jingdong/common/entity/Image;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Image;->getBig()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, bigUrl:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "url"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v4, "position"

    invoke-virtual {v1, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v4, "orderComment"

    iget-object v5, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$2;->val$orderComment:Lcom/jingdong/common/entity/OrderComment;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 191
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$2;->this$2:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v4

    const-class v5, Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.360buy:navigationDisplayFlag"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    iget-object v4, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1$2;->this$2:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method
