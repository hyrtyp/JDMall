.class Lcom/jingdong/app/mall/more/SearchActivity$6$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity$6;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;

.field private final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity$6;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->val$s:Ljava/lang/CharSequence;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/SearchActivity$6$3;)Lcom/jingdong/app/mall/more/SearchActivity$6;
    .locals 1
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 8
    .parameter "httpResponse"

    .prologue
    const/4 v4, 0x1

    .line 302
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v3, "tip"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    .line 303
    .local v6, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-virtual {v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v1

    if-ge v1, v4, :cond_0

    .line 344
    .end local v6           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :goto_0
    return-void

    .line 305
    .restart local v6       #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v6, v1}, Lcom/jingdong/common/entity/Keyword;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 307
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    new-instance v0, Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 309
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v1

    .line 311
    const v3, 0x7f03006e

    .line 312
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 313
    const-string v7, "name"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    .line 314
    const-string v7, "countString"

    aput-object v7, v4, v5

    .line 316
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 307
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 322
    .local v0, arrayAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$10(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v3, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;

    iget-object v4, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$3;->val$s:Ljava/lang/CharSequence;

    invoke-direct {v3, p0, v4, v0}, Lcom/jingdong/app/mall/more/SearchActivity$6$3$1;-><init>(Lcom/jingdong/app/mall/more/SearchActivity$6$3;Ljava/lang/CharSequence;Lcom/jingdong/common/utils/MySimpleAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    .end local v0           #arrayAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Keyword;>;"
    .end local v6           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 316
    nop

    :array_0
    .array-data 0x4
        0x94t 0x2t 0xct 0x7ft
        0x93t 0x2t 0xct 0x7ft
    .end array-data
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 351
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 361
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method
