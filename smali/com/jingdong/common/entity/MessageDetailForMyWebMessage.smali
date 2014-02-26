.class public Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;
.super Lcom/jingdong/common/entity/MessageDetail;
.source "MessageDetailForMyWebMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageDetailForMyWebMessage"

.field public static beforeyesterday:I = 0x0

.field private static final serialVersionUID:J = 0x7911c2aad80d5a82L

.field public static today:I

.field public static yesterday:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 22
    sput v0, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->today:I

    .line 23
    sput v0, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->yesterday:I

    .line 24
    sput v0, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->beforeyesterday:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter "itemProxy"
    .parameter "other"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/entity/MessageDetail;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 28
    return-void
.end method

.method public static toListForMyWebMessage(Lcom/jingdong/common/utils/JSONArrayPoxy;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .parameter "poxy"
    .parameter "current"
    .parameter "format"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_1

    .line 89
    :cond_0
    return-object v8

    .line 43
    :cond_1
    move-object/from16 v11, p2

    .line 44
    .local v11, parseFormat:Ljava/lang/String;
    move-object/from16 v0, p1

    .line 46
    .local v0, currentTime:Ljava/lang/String;
    const/4 v4, 0x1

    .line 47
    .local v4, isFirstToday:Z
    const/4 v5, 0x1

    .line 48
    .local v5, isFirstYesterday:Z
    const/4 v3, 0x1

    .line 50
    .local v3, isFirstBeforeYesterday:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    if-ge v2, v13, :cond_0

    .line 51
    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v9

    .line 52
    .local v9, objectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 54
    const-string v13, "common"

    invoke-virtual {v9, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    .line 55
    .local v7, itemProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v13, "others"

    invoke-virtual {v9, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v10

    .line 57
    .local v10, otherProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    new-instance v6, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-direct {v6, v7, v10}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 60
    .local v6, item:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;
    invoke-virtual {v6}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 50
    .end local v6           #item:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;
    .end local v7           #itemProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v10           #otherProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .restart local v6       #item:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;
    .restart local v7       #itemProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v10       #otherProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11, v0}, Lcom/jingdong/common/utils/DateCompareUtil;->compareTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 67
    .local v12, result:I
    if-lez v12, :cond_5

    if-eqz v4, :cond_5

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_4
    :goto_2
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    .end local v12           #result:I
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v12       #result:I
    :cond_5
    if-nez v12, :cond_6

    if-eqz v5, :cond_6

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v13, 0x0

    :try_start_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 75
    :cond_6
    if-gez v12, :cond_4

    if-eqz v3, :cond_4

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static toListForScrool(Lcom/jingdong/common/utils/JSONArrayPoxy;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .parameter "poxy"
    .parameter "current"
    .parameter "format"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_1

    .line 146
    :cond_0
    return-object v8

    .line 101
    :cond_1
    move-object/from16 v11, p2

    .line 102
    .local v11, parseFormat:Ljava/lang/String;
    move-object/from16 v0, p1

    .line 104
    .local v0, currentTime:Ljava/lang/String;
    const/4 v4, 0x1

    .line 105
    .local v4, isFirstToday:Z
    const/4 v5, 0x1

    .line 106
    .local v5, isFirstYesterday:Z
    const/4 v3, 0x1

    .line 108
    .local v3, isFirstBeforeYesterday:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    if-ge v2, v13, :cond_0

    .line 109
    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v9

    .line 110
    .local v9, objectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 112
    const-string v13, "common"

    invoke-virtual {v9, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    .line 113
    .local v7, itemProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v13, "others"

    invoke-virtual {v9, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v10

    .line 115
    .local v10, otherProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    new-instance v6, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-direct {v6, v7, v10}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 118
    .local v6, item:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;
    invoke-virtual {v6}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 108
    .end local v6           #item:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;
    .end local v7           #itemProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v10           #otherProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .restart local v6       #item:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;
    .restart local v7       #itemProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v10       #otherProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11, v0}, Lcom/jingdong/common/utils/DateCompareUtil;->compareTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 125
    .local v12, result:I
    if-lez v12, :cond_5

    if-eqz v4, :cond_5

    .line 126
    const/4 v4, 0x0

    .line 127
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    sput v13, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->today:I

    .line 138
    :cond_4
    :goto_2
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 139
    .end local v12           #result:I
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v12       #result:I
    :cond_5
    if-nez v12, :cond_6

    if-eqz v5, :cond_6

    .line 130
    const/4 v5, 0x0

    .line 131
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    sput v13, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->yesterday:I

    goto :goto_2

    .line 133
    :cond_6
    if-gez v12, :cond_4

    if-eqz v3, :cond_4

    .line 134
    const/4 v3, 0x0

    .line 135
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    sput v13, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->beforeyesterday:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static toListForScrool1(Lcom/jingdong/common/utils/JSONArrayPoxy;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .parameter "poxy"
    .parameter "current"
    .parameter "format"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_1

    .line 206
    :cond_0
    return-object v8

    .line 158
    :cond_1
    move-object/from16 v11, p2

    .line 159
    .local v11, parseFormat:Ljava/lang/String;
    move-object/from16 v0, p1

    .line 161
    .local v0, currentTime:Ljava/lang/String;
    const/4 v4, 0x1

    .line 162
    .local v4, isFirstToday:Z
    const/4 v5, 0x1

    .line 163
    .local v5, isFirstYesterday:Z
    const/4 v3, 0x1

    .line 165
    .local v3, isFirstBeforeYesterday:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    if-ge v2, v13, :cond_0

    .line 166
    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v9

    .line 167
    .local v9, objectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 169
    const-string v13, "common"

    invoke-virtual {v9, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    .line 170
    .local v7, itemProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v13, "others"

    invoke-virtual {v9, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v10

    .line 172
    .local v10, otherProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    new-instance v6, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-direct {v6, v7, v10}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 175
    .local v6, item:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;
    invoke-virtual {v6}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 165
    .end local v6           #item:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;
    .end local v7           #itemProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v10           #otherProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .restart local v6       #item:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;
    .restart local v7       #itemProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v10       #otherProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11, v0}, Lcom/jingdong/common/utils/DateCompareUtil;->compareTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 182
    .local v12, result:I
    if-lez v12, :cond_5

    if-eqz v4, :cond_5

    .line 183
    const/4 v4, 0x0

    .line 184
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    sput v13, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->today:I

    .line 185
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_4
    :goto_2
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    .end local v12           #result:I
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v12       #result:I
    :cond_5
    if-nez v12, :cond_6

    if-eqz v5, :cond_6

    .line 188
    const/4 v5, 0x0

    .line 189
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    sput v13, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->yesterday:I

    .line 190
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 192
    :cond_6
    if-gez v12, :cond_4

    if-eqz v3, :cond_4

    .line 193
    const/4 v3, 0x0

    .line 194
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    sput v13, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->beforeyesterday:I

    .line 195
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
