.class public Lcom/jingdong/common/utils/DefaultEffectHandle;
.super Ljava/lang/Object;
.source "DefaultEffectHandle.java"


# instance fields
.field private counter:I

.field private defaultEffectHttpListener:Lcom/jingdong/common/utils/DefaultEffectHttpListener;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 2
    .parameter "myActivity"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/jingdong/common/utils/DefaultEffectHttpListener;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;Lcom/jingdong/common/frame/IMyActivity;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHandle;->defaultEffectHttpListener:Lcom/jingdong/common/utils/DefaultEffectHttpListener;

    .line 13
    return-void
.end method


# virtual methods
.method public addModal()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHandle;->defaultEffectHttpListener:Lcom/jingdong/common/utils/DefaultEffectHttpListener;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->onStart()V

    .line 20
    iget v0, p0, Lcom/jingdong/common/utils/DefaultEffectHandle;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jingdong/common/utils/DefaultEffectHandle;->counter:I

    .line 21
    return-void
.end method

.method public removeModal()V
    .locals 2

    .prologue
    .line 27
    :goto_0
    iget v0, p0, Lcom/jingdong/common/utils/DefaultEffectHandle;->counter:I

    if-gtz v0, :cond_0

    .line 31
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHandle;->defaultEffectHttpListener:Lcom/jingdong/common/utils/DefaultEffectHttpListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 29
    iget v0, p0, Lcom/jingdong/common/utils/DefaultEffectHandle;->counter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jingdong/common/utils/DefaultEffectHandle;->counter:I

    goto :goto_0
.end method
