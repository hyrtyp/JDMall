.class Lcom/jingdong/app/mall/signin/SignActivity$8$2;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity$8;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/signin/SignActivity$8;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$8$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$8;

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$8$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$8;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity$8;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$8;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$8$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$8;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity$8;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$8;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->radomCodeErrorText:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity;->access$34(Lcom/jingdong/app/mall/signin/SignActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->toastshort(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/signin/SignActivity;->access$16(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$8$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$8;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity$8;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$8;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->httpVerifyImage()V
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$31(Lcom/jingdong/app/mall/signin/SignActivity;)V

    .line 721
    return-void
.end method
