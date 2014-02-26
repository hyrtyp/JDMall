.class public Lcom/jingdong/common/entity/HomeFloorElement;
.super Ljava/lang/Object;
.source "HomeFloorElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_ACTIVITY:I = 0x3

.field public static final TYPE_ACTIVITY_NO_HOT:I = 0x4

.field public static final TYPE_LIFE_ASSISTANT:I = 0x5

.field public static final TYPE_LIST:I = 0x1

.field public static final TYPE_M:I = 0x2

.field public static final TYPE_NATIVE_PAGE:I = 0x6

.field private static final VIEW_TYPE_CHECK_IN_VIEW:Ljava/lang/String; = "checkinview"

.field private static final serialVersionUID:J = 0x575efe7743bdc28bL


# instance fields
.field private bannerImgUrl:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private functionId2:Ljava/lang/String;

.field private functionName:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private param:Ljava/lang/String;

.field private param2:Ljava/lang/String;

.field private sortNum:Ljava/lang/Integer;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/Integer;

.field private unionUrl:Ljava/lang/String;

.field private viewType:Ljava/lang/String;

.field private wareDisplayType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string v1, "functionId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setFunctionId(Ljava/lang/String;)V

    .line 129
    const-string v1, "param"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setParam(Ljava/lang/String;)V

    .line 130
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setImageUrl(Ljava/lang/String;)V

    .line 131
    const-string v1, "sortNum"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setSortNum(Ljava/lang/Integer;)V

    .line 132
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setTitle(Ljava/lang/String;)V

    .line 133
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setType(Ljava/lang/Integer;)V

    .line 134
    const-string v1, "unionUrl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setUnionUrl(Ljava/lang/String;)V

    .line 135
    const-string v1, "wareDisplayType"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setWareDisplayType(Ljava/lang/Integer;)V

    .line 136
    const-string v1, "functionId2"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setFunctionId2(Ljava/lang/String;)V

    .line 137
    const-string v1, "param2"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setParam2(Ljava/lang/String;)V

    .line 138
    const-string v1, "bannerImgUrl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setBannerImgUrl(Ljava/lang/String;)V

    .line 139
    const-string v1, "functionName"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setFunctionName(Ljava/lang/String;)V

    .line 142
    const-string v1, "viewType"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, viewType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/HomeFloorElement;->setViewType(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;
    .locals 4
    .parameter "jsonArrayPoxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/HomeFloorElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorElement;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 166
    .end local v0           #i:I
    :cond_0
    return-object v1

    .line 159
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 160
    .local v2, proxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_2

    .line 161
    new-instance v3, Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-direct {v3, v2}, Lcom/jingdong/common/entity/HomeFloorElement;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBannerImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->bannerImgUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 355
    const-string v0, ""

    .line 357
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->bannerImgUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 235
    const-string v0, ""

    .line 237
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFunctionId2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionId2:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 344
    const-string v0, ""

    .line 346
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionId2:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 366
    const-string v0, ""

    .line 368
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 246
    const-string v0, ""

    .line 248
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->imageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->param:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    const-string v0, ""

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->param:Ljava/lang/String;

    goto :goto_0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->param2:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 328
    const-string v0, ""

    .line 330
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->param2:Ljava/lang/String;

    goto :goto_0
.end method

.method public getParamsJson()Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->param:Ljava/lang/String;

    invoke-static {v0}, Lcom/jingdong/common/utils/JsonParser;->parseParamsJsonFromString(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    return-object v0
.end method

.method public getSortNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->sortNum:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 257
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->sortNum:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 171
    const-string v0, ""

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->type:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 224
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->type:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getUnionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->unionUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 213
    const-string v0, ""

    .line 215
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->unionUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getViewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->viewType:Ljava/lang/String;

    return-object v0
.end method

.method public getWareDisplayType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->wareDisplayType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 182
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorElement;->wareDisplayType:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public isGoTOActvity()Z
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/jingdong/common/entity/HomeFloorElement;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoTOActvityNoHot()Z
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/jingdong/common/entity/HomeFloorElement;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoTOLifeAssistant()Z
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/jingdong/common/entity/HomeFloorElement;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoTOList()Z
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/jingdong/common/entity/HomeFloorElement;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoTOM()Z
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/jingdong/common/entity/HomeFloorElement;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoTOSign()Z
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/jingdong/common/entity/HomeFloorElement;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/entity/HomeFloorElement;->getViewType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkinview"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBannerImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "bannerImgUrl"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->bannerImgUrl:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setFunctionId(Ljava/lang/String;)V
    .locals 0
    .parameter "functionId"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionId:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setFunctionId2(Ljava/lang/String;)V
    .locals 0
    .parameter "functionId2"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionId2:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setFunctionName(Ljava/lang/String;)V
    .locals 0
    .parameter "functionName"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionName:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->imageUrl:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->param:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setParam2(Ljava/lang/String;)V
    .locals 0
    .parameter "param2"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->param2:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setSortNum(Ljava/lang/Integer;)V
    .locals 0
    .parameter "sortNum"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->sortNum:Ljava/lang/Integer;

    .line 264
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->title:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->type:Ljava/lang/Integer;

    .line 231
    return-void
.end method

.method public setUnionUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "unionUrl"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->unionUrl:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setViewType(Ljava/lang/String;)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->viewType:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setWareDisplayType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "wareDisplayType"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->wareDisplayType:Ljava/lang/Integer;

    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HomeFloorElement [title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wareDisplayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->wareDisplayType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->param:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", functionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->param2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", functionId2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionId2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unionUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->unionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sortNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->sortNum:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerImgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->bannerImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", functionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorElement;->viewType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
