.class Lcom/jingdong/app/mall/utils/CommonUtil$6;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$needCleanHistory:Z


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil;Lcom/jingdong/common/frame/IMyActivity;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iput-boolean p3, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6;->val$needCleanHistory:Z

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v1, Lcom/jingdong/app/mall/utils/CommonUtil$6$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-boolean v3, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6;->val$needCleanHistory:Z

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/jingdong/app/mall/utils/CommonUtil$6$1;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil$6;Lcom/jingdong/common/frame/IMyActivity;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method
