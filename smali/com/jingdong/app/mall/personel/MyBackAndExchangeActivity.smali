.class public Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MyBackAndExchangeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyBackAndExchangeActivity"


# instance fields
.field private adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private backList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BackExchange;",
            ">;"
        }
    .end annotation
.end field

.field private containterView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->backList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->backList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->createListView()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private createListView()V
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->backList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->backList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 256
    new-instance v0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$4;-><init>(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)V

    .line 274
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/jingdong/common/entity/BackExchange;>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->backList:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    new-instance v1, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$5;-><init>(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->post(Ljava/lang/Runnable;)V

    .line 284
    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/jingdong/common/entity/BackExchange;>;"
    :cond_0
    return-void
.end method

.method private initListView()V
    .locals 7

    .prologue
    .line 223
    const-string v2, "{\"JdOrderStat\":[{\"icon\":\"2130837602\",\"functionId\":\"unfinishedOrder\",\"count\":1,\"url\":\"\",\"name\":\"\u7533\u8bf7\u8fd4\u4fee\u9000\u6362\u8d27\"},{\"icon\":\"2130837603\",\"functionId\":\"waite4Payment\",\"count\":0,\"url\":\"\",\"name\":\"\u67e5\u770b\u8fd4\u4fee\u9000\u6362\u8d27\"}]}"

    .line 224
    .local v2, json:Ljava/lang/String;
    const/4 v3, 0x0

    .line 225
    .local v3, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const/4 v0, 0x0

    .line 228
    .local v0, backExchangeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BackExchange;>;"
    :try_start_0
    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v5, Lorg/json/JSONObject;

    const-string v6, "{\"JdOrderStat\":[{\"icon\":\"2130837602\",\"functionId\":\"unfinishedOrder\",\"count\":1,\"url\":\"\",\"name\":\"\u7533\u8bf7\u8fd4\u4fee\u9000\u6362\u8d27\"},{\"icon\":\"2130837603\",\"functionId\":\"waite4Payment\",\"count\":0,\"url\":\"\",\"name\":\"\u67e5\u770b\u8fd4\u4fee\u9000\u6362\u8d27\"}]}"

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .local v4, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    move-object v3, v4

    .line 232
    .end local v4           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v3       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    const-string v5, "JdOrderStat"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/common/entity/BackExchange;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 243
    :cond_0
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private queryBackExchange()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 174
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "jdHomeShowItem"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 175
    new-instance v1, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$3;-><init>(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 220
    return-void
.end method

.method private setAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 81
    new-instance v0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$1;

    .line 82
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->backList:Ljava/util/ArrayList;

    .line 83
    const v4, 0x7f030098

    .line 84
    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "icon"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v5, v1

    .line 85
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$1;-><init>(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 81
    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    return-void

    .line 85
    :array_0
    .array-data 0x4
        0x54t 0x3t 0xct 0x7ft
        0x55t 0x3t 0xct 0x7ft
    .end array-data
.end method

.method private setEvent()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$2;-><init>(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030097

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->setContentView(I)V

    .line 62
    const v0, 0x7f0c0353

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->mListView:Landroid/widget/ListView;

    .line 64
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->titleView:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->titleView:Landroid/widget/TextView;

    const v1, 0x7f07028a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->setAdapter()V

    .line 68
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->setEvent()V

    .line 69
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->queryBackExchange()V

    .line 70
    return-void
.end method
