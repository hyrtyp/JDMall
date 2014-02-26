.class public Lcom/jingdong/common/entity/SearchFilter;
.super Ljava/lang/Object;
.source "SearchFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CATEGORY:I = 0x1

.field public static final CATELOGY_FILTER:I = 0x6f

.field public static final CATELOGY_REGION_FILTER:I = 0x71

.field public static final CATELOGY_SELF_FILTER:I = 0x70

.field public static final DISTRIBUTION:I = 0x3

.field public static final EXPAND_NAME:I = 0x7

.field public static final EXPRESSION_KEY:I = 0x6

.field public static final PRICE:I = 0x5

.field public static final REGION:I = 0x2

.field public static final REMEBER_REGION:I = 0x4


# instance fields
.field private final TAG:Ljava/lang/String;

.field private fieldList:[Ljava/lang/String;

.field private filterName:Ljava/lang/String;

.field private filterNameId:Ljava/lang/String;

.field private keyList:[Ljava/lang/String;

.field private selectedItem:Ljava/lang/String;

.field private selectedOrder:I

.field private typeFlag:I

.field private valueList:[Ljava/lang/String;

.field private wareNumberList:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONArrayPoxy;I)V
    .locals 16
    .parameter "jsonArrayPoxy"
    .parameter "type"

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v13, "SearchFilter"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->TAG:Ljava/lang/String;

    .line 172
    packed-switch p2, :pswitch_data_0

    .line 321
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 175
    :pswitch_1
    sget-object v13, Lcom/jingdong/common/res/StringUtil;->search_filter_all_category:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jingdong/common/entity/SearchFilter;->setFilterName(Ljava/lang/String;)V

    .line 176
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jingdong/common/entity/SearchFilter;->setTypeFlag(I)V

    .line 177
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Catelogy;>;"
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/jingdong/common/entity/Catelogy;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_0

    .line 182
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    .line 183
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    .line 184
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/Integer;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->wareNumberList:[Ljava/lang/Integer;

    .line 185
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->fieldList:[Ljava/lang/String;

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "0"

    aput-object v15, v13, v14

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Lcom/jingdong/common/res/StringUtil;->product_filter_hint:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->fieldList:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    .line 189
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-gt v3, v13, :cond_0

    .line 190
    add-int/lit8 v13, v3, -0x1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Catelogy;

    .line 191
    .local v2, catelogy:Lcom/jingdong/common/entity/Catelogy;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Catelogy;->getcId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Catelogy;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->wareNumberList:[Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Catelogy;->getWareNumber()Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->fieldList:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Catelogy;->getField()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 201
    .end local v1           #categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Catelogy;>;"
    .end local v2           #catelogy:Lcom/jingdong/common/entity/Catelogy;
    .end local v3           #i:I
    :pswitch_2
    sget-object v13, Lcom/jingdong/common/res/StringUtil;->search_filter_region:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jingdong/common/entity/SearchFilter;->setFilterName(Ljava/lang/String;)V

    .line 202
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jingdong/common/entity/SearchFilter;->setTypeFlag(I)V

    .line 203
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 204
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v12, provinceList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Province;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/jingdong/common/entity/Province;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v12

    .line 207
    if-eqz v12, :cond_0

    .line 208
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    .line 209
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "0"

    aput-object v15, v13, v14

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Lcom/jingdong/common/res/StringUtil;->product_filter_hint:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 212
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-gt v3, v13, :cond_0

    .line 213
    add-int/lit8 v13, v3, -0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jingdong/common/entity/Province;

    .line 214
    .local v11, province:Lcom/jingdong/common/entity/Province;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    invoke-virtual {v11}, Lcom/jingdong/common/entity/Province;->getProvinceID()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    invoke-virtual {v11}, Lcom/jingdong/common/entity/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 221
    .end local v3           #i:I
    .end local v11           #province:Lcom/jingdong/common/entity/Province;
    .end local v12           #provinceList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Province;>;"
    :pswitch_3
    sget-object v13, Lcom/jingdong/common/res/StringUtil;->search_filter_distribution:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jingdong/common/entity/SearchFilter;->setFilterName(Ljava/lang/String;)V

    .line 222
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jingdong/common/entity/SearchFilter;->setTypeFlag(I)V

    .line 223
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    .line 224
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "0"

    aput-object v15, v13, v14

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const/4 v14, 0x1

    const-string v15, "1"

    aput-object v15, v13, v14

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const/4 v14, 0x2

    const-string v15, "2"

    aput-object v15, v13, v14

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Lcom/jingdong/common/res/StringUtil;->product_filter_hint:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    const/4 v14, 0x1

    sget-object v15, Lcom/jingdong/common/res/StringUtil;->search_filter_jd_distribute:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    const/4 v14, 0x2

    sget-object v15, Lcom/jingdong/common/res/StringUtil;->search_filter_other_distribute:Ljava/lang/String;

    aput-object v15, v13, v14

    goto/16 :goto_0

    .line 235
    :pswitch_4
    sget-object v13, Lcom/jingdong/common/res/StringUtil;->search_filter_price:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jingdong/common/entity/SearchFilter;->setFilterName(Ljava/lang/String;)V

    .line 236
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jingdong/common/entity/SearchFilter;->setTypeFlag(I)V

    .line 240
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 242
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v10, priceFilterList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/PriceFilter;>;"
    invoke-static/range {p1 .. p1}, Lcom/jingdong/common/entity/PriceFilter;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/List;

    move-result-object v10

    .line 244
    if-eqz v10, :cond_0

    .line 245
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    .line 246
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    .line 248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "0"

    aput-object v15, v13, v14

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Lcom/jingdong/common/res/StringUtil;->product_filter_hint:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 251
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-gt v3, v13, :cond_0

    .line 252
    add-int/lit8 v13, v3, -0x1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/PriceFilter;

    .line 253
    .local v9, priceFilter:Lcom/jingdong/common/entity/PriceFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/PriceFilter;->getMinPrice()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lcom/jingdong/common/entity/PriceFilter;->getMaxPrice()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 261
    .end local v3           #i:I
    .end local v9           #priceFilter:Lcom/jingdong/common/entity/PriceFilter;
    .end local v10           #priceFilterList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/PriceFilter;>;"
    :pswitch_5
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    .line 262
    .local v6, object:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v6, :cond_0

    .line 265
    invoke-virtual {v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->keys()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 269
    .local v4, key:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/jingdong/common/entity/SearchFilter;->setFilterNameId(Ljava/lang/String;)V

    .line 270
    const/4 v5, 0x0

    .line 271
    .local v5, keyValue:Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    .line 272
    .local v7, object2:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v7, :cond_1

    .line 273
    invoke-virtual {v7, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 277
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/jingdong/common/entity/SearchFilter;->setFilterName(Ljava/lang/String;)V

    .line 280
    :cond_1
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jingdong/common/entity/SearchFilter;->setTypeFlag(I)V

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "0"

    aput-object v15, v13, v14

    .line 284
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Lcom/jingdong/common/res/StringUtil;->product_filter_hint:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 285
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_0

    .line 286
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    if-ge v3, v13, :cond_0

    .line 287
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    .line 288
    .local v8, object3:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v8, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->keys()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v14, v3

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    aget-object v14, v14, v3

    invoke-virtual {v8, v14}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 286
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 7
    .parameter "jsonObjectPoxy"

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v4, "SearchFilter"

    iput-object v4, p0, Lcom/jingdong/common/entity/SearchFilter;->TAG:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONObjectProxy;->keys()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/SearchFilter;->setFilterName(Ljava/lang/String;)V

    .line 68
    const-string v2, ""

    .line 70
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, valueItems:[Ljava/lang/String;
    :goto_0
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/SearchFilter;->setTypeFlag(I)V

    .line 81
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 83
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    .line 84
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    .line 86
    iget-object v4, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v6

    .line 87
    iget-object v4, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    sget-object v5, Lcom/jingdong/common/res/StringUtil;->product_filter_hint:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 89
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-le v0, v4, :cond_2

    .line 99
    .end local v0           #i:I
    .end local v3           #valueItems:[Ljava/lang/String;
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    aput-object v2, v3, v6

    .restart local v3       #valueItems:[Ljava/lang/String;
    goto :goto_0

    .line 91
    .restart local v0       #i:I
    :cond_2
    iget-object v4, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 92
    iget-object v4, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    aget-object v5, v3, v5

    aput-object v5, v4, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 13
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    const/4 v9, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v8, "SearchFilter"

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->TAG:Ljava/lang/String;

    .line 102
    iput v10, p0, Lcom/jingdong/common/entity/SearchFilter;->selectedOrder:I

    .line 103
    const-string v8, "0"

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->selectedItem:Ljava/lang/String;

    .line 104
    packed-switch p2, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 106
    :pswitch_0
    const-string v8, "expandSortName"

    invoke-virtual {p1, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->filterName:Ljava/lang/String;

    .line 107
    const-string v8, "items"

    invoke-virtual {p1, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 110
    .local v2, jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 111
    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    .line 112
    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    .line 113
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 114
    .local v4, linkedHashMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 115
    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 116
    .local v1, item:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v8, "expandValueId"

    invoke-virtual {v1, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 117
    .local v3, key:Ljava/lang/Integer;
    const-string v8, "expandSortValueName"

    invoke-virtual {v1, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v4, v3, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    .line 120
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    aput-object v7, v8, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    .end local v0           #i:I
    .end local v1           #item:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v2           #jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v3           #key:Ljava/lang/Integer;
    .end local v4           #linkedHashMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7           #value:Ljava/lang/String;
    :pswitch_1
    sget-object v8, Lcom/jingdong/common/res/StringUtil;->search_filter_distribution:Ljava/lang/String;

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->filterName:Ljava/lang/String;

    .line 127
    new-array v8, v9, [Ljava/lang/String;

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    .line 128
    new-array v8, v9, [Ljava/lang/String;

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    .line 129
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const-string v9, "0"

    aput-object v9, v8, v10

    .line 130
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const-string v9, "1"

    aput-object v9, v8, v11

    .line 131
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const-string v9, "2"

    aput-object v9, v8, v12

    .line 133
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    sget-object v9, Lcom/jingdong/common/res/StringUtil;->product_filter_hint:Ljava/lang/String;

    aput-object v9, v8, v10

    .line 134
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    sget-object v9, Lcom/jingdong/common/res/StringUtil;->search_filter_jd_distribute:Ljava/lang/String;

    aput-object v9, v8, v11

    .line 135
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    sget-object v9, Lcom/jingdong/common/res/StringUtil;->search_filter_other_distribute:Ljava/lang/String;

    aput-object v9, v8, v12

    goto/16 :goto_0

    .line 141
    :pswitch_2
    sget-object v8, Lcom/jingdong/common/res/StringUtil;->search_filter_region:Ljava/lang/String;

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->filterName:Ljava/lang/String;

    .line 142
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONObjectProxy;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 143
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v6, provinceList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Province;>;"
    const-string v8, "provinces"

    invoke-virtual {p1, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/jingdong/common/entity/Province;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 145
    if-eqz v6, :cond_1

    .line 146
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    .line 147
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    .line 148
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const-string v9, "0"

    aput-object v9, v8, v10

    .line 149
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    sget-object v9, Lcom/jingdong/common/res/StringUtil;->product_filter_hint:Ljava/lang/String;

    aput-object v9, v8, v10

    .line 150
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gt v0, v8, :cond_0

    .line 151
    add-int/lit8 v8, v0, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/Province;

    .line 152
    .local v5, province:Lcom/jingdong/common/entity/Province;
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Province;->getProvinceID()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    .line 153
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 156
    .end local v0           #i:I
    .end local v5           #province:Lcom/jingdong/common/entity/Province;
    :cond_1
    new-array v8, v11, [Ljava/lang/String;

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    .line 157
    new-array v8, v11, [Ljava/lang/String;

    iput-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    .line 158
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    const-string v9, "0"

    aput-object v9, v8, v10

    .line 159
    iget-object v8, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    sget-object v9, Lcom/jingdong/common/res/StringUtil;->product_filter_hint:Ljava/lang/String;

    aput-object v9, v8, v10

    goto/16 :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    .locals 5
    .parameter "jsonArray"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SearchFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    const/4 v2, 0x0

    .line 328
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    move-object v2, v3

    .line 340
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    :goto_1
    return-object v2

    .line 330
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    :cond_0
    new-instance v0, Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Lcom/jingdong/common/entity/SearchFilter;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 331
    .local v0, catelogy:Lcom/jingdong/common/entity/SearchFilter;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v0           #catelogy:Lcom/jingdong/common/entity/SearchFilter;
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchFilter;>;"
    goto :goto_1
.end method


# virtual methods
.method public getFieldList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchFilter;->fieldList:[Ljava/lang/String;

    return-object v0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchFilter;->filterName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterNameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchFilter;->filterNameId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchFilter;->filterNameId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIndexFromValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 343
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 348
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 344
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getKeyList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchFilter;->selectedItem:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedOrder()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/jingdong/common/entity/SearchFilter;->selectedOrder:I

    return v0
.end method

.method public getTypeFlag()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/jingdong/common/entity/SearchFilter;->typeFlag:I

    return v0
.end method

.method public getValueList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getWareNumberList()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/jingdong/common/entity/SearchFilter;->wareNumberList:[Ljava/lang/Integer;

    return-object v0
.end method

.method public setFieldList([Ljava/lang/String;)V
    .locals 0
    .parameter "fieldList"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/jingdong/common/entity/SearchFilter;->fieldList:[Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0
    .parameter "filterName"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/jingdong/common/entity/SearchFilter;->filterName:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setFilterNameId(Ljava/lang/String;)V
    .locals 0
    .parameter "filterNameId"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/jingdong/common/entity/SearchFilter;->filterNameId:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setKeyList([Ljava/lang/String;)V
    .locals 0
    .parameter "keyList"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/jingdong/common/entity/SearchFilter;->keyList:[Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;)V
    .locals 0
    .parameter "selectedItem"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/jingdong/common/entity/SearchFilter;->selectedItem:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setSelectedOrder(I)V
    .locals 0
    .parameter "selectedOrder"

    .prologue
    .line 397
    iput p1, p0, Lcom/jingdong/common/entity/SearchFilter;->selectedOrder:I

    .line 398
    return-void
.end method

.method public setTypeFlag(I)V
    .locals 0
    .parameter "typeFlag"

    .prologue
    .line 405
    iput p1, p0, Lcom/jingdong/common/entity/SearchFilter;->typeFlag:I

    .line 406
    return-void
.end method

.method public setValueList([Ljava/lang/String;)V
    .locals 0
    .parameter "valueList"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/jingdong/common/entity/SearchFilter;->valueList:[Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setWareNumberList([Ljava/lang/Integer;)V
    .locals 0
    .parameter "wareNumberList"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/jingdong/common/entity/SearchFilter;->wareNumberList:[Ljava/lang/Integer;

    .line 414
    return-void
.end method
