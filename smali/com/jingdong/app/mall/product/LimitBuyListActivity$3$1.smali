.class Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;
.super Ljava/lang/Object;
.source "LimitBuyListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$productList:Ljava/util/List;

.field private final synthetic val$timeMillis:J


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;Ljava/lang/String;Ljava/util/List;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->val$productList:Ljava/util/List;

    iput-wide p4, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->val$timeMillis:J

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 190
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity;->limitBuyTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->access$4(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->val$message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6bcf\u65e5\u624b\u673a\u4e13\u4eab\u4f4e\u4ef7\u5546\u54c1,\u5148\u62a2\u5148\u5f97!"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-result-object v7

    new-instance v0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->val$productList:Ljava/util/List;

    const v4, 0x7f03001c

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "ImageUrl"

    aput-object v6, v5, v9

    new-array v6, v8, [I

    const v8, 0x7f0c00c7

    aput v8, v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;-><init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    #setter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity;->msAdapter:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;
    invoke-static {v7, v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->access$5(Lcom/jingdong/app/mall/product/LimitBuyListActivity;Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;)V

    .line 192
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity;->msAdapter:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->access$6(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    move-result-object v0

    iget-wide v1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->val$timeMillis:J

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->setMillis(J)V

    .line 193
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity;->miaoShaListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->access$7(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity;->msAdapter:Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->access$6(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;->val$message:Ljava/lang/String;

    goto :goto_0
.end method
