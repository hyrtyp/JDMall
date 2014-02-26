.class Lcom/jingdong/app/mall/more/SettingActivity$1;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$1;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/SettingActivity$1;)Lcom/jingdong/app/mall/more/SettingActivity;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$1;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 98
    new-instance v0, Lcom/jingdong/app/mall/more/SettingActivity$1$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/SettingActivity$1$1;-><init>(Lcom/jingdong/app/mall/more/SettingActivity$1;)V

    .line 114
    .local v0, dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$1;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    const v2, 0x7f0701a9

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$1;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    const v2, 0x7f0703a9

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$1;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    const v2, 0x7f07014d

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$1;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    const v2, 0x7f0701a1

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$1;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->show()V

    .line 120
    const/4 v1, 0x0

    return v1
.end method
