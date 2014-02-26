.class public Lcom/jingdong/common/entity/InvoiceBaseInfo;
.super Ljava/lang/Object;
.source "InvoiceBaseInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INVOICE_INFO:I = 0x1

.field private static final serialVersionUID:J = -0x3fd59f8967462c43L


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    packed-switch p2, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 46
    :pswitch_0
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->setName(Ljava/lang/String;)V

    .line 47
    const-string v0, "Id"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->setId(I)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/InvoiceBaseInfo;>;"
    if-nez p0, :cond_1

    .line 56
    const/4 v3, 0x0

    .line 69
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/InvoiceBaseInfo;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 60
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/InvoiceBaseInfo;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 61
    new-instance v2, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Lcom/jingdong/common/entity/InvoiceBaseInfo;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 62
    .local v2, invoiceInfo:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    .end local v2           #invoiceInfo:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/jingdong/common/entity/InvoiceBaseInfo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jingdong/common/entity/InvoiceBaseInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, ""

    .line 30
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/InvoiceBaseInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 40
    iput p1, p0, Lcom/jingdong/common/entity/InvoiceBaseInfo;->id:I

    .line 41
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/jingdong/common/entity/InvoiceBaseInfo;->name:Ljava/lang/String;

    .line 34
    return-void
.end method
