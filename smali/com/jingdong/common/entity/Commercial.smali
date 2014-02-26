.class public Lcom/jingdong/common/entity/Commercial;
.super Ljava/lang/Object;
.source "Commercial.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FOCUSACTIVITY:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private action:Ljava/lang/String;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private feature:Ljava/lang/String;

.field private horizontalImg:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private verticalImg:Ljava/lang/String;

.field private wareIds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 0
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/entity/Commercial;->update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 52
    return-void
.end method

.method public static isAdd(Lcom/jingdong/common/entity/Commercial;)Z
    .locals 1
    .parameter "commercial"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/jingdong/common/entity/Commercial;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
            "Lcom/jingdong/common/entity/Commercial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    if-nez p0, :cond_0

    .line 148
    const/4 v2, 0x0

    .line 169
    :goto_0
    return-object v2

    .line 151
    :cond_0
    const/4 v2, 0x0

    .line 155
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    move-object v2, v3

    .line 163
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    goto :goto_0

    .line 157
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    :cond_1
    new-instance v0, Lcom/jingdong/common/entity/Commercial;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Lcom/jingdong/common/entity/Commercial;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 158
    .local v0, commercial:Lcom/jingdong/common/entity/Commercial;
    invoke-static {v0}, Lcom/jingdong/common/entity/Commercial;->isAdd(Lcom/jingdong/common/entity/Commercial;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    .end local v0           #commercial:Lcom/jingdong/common/entity/Commercial;
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    goto :goto_0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/common/entity/Commercial;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jingdong/common/entity/Commercial;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jingdong/common/entity/Commercial;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getHorizontalImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jingdong/common/entity/Commercial;->horizontalImg:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/common/entity/Commercial;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/common/entity/Commercial;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/jingdong/common/entity/Commercial;->type:I

    return v0
.end method

.method public getVerticalImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/common/entity/Commercial;->verticalImg:Ljava/lang/String;

    return-object v0
.end method

.method public getWareIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jingdong/common/entity/Commercial;->wareIds:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jingdong/common/entity/Commercial;->action:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/jingdong/common/entity/Commercial;->drawable:Landroid/graphics/drawable/Drawable;

    .line 135
    return-void
.end method

.method public setFeature(Ljava/lang/String;)V
    .locals 0
    .parameter "feature"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/jingdong/common/entity/Commercial;->feature:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setHorizontalImg(Ljava/lang/String;)V
    .locals 0
    .parameter "horizontalImg"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jingdong/common/entity/Commercial;->horizontalImg:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/jingdong/common/entity/Commercial;->id:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jingdong/common/entity/Commercial;->title:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 142
    iput p1, p0, Lcom/jingdong/common/entity/Commercial;->type:I

    .line 143
    return-void
.end method

.method public setVerticalImg(Ljava/lang/String;)V
    .locals 0
    .parameter "verticalImg"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/jingdong/common/entity/Commercial;->verticalImg:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setWareIds(Ljava/lang/String;)V
    .locals 0
    .parameter "wareIds"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/jingdong/common/entity/Commercial;->wareIds:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 2
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 55
    const-string v1, "activityId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Commercial;->id:Ljava/lang/String;

    .line 60
    const-string v1, "horizontalImag"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Commercial;->horizontalImg:Ljava/lang/String;

    .line 61
    const-string v1, "verticalImage"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Commercial;->verticalImg:Ljava/lang/String;

    .line 66
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jingdong/common/entity/Commercial;->type:I

    .line 67
    const-string v1, "action"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/Commercial;->action:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
