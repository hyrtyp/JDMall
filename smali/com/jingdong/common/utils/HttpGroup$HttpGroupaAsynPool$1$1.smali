.class Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1$1;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;

.field private final synthetic val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1$1;->this$2:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1;

    iput-object p2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1$1;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool$1$1;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->needConnectionHandler()V

    .line 371
    return-void
.end method
