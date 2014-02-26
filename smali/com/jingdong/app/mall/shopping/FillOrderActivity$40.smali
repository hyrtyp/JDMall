.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$40;
.super Lcom/jingdong/app/mall/utils/ui/DialogController;
.source "FillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->showExplainPayPasswordDialog(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$40;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 7002
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 7007
    packed-switch p2, :pswitch_data_0

    .line 7016
    :goto_0
    return-void

    .line 7009
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 7007
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
    .end packed-switch
.end method
