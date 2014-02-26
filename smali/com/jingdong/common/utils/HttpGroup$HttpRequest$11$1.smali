.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11$1;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11$1;->this$2:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11;

    iput-object p2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$11$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 709
    return-void
.end method
