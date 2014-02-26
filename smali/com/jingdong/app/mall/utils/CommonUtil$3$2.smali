.class Lcom/jingdong/app/mall/utils/CommonUtil$3$2;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CommonUtil$3;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/CommonUtil$3;

.field private final synthetic val$dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil$3;Lcom/jingdong/app/mall/utils/ui/DialogController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3$2;->this$1:Lcom/jingdong/app/mall/utils/CommonUtil$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3$2;->val$dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3$2;->val$dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->show()V

    .line 182
    return-void
.end method
