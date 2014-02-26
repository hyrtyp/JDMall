.class Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$1;
.super Lcom/jingdong/common/ui/DialogController;
.source "ShoppingBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$1;->this$1:Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;

    .line 948
    invoke-direct {p0}, Lcom/jingdong/common/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 952
    packed-switch p2, :pswitch_data_0

    .line 957
    :goto_0
    return-void

    .line 954
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 952
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
