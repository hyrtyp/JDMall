.class Lcom/jingdong/app/mall/utils/CommonUtil$2;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CommonUtil;->checkSDKForPay()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

.field private final synthetic val$dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil;Lcom/jingdong/app/mall/utils/ui/DialogController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$2;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$2;->val$dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$2;->val$dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->show()V

    .line 109
    return-void
.end method
