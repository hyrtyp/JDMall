.class Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;
.super Ljava/lang/Object;
.source "ShakeDialogNew.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    .locals 1
    .parameter

    .prologue
    .line 604
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 608
    packed-switch p2, :pswitch_data_0

    .line 628
    :goto_0
    return-void

    .line 610
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 608
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
