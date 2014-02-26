.class Lcom/jingdong/app/mall/utils/CommonUtil$9$3;
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

.field private final synthetic val$i:Landroid/content/Intent;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil$9;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$3;->this$1:Lcom/jingdong/app/mall/utils/CommonUtil$9;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$3;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$3;->val$i:Landroid/content/Intent;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$3;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$3;->val$i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 461
    return-void
.end method
