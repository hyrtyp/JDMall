.class public Lcom/jingdong/app/mall/product/DiscussListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "DiscussListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jingdong/app/mall/utils/MyActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private loadingLayout:Landroid/widget/LinearLayout;

.field private name:Ljava/lang/String;

.field private orderCommentList:Landroid/widget/ListView;

.field private params:Lorg/json/JSONObject;

.field private subName:Ljava/lang/String;

.field private wareId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method private showOrderCommentList()V
    .locals 7

    .prologue
    .line 102
    new-instance v0, Lcom/jingdong/app/mall/product/DiscussListActivity$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->orderCommentList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const-string v5, "orderComment"

    iget-object v6, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->params:Lorg/json/JSONObject;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/product/DiscussListActivity$1;-><init>(Lcom/jingdong/app/mall/product/DiscussListActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 162
    .local v0, nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    .line 164
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->orderCommentList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v3, 0x7f03004e

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/DiscussListActivity;->setContentView(I)V

    .line 57
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->params:Lorg/json/JSONObject;

    .line 59
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/DiscussListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->wareId:J

    .line 61
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->name:Ljava/lang/String;

    .line 64
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->params:Lorg/json/JSONObject;

    const-string v4, "wareId"

    iget-wide v5, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->wareId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    const v3, 0x7f0c01d7

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/DiscussListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->orderCommentList:Landroid/widget/ListView;

    .line 70
    const v3, 0x7f0c007e

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/DiscussListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    .local v2, titleText:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_0

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->name:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->subName:Ljava/lang/String;

    .line 76
    :goto_1
    const v3, 0x7f07029a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->subName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/jingdong/app/mall/product/DiscussListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v3, 0x7f030087

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 81
    iget-object v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 86
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/DiscussListActivity;->showOrderCommentList()V

    .line 87
    return-void

    .line 65
    .end local v2           #titleText:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #titleText:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/jingdong/app/mall/product/DiscussListActivity;->subName:Ljava/lang/String;

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 173
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/OrderComment;

    .line 176
    .local v2, orderComment:Lcom/jingdong/common/entity/OrderComment;
    if-eqz v2, :cond_0

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "id"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/OrderComment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/DiscussListActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
