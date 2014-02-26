.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$10;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->notifyUser(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

.field private final synthetic val$httpDialogController:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$10;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iput-object p2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$10;->val$httpDialogController:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$10;->val$httpDialogController:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->show()V

    .line 632
    return-void
.end method
