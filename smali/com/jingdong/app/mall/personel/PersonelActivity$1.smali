.class Lcom/jingdong/app/mall/personel/PersonelActivity$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 548
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->notLoginLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->logoutBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$1(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->loginInfoLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$2(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->oldPin:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$3(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->oldPin:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$3(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mUserClass:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$4(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mScore:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$5(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->guessProductlist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$6(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->guessLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$7(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->guessProductlist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$6(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->oldPin:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$8(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$9(Lcom/jingdong/app/mall/personel/PersonelActivity;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getFirstUploadSucess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->setDefaultUserPhoto()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$10(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->getScankey()Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$11(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->scankey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$12(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->useLoginForMeeting:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$13(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/jingdong/app/mall/personel/PersonelActivity;->annual_switch:Z

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->startAmAnimation()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$14(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 574
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->queryAnnualInfo()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$15(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->queryNewUserInfo()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$16(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 580
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->guessProductlist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$6(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->guessProductlist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$6(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 584
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->guessProductlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$6(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->setRecomandList(Ljava/util/ArrayList;I)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$17(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/util/ArrayList;I)V

    .line 595
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->loadUnreadMessage()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$19(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 597
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->drawerUseable:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$20(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->getOneMonthOrder()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$21(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 600
    :cond_3
    return-void

    .line 589
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->getRecomandProduct()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$18(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    goto :goto_0
.end method
