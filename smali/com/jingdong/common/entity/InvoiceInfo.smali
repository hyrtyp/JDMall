.class public Lcom/jingdong/common/entity/InvoiceInfo;
.super Ljava/lang/Object;
.source "InvoiceInfo.java"


# instance fields
.field public COMMON_INCOICE:I

.field public InvoiceTitleType:I

.field public hasBook:Z

.field private jbBooks:Lorg/json/JSONObject;

.field private jbGenerals:Lorg/json/JSONObject;

.field private jbHeaders:Lorg/json/JSONObject;

.field public jbInvoiceInfo:Lorg/json/JSONObject;

.field private jbTypes:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/common/entity/InvoiceInfo;->COMMON_INCOICE:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/entity/InvoiceInfo;->hasBook:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getInvoiceInfo()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jingdong/common/entity/InvoiceInfo;->jbInvoiceInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getInvoiceTitleType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/jingdong/common/entity/InvoiceInfo;->InvoiceTitleType:I

    return v0
.end method

.method public getInvoiceType()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/jingdong/common/entity/InvoiceInfo;->COMMON_INCOICE:I

    return v0
.end method

.method public getInvoinceBooks()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/common/entity/InvoiceInfo;->jbBooks:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getInvoinceGenerals()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/common/entity/InvoiceInfo;->jbGenerals:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getInvoinceHeaders()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jingdong/common/entity/InvoiceInfo;->jbHeaders:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getInvoinceTypes()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jingdong/common/entity/InvoiceInfo;->jbTypes:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hasBook()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/jingdong/common/entity/InvoiceInfo;->hasBook:Z

    return v0
.end method

.method public setInvoiceInfo(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jbInvoiceInfo"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jingdong/common/entity/InvoiceInfo;->jbInvoiceInfo:Lorg/json/JSONObject;

    .line 79
    return-void
.end method

.method public setInvoiceInfo(ZLorg/json/JSONObject;)V
    .locals 0
    .parameter "hasBook"
    .parameter "jbInvoiceInfo"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/jingdong/common/entity/InvoiceInfo;->hasBook:Z

    .line 72
    iput-object p2, p0, Lcom/jingdong/common/entity/InvoiceInfo;->jbInvoiceInfo:Lorg/json/JSONObject;

    .line 73
    return-void
.end method

.method public setInvoiceTitleType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 93
    iput p1, p0, Lcom/jingdong/common/entity/InvoiceInfo;->InvoiceTitleType:I

    .line 94
    return-void
.end method

.method public setInvoiceType(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 61
    iput p1, p0, Lcom/jingdong/common/entity/InvoiceInfo;->COMMON_INCOICE:I

    .line 62
    return-void
.end method

.method public setInvoinceBooks(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jbBook"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jingdong/common/entity/InvoiceInfo;->jbBooks:Lorg/json/JSONObject;

    .line 46
    return-void
.end method

.method public setInvoinceGenerals(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jbGeneral"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jingdong/common/entity/InvoiceInfo;->jbGenerals:Lorg/json/JSONObject;

    .line 54
    return-void
.end method

.method public setInvoinceHeaders(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jbHeader"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jingdong/common/entity/InvoiceInfo;->jbHeaders:Lorg/json/JSONObject;

    .line 38
    return-void
.end method

.method public setInvoinceTypes(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jbType"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jingdong/common/entity/InvoiceInfo;->jbTypes:Lorg/json/JSONObject;

    .line 30
    return-void
.end method
