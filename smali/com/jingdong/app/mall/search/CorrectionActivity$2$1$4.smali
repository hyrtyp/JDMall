.class Lcom/jingdong/app/mall/search/CorrectionActivity$2$1$4;
.super Ljava/lang/Object;
.source "CorrectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2$1$4;->this$2:Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2$1$4;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2$1$4;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 178
    return-void
.end method
