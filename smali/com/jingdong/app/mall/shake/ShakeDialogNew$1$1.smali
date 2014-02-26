.class Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;
.super Ljava/lang/Object;
.source "ShakeDialogNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;
    .locals 1
    .parameter

    .prologue
    .line 610
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 612
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;)V

    .line 620
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    .line 621
    return-void
.end method
