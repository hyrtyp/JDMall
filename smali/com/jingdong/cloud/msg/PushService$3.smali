.class Lcom/jingdong/cloud/msg/PushService$3;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/jingdong/cloud/msg/PushService$LoginSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/cloud/msg/PushService;->removeTag(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/cloud/msg/PushService;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$tags:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/cloud/msg/PushService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/cloud/msg/PushService$3;->this$0:Lcom/jingdong/cloud/msg/PushService;

    iput-object p2, p0, Lcom/jingdong/cloud/msg/PushService$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/jingdong/cloud/msg/PushService$3;->val$tags:Ljava/lang/String;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginSuccess()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/jingdong/cloud/msg/PushService$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jingdong/cloud/msg/PushService$3;->val$tags:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->removeTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method
