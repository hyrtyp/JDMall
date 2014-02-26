.class public Lcom/jingdong/common/utils/HttpGroup$HttpGroupSync;
.super Lcom/jingdong/common/utils/HttpGroup;
.source "HttpGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpGroupSync"
.end annotation


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/HttpGroup;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    .line 326
    return-void
.end method


# virtual methods
.method public execute(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter "httpRequest"

    .prologue
    .line 337
    return-void
.end method
