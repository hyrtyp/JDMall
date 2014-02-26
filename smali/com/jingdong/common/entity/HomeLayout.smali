.class public Lcom/jingdong/common/entity/HomeLayout;
.super Ljava/lang/Object;
.source "HomeLayout.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_COLLECT:Ljava/lang/String; = "7"

.field public static final TYPE_M:Ljava/lang/String; = "5"

.field public static final TYPE_NATIVE_LOTTERY:Ljava/lang/String; = "9"

.field public static final TYPE_SHAKE:Ljava/lang/String; = "6"

.field public static final TYPE_SIGN:Ljava/lang/String; = "8"

.field public static hasNativeLottery:Z = false

.field private static final serialVersionUID:J = -0x49820c13ae1e3274L


# instance fields
.field private flag:Z

.field private foldFlag:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/common/entity/HomeLayout;->hasNativeLottery:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "jsonObject"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->type:Ljava/lang/String;

    .line 61
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->title:Ljava/lang/String;

    .line 62
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->icon:Ljava/lang/String;

    .line 63
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->url:Ljava/lang/String;

    .line 64
    const-string v0, "foldFlag"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->foldFlag:Ljava/lang/String;

    .line 65
    const-string v0, "functionId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->functionId:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/jingdong/common/entity/HomeLayout;->stringToBoolean()V

    .line 67
    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 162
    const-wide v0, -0x49820c13ae1e3274L

    return-wide v0
.end method

.method private stringToBoolean()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->foldFlag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->foldFlag:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jingdong/common/entity/HomeLayout;->flag:Z

    .line 74
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;
    .locals 6
    .parameter "jsonArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/HomeLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v2, 0x0

    .line 101
    :goto_0
    return-object v2

    .line 81
    :cond_0
    const/4 v4, 0x0

    sput-boolean v4, Lcom/jingdong/common/entity/HomeLayout;->hasNativeLottery:Z

    .line 83
    const/4 v2, 0x0

    .line 86
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v0, v4, :cond_1

    move-object v2, v3

    .line 96
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    goto :goto_0

    .line 88
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    :cond_1
    new-instance v1, Lcom/jingdong/common/entity/HomeLayout;

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/jingdong/common/entity/HomeLayout;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 90
    .local v1, layout:Lcom/jingdong/common/entity/HomeLayout;
    const-string v4, "9"

    invoke-virtual {v1}, Lcom/jingdong/common/entity/HomeLayout;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    const/4 v4, 0x1

    sput-boolean v4, Lcom/jingdong/common/entity/HomeLayout;->hasNativeLottery:Z

    .line 94
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    .end local v0           #i:I
    .end local v1           #layout:Lcom/jingdong/common/entity/HomeLayout;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    .restart local v0       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    goto :goto_0
.end method


# virtual methods
.method public getFoldFlag()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/jingdong/common/entity/HomeLayout;->flag:Z

    return v0
.end method

.method public getFoldFlagString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->foldFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->functionId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeLayout;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFoldFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "foldFlag"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeLayout;->foldFlag:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lcom/jingdong/common/entity/HomeLayout;->stringToBoolean()V

    .line 143
    return-void
.end method

.method public setFoldFlag(Z)V
    .locals 0
    .parameter "foldFlag"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/jingdong/common/entity/HomeLayout;->flag:Z

    .line 151
    return-void
.end method

.method public setFunctionId(Ljava/lang/String;)V
    .locals 0
    .parameter "functionId"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeLayout;->functionId:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeLayout;->icon:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeLayout;->onClickListener:Landroid/view/View$OnClickListener;

    .line 171
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeLayout;->title:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeLayout;->type:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeLayout;->url:Ljava/lang/String;

    .line 134
    return-void
.end method
