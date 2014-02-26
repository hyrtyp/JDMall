.class Lcom/jingdong/app/mall/shake/ShakeActivity$10$1;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity$10;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$10;

.field private final synthetic val$errorComment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity$10;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$10;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10$1;->val$errorComment:Ljava/lang/String;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$10;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->access$0(Lcom/jingdong/app/mall/shake/ShakeActivity$10;)Lcom/jingdong/app/mall/shake/ShakeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10$1;->val$errorComment:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->showCustomDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$41(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 490
    return-void
.end method
