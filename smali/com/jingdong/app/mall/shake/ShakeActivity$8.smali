.class Lcom/jingdong/app/mall/shake/ShakeActivity$8;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;->optionsViewVisible(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

.field private final synthetic val$visible:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$8;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iput p2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$8;->val$visible:I

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$8;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$36(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$8;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$36(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$8;->val$visible:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 374
    :cond_0
    return-void
.end method
