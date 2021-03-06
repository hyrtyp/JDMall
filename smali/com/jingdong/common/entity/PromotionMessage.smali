.class public Lcom/jingdong/common/entity/PromotionMessage;
.super Ljava/lang/Object;
.source "PromotionMessage.java"


# static fields
.field public static final PROMOTIONMSG:I

.field private static isValid:Z


# instance fields
.field private activity_id:Ljava/lang/String;

.field private catelogyId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private endDate:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/common/entity/PromotionMessage;->isValid:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    packed-switch p2, :pswitch_data_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 31
    :pswitch_0
    const-string v0, "activity_id"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/PromotionMessage;->setActivityId(Ljava/lang/String;)V

    .line 32
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/PromotionMessage;->setTitle(Ljava/lang/String;)V

    .line 33
    const-string v0, "start_date"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/PromotionMessage;->setStartDate(Ljava/lang/String;)V

    .line 34
    const-string v0, "end_date"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/PromotionMessage;->setEndDate(Ljava/lang/String;)V

    .line 35
    const-string v0, "imageUrl"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/PromotionMessage;->setImageUrl(Ljava/lang/String;)V

    .line 36
    const-string v0, "catelogyId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/PromotionMessage;->setCategoryId(Ljava/lang/String;)V

    .line 37
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/PromotionMessage;->setContent(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/jingdong/common/entity/PromotionMessage;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/PromotionMessage;->setValid(Z)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    .locals 6
    .parameter "jsonArray"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/PromotionMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v2, 0x0

    .line 52
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_0

    move-object v2, v3

    .line 64
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    :goto_1
    return-object v2

    .line 54
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    :cond_0
    new-instance v4, Lcom/jingdong/common/entity/PromotionMessage;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/jingdong/common/entity/PromotionMessage;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 55
    .local v4, pm:Lcom/jingdong/common/entity/PromotionMessage;
    sget-boolean v5, Lcom/jingdong/common/entity/PromotionMessage;->isValid:Z

    if-eqz v5, :cond_1

    .line 56
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    .end local v4           #pm:Lcom/jingdong/common/entity/PromotionMessage;
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 60
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    goto :goto_2
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/common/entity/PromotionMessage;->activity_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jingdong/common/entity/PromotionMessage;->catelogyId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jingdong/common/entity/PromotionMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jingdong/common/entity/PromotionMessage;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jingdong/common/entity/PromotionMessage;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/common/entity/PromotionMessage;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/common/entity/PromotionMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValid()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/jingdong/common/entity/PromotionMessage;->isValid:Z

    return v0
.end method

.method public setActivityId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jingdong/common/entity/PromotionMessage;->activity_id:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0
    .parameter "categoryId"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/jingdong/common/entity/PromotionMessage;->catelogyId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/jingdong/common/entity/PromotionMessage;->content:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0
    .parameter "endDate"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jingdong/common/entity/PromotionMessage;->endDate:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jingdong/common/entity/PromotionMessage;->imageUrl:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0
    .parameter "startDate"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/jingdong/common/entity/PromotionMessage;->startDate:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jingdong/common/entity/PromotionMessage;->title:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 68
    sput-boolean p1, Lcom/jingdong/common/entity/PromotionMessage;->isValid:Z

    .line 69
    return-void
.end method
