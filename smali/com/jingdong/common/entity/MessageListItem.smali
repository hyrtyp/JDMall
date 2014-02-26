.class public Lcom/jingdong/common/entity/MessageListItem;
.super Lcom/jingdong/common/entity/BaseMessage;
.source "MessageListItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "a"

.field public static final ASK_REPLY_NOTIFY:I = 0x1

.field public static final BROADCAST_NOTIFY:I = 0x14

.field public static final CONTENT_KEY:Ljava/lang/String; = "content"

.field public static final COUPON_NOTIFY:I = 0xb

.field public static final CREATED_KEY:Ljava/lang/String; = "created"

.field public static final CUSTOM_NOTIFY:I = 0x1f

.field public static final MATERIAL_FLOW_NOTIFY:I = 0xa

.field public static final MESSAGE_LIST_KEY:Ljava/lang/String; = "msgList"

.field public static final PICK_UP_NOTIFY:I = 0x3

.field public static final PIN_KEY:Ljava/lang/String; = "pin"

.field public static final PRICE_REDUCTION_NOTIFY:I = 0x6

.field public static final PRODUCT_ARRAVIAL_NOTIFY:I = 0x5

.field public static final TITLE_KEY:Ljava/lang/String; = "title"

.field public static final TYPE_KEY:Ljava/lang/String; = "type"

.field public static final UN_KNOW_TYPE:I = -0x1

.field private static final serialVersionUID:J = 0x738e54b5c9c333c0L


# instance fields
.field protected action:Ljava/lang/String;

.field protected content:Ljava/lang/String;

.field protected createdTime:Ljava/lang/String;

.field protected pin:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field protected type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/jingdong/common/entity/BaseMessage;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/jingdong/common/entity/BaseMessage;-><init>()V

    .line 48
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageListItem;->setContent(Ljava/lang/String;)V

    .line 49
    const-string v0, "created"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageListItem;->setCreatedTime(Ljava/lang/String;)V

    .line 50
    const-string v0, "msgId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageListItem;->setMsgId(Ljava/lang/String;)V

    .line 51
    const-string v0, "pin"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageListItem;->setPin(Ljava/lang/String;)V

    .line 52
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageListItem;->setStatus(Ljava/lang/Integer;)V

    .line 53
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageListItem;->setTitle(Ljava/lang/String;)V

    .line 54
    const-string v0, "a"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageListItem;->setAction(Ljava/lang/String;)V

    .line 55
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/MessageListItem;->setType(Ljava/lang/Integer;)V

    .line 56
    return-void
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;
    .locals 5
    .parameter "poxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/MessageListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MessageListItem;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 77
    :cond_0
    return-object v1

    .line 70
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 72
    .local v2, objectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 73
    new-instance v3, Lcom/jingdong/common/entity/MessageListItem;

    invoke-direct {v3, v2}, Lcom/jingdong/common/entity/MessageListItem;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->action:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    const-string v0, ""

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->action:Ljava/lang/String;

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    const-string v0, ""

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCreatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->createdTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    const-string v0, ""

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->createdTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->pin:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    const-string v0, ""

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->pin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 123
    const-string v0, ""

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->type:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->type:Ljava/lang/Integer;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/MessageListItem;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public isUnread()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageListItem;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageListItem;->action:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageListItem;->content:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCreatedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createdTime"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageListItem;->createdTime:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageListItem;->pin:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageListItem;->title:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/jingdong/common/entity/MessageListItem;->type:Ljava/lang/Integer;

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageListItem [content="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/MessageListItem;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/MessageListItem;->createdTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/MessageListItem;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/MessageListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/MessageListItem;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
