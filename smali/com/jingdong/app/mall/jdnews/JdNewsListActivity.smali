.class public Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "JdNewsListActivity.java"

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
.field private jdNewsList:Landroid/widget/ListView;

.field private loadingLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method private showJdNewsList()V
    .locals 6

    .prologue
    .line 85
    new-instance v0, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->jdNewsList:Landroid/widget/ListView;

    .line 86
    iget-object v4, p0, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const-string v5, "jdNews"

    move-object v1, p0

    move-object v2, p0

    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1;-><init>(Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;)V

    .line 153
    .local v0, nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    .line 154
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f030080

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->setContentView(I)V

    .line 54
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    .local v0, jdNewsText:Landroid/widget/TextView;
    const v1, 0x7f0701dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    const v1, 0x7f0c02d2

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 57
    iput-object v1, p0, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->jdNewsList:Landroid/widget/ListView;

    .line 59
    iget-object v1, p0, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->jdNewsList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    const v1, 0x7f030087

    const/4 v2, 0x0

    .line 63
    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 65
    iget-object v1, p0, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 70
    invoke-direct {p0}, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->showJdNewsList()V

    .line 71
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 161
    new-instance v1, Landroid/content/Intent;

    .line 162
    const-class v3, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;

    .line 161
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/JdNews;

    .line 166
    .local v2, jdNews:Lcom/jingdong/common/entity/JdNews;
    if-eqz v2, :cond_0

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "jdNewsId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/jingdong/common/entity/JdNews;->getJdNewsId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v3, "title"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/JdNews;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 174
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
