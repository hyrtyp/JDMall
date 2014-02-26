.class public Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "JdNewsDetailActivity.java"


# instance fields
.field private jdNewsId:Ljava/lang/String;

.field private jdNewsTitle:Ljava/lang/String;

.field private jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method private showJdNewsDetials()V
    .locals 5

    .prologue
    .line 70
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "jdNewsId"

    iget-object v4, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->jdNewsId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    new-instance v1, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;-><init>(Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;)V

    .line 132
    .local v1, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 133
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "jdNews"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 135
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 136
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 138
    return-void

    .line 73
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v1           #onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f03007f

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->setContentView(I)V

    .line 46
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, jdNewsText:Landroid/widget/TextView;
    const v2, 0x7f0701de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 49
    invoke-virtual {p0}, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "jdNewsId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->jdNewsId:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->showJdNewsDetials()V

    .line 56
    return-void
.end method
