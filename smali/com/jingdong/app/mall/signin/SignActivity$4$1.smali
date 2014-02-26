.class Lcom/jingdong/app/mall/signin/SignActivity$4$1;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity$4;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity$4;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->totalNum:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$9(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity$4;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SigninInfo;->getTotalNumTimes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity$4;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->prepareToLogin()V
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$11(Lcom/jingdong/app/mall/signin/SignActivity;)V

    .line 337
    return-void
.end method
