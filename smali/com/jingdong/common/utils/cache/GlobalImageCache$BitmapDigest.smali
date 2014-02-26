.class public Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
.super Ljava/lang/Object;
.source "GlobalImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/cache/GlobalImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapDigest"
.end annotation


# instance fields
.field private allowRecycle:Z

.field private custom:Ljava/lang/String;

.field private digest:Ljava/lang/String;

.field private height:I

.field private large:Z

.field private moreParameter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private round:I

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->allowRecycle:Z

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->large:Z

    .line 171
    iput-object p1, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->url:Ljava/lang/String;

    .line 172
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    if-ne p0, p1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v1

    .line 280
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 281
    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 283
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 284
    check-cast v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    .line 285
    .local v0, other:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    iget-boolean v3, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->allowRecycle:Z

    iget-boolean v4, v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->allowRecycle:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 286
    goto :goto_0

    .line 287
    :cond_4
    iget-object v3, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->custom:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 288
    iget-object v3, v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->custom:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 289
    goto :goto_0

    .line 290
    :cond_5
    iget-object v3, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->custom:Ljava/lang/String;

    iget-object v4, v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->custom:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 291
    goto :goto_0

    .line 292
    :cond_6
    iget v3, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->height:I

    iget v4, v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->height:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 293
    goto :goto_0

    .line 294
    :cond_7
    iget v3, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->position:I

    iget v4, v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->position:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 295
    goto :goto_0

    .line 296
    :cond_8
    iget v3, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->round:I

    iget v4, v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->round:I

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 297
    goto :goto_0

    .line 298
    :cond_9
    iget-object v3, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->url:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 299
    iget-object v3, v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->url:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 300
    goto :goto_0

    .line 301
    :cond_a
    iget-object v3, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 302
    goto :goto_0

    .line 303
    :cond_b
    iget v3, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->width:I

    iget v4, v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->width:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 304
    goto :goto_0
.end method

.method public getCustom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->custom:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->height:I

    return v0
.end method

.method public getMoreParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->moreParameter:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->moreParameter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->position:I

    return v0
.end method

.method public getRound()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->round:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 264
    const/16 v0, 0x1f

    .line 265
    .local v0, prime:I
    const/4 v1, 0x1

    .line 266
    .local v1, result:I
    iget-boolean v2, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->allowRecycle:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 267
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->custom:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 268
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->height:I

    add-int v1, v2, v4

    .line 269
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->position:I

    add-int v1, v2, v4

    .line 270
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->round:I

    add-int v1, v2, v4

    .line 271
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->url:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 272
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->width:I

    add-int v1, v2, v3

    .line 273
    return v1

    .line 266
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->custom:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 271
    :cond_2
    iget-object v3, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isAllowRecycle()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->allowRecycle:Z

    return v0
.end method

.method public isLarge()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->large:Z

    return v0
.end method

.method public putMoreParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->moreParameter:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->moreParameter:Ljava/util/Map;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->moreParameter:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public setAllowRecycle(Z)V
    .locals 0
    .parameter "allowRecycle"

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->allowRecycle:Z

    .line 232
    return-void
.end method

.method public setCustom(Ljava/lang/String;)V
    .locals 0
    .parameter "custom"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->custom:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 207
    iput p1, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->height:I

    .line 208
    return-void
.end method

.method public setLarge(Z)V
    .locals 0
    .parameter "large"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->large:Z

    .line 240
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 313
    iput p1, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->position:I

    .line 314
    return-void
.end method

.method public setRound(I)V
    .locals 0
    .parameter "round"

    .prologue
    .line 215
    iput p1, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->round:I

    .line 216
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->url:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 193
    iput p1, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->width:I

    .line 194
    return-void
.end method
