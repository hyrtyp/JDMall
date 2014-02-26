.class public Lcom/jingdong/common/utils/SimpleJsonAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleJsonAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;,
        Lcom/jingdong/common/utils/SimpleJsonAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mData:Lorg/json/JSONArray;

.field private mDropDownResource:I

.field private mFilter:Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;

.field private mFrom:[Ljava/lang/String;

.field private final mHolders:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "[",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTo:[I

.field private mUnfilteredData:Lorg/json/JSONArray;

.field private mViewBinder:Lcom/jingdong/common/utils/SimpleJsonAdapter$ViewBinder;

.field private viewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;I[Ljava/lang/String;[I)V
    .locals 1
    .parameter "context"
    .parameter "data"
    .parameter "resource"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mHolders:Ljava/util/WeakHashMap;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->viewList:Ljava/util/ArrayList;

    .line 104
    iput-object p2, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mData:Lorg/json/JSONArray;

    .line 105
    iput p3, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mDropDownResource:I

    iput p3, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mResource:I

    .line 106
    iput-object p4, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mFrom:[Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mTo:[I

    .line 109
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 108
    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 110
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/SimpleJsonAdapter;)Lorg/json/JSONArray;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mUnfilteredData:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/SimpleJsonAdapter;)Lorg/json/JSONArray;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mData:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/SimpleJsonAdapter;Lorg/json/JSONArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mUnfilteredData:Lorg/json/JSONArray;

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/common/utils/SimpleJsonAdapter;)[I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mTo:[I

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/common/utils/SimpleJsonAdapter;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mFrom:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/utils/SimpleJsonAdapter;Lorg/json/JSONArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mData:Lorg/json/JSONArray;

    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 16
    .parameter "position"
    .parameter "view"

    .prologue
    .line 196
    const/4 v5, 0x0

    .line 198
    .local v5, dataSet:Lorg/json/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mData:Lorg/json/JSONArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 202
    if-nez v5, :cond_1

    .line 262
    :cond_0
    return-void

    .line 199
    :catch_0
    move-exception v6

    .line 200
    .local v6, e:Lorg/json/JSONException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 206
    .end local v6           #e:Lorg/json/JSONException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mViewBinder:Lcom/jingdong/common/utils/SimpleJsonAdapter$ViewBinder;

    .line 207
    .local v1, binder:Lcom/jingdong/common/utils/SimpleJsonAdapter$ViewBinder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mHolders:Ljava/util/WeakHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/view/View;

    .line 208
    .local v8, holder:[Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mFrom:[Ljava/lang/String;

    .line 209
    .local v7, from:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mTo:[I

    .line 210
    .local v11, to:[I
    array-length v3, v11

    .line 212
    .local v3, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v3, :cond_0

    .line 213
    aget-object v12, v8, v9

    .line 214
    .local v12, v:Landroid/view/View;
    if-eqz v12, :cond_4

    .line 215
    const/4 v4, 0x0

    .line 217
    .local v4, data:Ljava/lang/Object;
    :try_start_1
    aget-object v13, v7, v9

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 221
    if-nez v4, :cond_5

    const-string v10, ""

    .line 222
    .local v10, text:Ljava/lang/String;
    :goto_1
    if-nez v10, :cond_2

    .line 223
    const-string v10, ""

    .line 226
    :cond_2
    const/4 v2, 0x0

    .line 227
    .local v2, bound:Z
    if-eqz v1, :cond_3

    .line 228
    invoke-interface {v1, v12, v4, v10}, Lcom/jingdong/common/utils/SimpleJsonAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    .line 231
    :cond_3
    if-nez v2, :cond_4

    .line 232
    instance-of v13, v12, Landroid/widget/Checkable;

    if-eqz v13, :cond_7

    .line 233
    instance-of v13, v4, Ljava/lang/Boolean;

    if-eqz v13, :cond_6

    .line 234
    check-cast v12, Landroid/widget/Checkable;

    .end local v12           #v:Landroid/view/View;
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #data:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-interface {v12, v13}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 212
    .end local v2           #bound:Z
    .end local v10           #text:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 218
    .restart local v4       #data:Ljava/lang/Object;
    .restart local v12       #v:Landroid/view/View;
    :catch_1
    move-exception v6

    .line 219
    .restart local v6       #e:Lorg/json/JSONException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 221
    .end local v6           #e:Lorg/json/JSONException;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 236
    .restart local v2       #bound:Z
    .restart local v10       #text:Ljava/lang/String;
    :cond_6
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 237
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    const-string v15, " should be bound to a Boolean, not a "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 239
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 236
    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 241
    :cond_7
    instance-of v13, v12, Landroid/widget/TextView;

    if-eqz v13, :cond_8

    .line 246
    check-cast v12, Landroid/widget/TextView;

    .end local v12           #v:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 247
    .restart local v12       #v:Landroid/view/View;
    :cond_8
    instance-of v13, v12, Landroid/widget/ImageView;

    if-eqz v13, :cond_a

    .line 248
    instance-of v13, v4, Ljava/lang/Integer;

    if-eqz v13, :cond_9

    .line 249
    check-cast v12, Landroid/widget/ImageView;

    .end local v12           #v:Landroid/view/View;
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #data:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 251
    .restart local v4       #data:Ljava/lang/Object;
    .restart local v12       #v:Landroid/view/View;
    :cond_9
    check-cast v12, Landroid/widget/ImageView;

    .end local v12           #v:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 254
    .restart local v12       #v:Landroid/view/View;
    :cond_a
    new-instance v13, Ljava/lang/IllegalStateException;

    .line 255
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    const-string v15, " is not a "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 257
    const-string v15, " view that can be bounds by this SimpleAdapter"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 255
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 254
    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 147
    if-nez p2, :cond_1

    .line 148
    const/4 v5, 0x0

    invoke-static {p4, p3, v5}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 150
    .local v4, v:Landroid/view/View;
    iget-object v3, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mTo:[I

    .line 151
    .local v3, to:[I
    array-length v0, v3

    .line 152
    .local v0, count:I
    new-array v1, v0, [Landroid/view/View;

    .line 154
    .local v1, holder:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 158
    iget-object v5, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mHolders:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v5, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v0           #count:I
    .end local v1           #holder:[Landroid/view/View;
    .end local v2           #i:I
    .end local v3           #to:[I
    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->bindView(ILandroid/view/View;)V

    .line 166
    return-object v4

    .line 155
    .restart local v0       #count:I
    .restart local v1       #holder:[Landroid/view/View;
    .restart local v2       #i:I
    .restart local v3       #to:[I
    :cond_0
    aget v5, v3, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v1, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v0           #count:I
    .end local v1           #holder:[Landroid/view/View;
    .end local v2           #i:I
    .end local v3           #to:[I
    .end local v4           #v:Landroid/view/View;
    :cond_1
    move-object v4, p2

    .restart local v4       #v:Landroid/view/View;
    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mData:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 184
    .line 185
    iget v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mDropDownResource:I

    .line 184
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mFilter:Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;-><init>(Lcom/jingdong/common/utils/SimpleJsonAdapter;Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mFilter:Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mFilter:Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mData:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 134
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 141
    iget v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinder()Lcom/jingdong/common/utils/SimpleJsonAdapter$ViewBinder;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mViewBinder:Lcom/jingdong/common/utils/SimpleJsonAdapter$ViewBinder;

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 179
    iput p1, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mDropDownResource:I

    .line 180
    return-void
.end method

.method public setViewBinder(Lcom/jingdong/common/utils/SimpleJsonAdapter$ViewBinder;)V
    .locals 0
    .parameter "viewBinder"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter;->mViewBinder:Lcom/jingdong/common/utils/SimpleJsonAdapter$ViewBinder;

    .line 286
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "v"
    .parameter "value"

    .prologue
    .line 304
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "v"
    .parameter "value"

    .prologue
    .line 327
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter "v"
    .parameter "text"

    .prologue
    .line 344
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method
