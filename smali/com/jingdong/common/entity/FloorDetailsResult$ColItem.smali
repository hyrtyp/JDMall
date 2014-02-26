.class public Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
.super Ljava/lang/Object;
.source "FloorDetailsResult.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/entity/FloorDetailsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;",
        ">;"
    }
.end annotation


# instance fields
.field public colNum:I

.field public functionId:Ljava/lang/String;

.field public param:Ljava/lang/String;

.field public sortNum:I

.field final synthetic this$0:Lcom/jingdong/common/entity/FloorDetailsResult;

.field public title:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/common/entity/FloorDetailsResult;Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter "json"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->this$0:Lcom/jingdong/common/entity/FloorDetailsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-eqz p2, :cond_0

    .line 139
    const-string v0, "colNum"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->colNum:I

    .line 140
    const-string v0, "title"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->title:Ljava/lang/String;

    .line 141
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->url:Ljava/lang/String;

    .line 142
    const-string v0, "sortNum"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->sortNum:I

    .line 143
    const-string v0, "functionId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->functionId:Ljava/lang/String;

    .line 144
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->type:I

    .line 145
    const-string v0, "param"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->param:Ljava/lang/String;

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;)I
    .locals 5
    .parameter "another"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 178
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    iget v3, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->colNum:I

    iget v4, p1, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->colNum:I

    if-ge v3, v4, :cond_2

    move v0, v1

    .line 182
    goto :goto_0

    .line 183
    :cond_2
    iget v3, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->colNum:I

    iget v4, p1, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->colNum:I

    if-le v3, v4, :cond_3

    move v0, v2

    .line 184
    goto :goto_0

    .line 186
    :cond_3
    iget v3, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->sortNum:I

    iget v4, p1, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->sortNum:I

    if-ge v3, v4, :cond_4

    move v0, v1

    .line 187
    goto :goto_0

    .line 188
    :cond_4
    iget v1, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->sortNum:I

    iget v3, p1, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->sortNum:I

    if-le v1, v3, :cond_0

    move v0, v2

    .line 189
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;

    invoke-virtual {p0, p1}, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->compareTo(Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;)I

    move-result v0

    return v0
.end method

.method public getParamsJson()Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 155
    new-instance v2, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v2}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>()V

    .line 156
    .local v2, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v5, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->param:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    iget-object v5, p0, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->param:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, args:[Ljava/lang/String;
    array-length v5, v1

    :goto_0
    if-lt v4, v5, :cond_1

    .line 173
    .end local v1           #args:[Ljava/lang/String;
    :cond_0
    return-object v2

    .line 158
    .restart local v1       #args:[Ljava/lang/String;
    :cond_1
    aget-object v0, v1, v4

    .line 159
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, strs:[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 158
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_2
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v3, v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v2, v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 165
    :catch_0
    move-exception v6

    goto :goto_1
.end method
