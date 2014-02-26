.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$38$1;
.super Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;
.source "FillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$38;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$38;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$38;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$38$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$38;

    .line 6533
    invoke-direct {p0, p2, p3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected submit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "captchaUrl"
    .parameter "message"

    .prologue
    .line 6536
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$38$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$38;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$38;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$38;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$38;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submitOrder(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$63(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 6537
    return-void
.end method
