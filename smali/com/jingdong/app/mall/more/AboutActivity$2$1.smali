.class Lcom/jingdong/app/mall/more/AboutActivity$2$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/AboutActivity$2;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/AboutActivity$2;

.field private final synthetic val$productCopyRight:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/AboutActivity$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/AboutActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/AboutActivity$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/AboutActivity$2$1;->val$productCopyRight:Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jingdong/app/mall/more/AboutActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/AboutActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/AboutActivity$2;->this$0:Lcom/jingdong/app/mall/more/AboutActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/AboutActivity$2;->access$0(Lcom/jingdong/app/mall/more/AboutActivity$2;)Lcom/jingdong/app/mall/more/AboutActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/AboutActivity;->copyRightView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/AboutActivity;->access$0(Lcom/jingdong/app/mall/more/AboutActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/more/AboutActivity$2$1;->val$productCopyRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method
