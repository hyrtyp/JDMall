.class Lcom/jingdong/app/mall/signin/SignActivity$4$2;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 353
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity$4;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninInfo;->getIsSucc()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, isSucc:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity$4;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SigninInfo;->getClearText()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, clearText:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 356
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity$4;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->toastshort(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$16(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity$4;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/SigninInfo;->setSustainedNumTimes(Ljava/lang/String;)V

    .line 362
    :cond_0
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity$4;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/SigninInfo;->setSustainedNumTimes(Ljava/lang/String;)V

    .line 366
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity$4;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->updateQianDaoBtn()V
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity;->access$17(Lcom/jingdong/app/mall/signin/SignActivity;)V

    .line 367
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity$4;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->updateTimes()V
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity;->access$18(Lcom/jingdong/app/mall/signin/SignActivity;)V

    .line 368
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$4$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$4;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity$4;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->updateShouyeTV()V
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity;->access$19(Lcom/jingdong/app/mall/signin/SignActivity;)V

    .line 369
    return-void
.end method
