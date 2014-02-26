.class Lcom/jingdong/app/mall/utils/CommonUtil$3$1;
.super Lcom/jingdong/app/mall/utils/ui/DialogController;
.source "CommonUtil.java"


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

.field private final synthetic val$xml:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil$3;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3$1;->this$1:Lcom/jingdong/app/mall/utils/CommonUtil$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3$1;->val$xml:Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 164
    packed-switch p2, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3$1;->this$1:Lcom/jingdong/app/mall/utils/CommonUtil$3;

    #getter for: Lcom/jingdong/app/mall/utils/CommonUtil$3;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/CommonUtil$3;->access$0(Lcom/jingdong/app/mall/utils/CommonUtil$3;)Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3$1;->val$xml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->doPay(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
