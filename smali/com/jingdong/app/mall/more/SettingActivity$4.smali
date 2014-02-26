.class Lcom/jingdong/app/mall/more/SettingActivity$4;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/more/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SettingActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/SettingActivity$4;)Lcom/jingdong/app/mall/more/SettingActivity;
    .locals 1
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$7(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/DialogController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    new-instance v1, Lcom/jingdong/app/mall/more/SettingActivity$4$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/more/SettingActivity$4$1;-><init>(Lcom/jingdong/app/mall/more/SettingActivity$4;)V

    #setter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/more/SettingActivity;->access$11(Lcom/jingdong/app/mall/more/SettingActivity;Lcom/jingdong/app/mall/utils/ui/DialogController;)V

    .line 318
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$7(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/DialogController;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    const v3, 0x7f0703bb

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\uff08\u65f6\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$7(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/DialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    const v2, 0x7f07014d

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$7(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/DialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    const v2, 0x7f0701a1

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$7(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/DialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeContentView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SettingActivity;->access$12(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$7(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/DialogController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setCanBack(Z)V

    .line 323
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$7(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/DialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$7(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/DialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->show()V

    .line 326
    const/4 v0, 0x0

    return v0
.end method
