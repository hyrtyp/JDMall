.class public Lcom/jingdong/common/entity/MessageSummary;
.super Ljava/lang/Object;
.source "MessageSummary.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "a"

.field public static final CONTENT_KEY:Ljava/lang/String; = "content"

.field public static final CREATED_KEY:Ljava/lang/String; = "created"

.field public static final FORWARD_ID_KEY:Ljava/lang/String; = "forwardId"

.field public static final FORWARD_KEY:Ljava/lang/String; = "forward"

.field public static final FORWARD_TYPE_KEY:Ljava/lang/String; = "forwardType"

.field public static final TITLE_KEY:Ljava/lang/String; = "title"

.field private static final serialVersionUID:J = -0x20e1e508ce662eL


# instance fields
.field private action:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private createdTime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private stringType:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    const-string v0, "forwardId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageSummary;->setId(Ljava/lang/String;)V

    .line 39
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageSummary;->setContent(Ljava/lang/String;)V

    .line 40
    const-string v0, "created"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageSummary;->setCreatedTime(Ljava/lang/String;)V

    .line 41
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageSummary;->setTitle(Ljava/lang/String;)V

    .line 42
    const-string v0, "forward"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageSummary;->setStringType(Ljava/lang/String;)V

    .line 43
    const-string v0, "forwardType"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageSummary;->setType(Ljava/lang/Integer;)V

    .line 44
    const-string v0, "a"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageSummary;->setAction(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->action:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    const-string v0, ""

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->action:Ljava/lang/String;

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->createdTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    const-string v0, ""

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCreatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->createdTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 108
    const-string v0, ""

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->createdTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->createdTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 67
    const-string v0, ""

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public getJsonObjectString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v0}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>()V

    .line 51
    .local v0, proxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    const-string v1, "content"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v1, "created"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getCreatedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "msgId"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "a"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 57
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getStringType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->stringType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    const-string v0, ""

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->type:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->type:Ljava/lang/Integer;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageSummary;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageSummary;->action:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageSummary;->content:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setCreatedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createdTime"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageSummary;->createdTime:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageSummary;->id:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setStringType(Ljava/lang/String;)V
    .locals 0
    .parameter "stringType"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageSummary;->stringType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageSummary;->title:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageSummary;->type:Ljava/lang/Integer;

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageSummary [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/MessageSummary;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/MessageSummary;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/MessageSummary;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/MessageSummary;->createdTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stringType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/MessageSummary;->stringType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/MessageSummary;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
