.class Lcom/jingdong/app/mall/personel/MyCollectActivity$1;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "MyCollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCollectActivity;->getMyCollect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCollectActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"
    .parameter "$anonymous5"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 109
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$1;)Lcom/jingdong/app/mall/personel/MyCollectActivity;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    return-object v0
.end method


# virtual methods
.method protected createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 7
    .parameter "myActivity"
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Landroid/widget/AdapterView;",
            "Ljava/util/ArrayList",
            "<*>;)",
            "Lcom/jingdong/common/utils/MySimpleAdapter;"
        }
    .end annotation

    .prologue
    .local p3, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const/4 v6, 0x3

    .line 113
    new-instance v0, Lcom/jingdong/app/mall/personel/MyCollectActivity$1$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    .line 115
    const v4, 0x7f0300e0

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "imageurl"

    aput-object v3, v5, v1

    const/4 v1, 0x1

    const-string v3, "name"

    aput-object v3, v5, v1

    const/4 v1, 0x2

    const-string v3, "adword"

    aput-object v3, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v3, p3

    .line 113
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/personel/MyCollectActivity$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$1;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object v0

    .line 115
    :array_0
    .array-data 0x4
        0xb1t 0x0t 0xct 0x7ft
        0xb6t 0x0t 0xct 0x7ft
        0x74t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 172
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method protected toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
    .locals 4
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/HttpGroup$HttpResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 159
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    const-string v2, "favoriteList"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v2

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method
