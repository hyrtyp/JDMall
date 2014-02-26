.class public Lcom/jingdong/common/entity/OrderInvoiceInfo;
.super Ljava/lang/Object;
.source "OrderInvoiceInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4268832010ccfd05L


# instance fields
.field private invoiceContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private invoiceContentsBook:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private invoiceHeaderTypeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private invoiceTypesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 6
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    packed-switch p2, :pswitch_data_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 28
    :pswitch_0
    const-string v5, "invoiceHeaderTypeInfo"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    .line 29
    .local v3, invoiceHeaderTypeInfojsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const-string v5, "invoiceTypesInfo"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    .line 31
    .local v4, invoiceTypesInfojsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v3, p2}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/OrderInvoiceInfo;->setInvoiceHeaderTypeInfo(Ljava/util/ArrayList;)V

    .line 32
    invoke-static {v4, p2}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/OrderInvoiceInfo;->setInvoiceTypesInfo(Ljava/util/ArrayList;)V

    .line 34
    const-string v5, "invoiceContentsInfo"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 35
    .local v1, invoiceContentsInfo:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_0

    .line 36
    const-string v5, "invoiceContentsBook"

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 37
    .local v0, invoiceContentsBookjsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const-string v5, "invoiceContents"

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 38
    .local v2, invoiceContentsjsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v0, p2}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/OrderInvoiceInfo;->setInvoiceContentsBook(Ljava/util/ArrayList;)V

    .line 39
    invoke-static {v2, p2}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/OrderInvoiceInfo;->setInvoiceContents(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getInvoiceContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderInvoiceInfo;->invoiceContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInvoiceContentsBook()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderInvoiceInfo;->invoiceContentsBook:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInvoiceHeaderTypeInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderInvoiceInfo;->invoiceHeaderTypeInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInvoiceTypesInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderInvoiceInfo;->invoiceTypesInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setInvoiceContents(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, invoiceContents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/InvoiceBaseInfo;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderInvoiceInfo;->invoiceContents:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public setInvoiceContentsBook(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, invoiceContentsBook:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/InvoiceBaseInfo;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderInvoiceInfo;->invoiceContentsBook:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method public setInvoiceHeaderTypeInfo(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, invoiceHeaderTypeInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/InvoiceBaseInfo;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderInvoiceInfo;->invoiceHeaderTypeInfo:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public setInvoiceTypesInfo(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/InvoiceBaseInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, invoiceTypesInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/InvoiceBaseInfo;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderInvoiceInfo;->invoiceTypesInfo:Ljava/util/ArrayList;

    .line 78
    return-void
.end method
