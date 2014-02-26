.class Lcom/jingdong/common/utils/BitmapkitUtils$2;
.super Ljava/lang/Object;
.source "BitmapkitUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/BitmapkitUtils;->alertLoadlibFailedDialog(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/BitmapkitUtils;

.field private final synthetic val$httpDialogController:Lcom/jingdong/common/ui/DialogController;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/BitmapkitUtils;Lcom/jingdong/common/ui/DialogController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/BitmapkitUtils$2;->this$0:Lcom/jingdong/common/utils/BitmapkitUtils;

    iput-object p2, p0, Lcom/jingdong/common/utils/BitmapkitUtils$2;->val$httpDialogController:Lcom/jingdong/common/ui/DialogController;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/common/utils/BitmapkitUtils$2;->val$httpDialogController:Lcom/jingdong/common/ui/DialogController;

    invoke-virtual {v0}, Lcom/jingdong/common/ui/DialogController;->show()V

    .line 78
    return-void
.end method
