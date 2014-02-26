.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;
.super Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;
.source "HttpGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->alertAttestationWIFIDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private state:I

.field final synthetic this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 757
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 757
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 763
    packed-switch p2, :pswitch_data_0

    .line 804
    :goto_0
    return-void

    .line 765
    :pswitch_0
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->state:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 771
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->state:I

    .line 772
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12$1;

    invoke-direct {v1, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12$1;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 793
    :pswitch_2
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->actionRetry()V

    goto :goto_0

    .line 801
    :pswitch_3
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->actionCancel()V

    goto :goto_0

    .line 763
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 765
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
