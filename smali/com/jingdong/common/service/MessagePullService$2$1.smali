.class Lcom/jingdong/common/service/MessagePullService$2$1;
.super Ljava/lang/Object;
.source "MessagePullService.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/service/MessagePullService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/service/MessagePullService$2;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/common/service/MessagePullService$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/service/MessagePullService$2$1;->this$1:Lcom/jingdong/common/service/MessagePullService$2;

    iput-object p2, p0, Lcom/jingdong/common/service/MessagePullService$2$1;->val$url:Ljava/lang/String;

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    const/4 v2, 0x0

    .line 718
    iget-object v0, p0, Lcom/jingdong/common/service/MessagePullService$2$1;->val$url:Ljava/lang/String;

    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/cache/WidgetImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 719
    return-void
.end method
