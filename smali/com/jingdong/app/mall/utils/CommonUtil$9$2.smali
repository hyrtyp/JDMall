.class Lcom/jingdong/app/mall/utils/CommonUtil$9$2;
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

.field private final synthetic val$loginActivity:Lcom/jingdong/app/mall/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil$9;Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$2;->this$1:Lcom/jingdong/app/mall/utils/CommonUtil$9;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$2;->val$loginActivity:Lcom/jingdong/app/mall/login/LoginActivity;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$2;->val$loginActivity:Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->afterSuccess(Lcom/jingdong/app/mall/utils/MyActivity;)V

    .line 446
    return-void
.end method
