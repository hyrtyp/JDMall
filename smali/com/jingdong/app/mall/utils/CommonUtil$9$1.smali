.class Lcom/jingdong/app/mall/utils/CommonUtil$9$1;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CommonUtil$9;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/CommonUtil$9;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$serviceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil$9;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$1;->this$1:Lcom/jingdong/app/mall/utils/CommonUtil$9;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$1;->val$serviceIntent:Landroid/content/Intent;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$1;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 388
    return-void
.end method
