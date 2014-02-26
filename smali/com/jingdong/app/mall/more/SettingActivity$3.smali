.class Lcom/jingdong/app/mall/more/SettingActivity$3;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$3;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$3;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    const-class v2, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$3;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/more/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 262
    const/4 v1, 0x0

    return v1
.end method
