.class Lcom/jingdong/app/mall/more/SettingActivity$2;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->updateLocation:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$0(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #calls: Lcom/jingdong/app/mall/more/SettingActivity;->showLoadingDialog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$1(Lcom/jingdong/app/mall/more/SettingActivity;)V

    .line 135
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->getInstance()Lcom/jingdong/common/lbs/LocManager;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/more/SettingActivity$2$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/more/SettingActivity$2$1;-><init>(Lcom/jingdong/app/mall/more/SettingActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/lbs/LocManager;->queryInfoByLocation(Lcom/jingdong/common/lbs/LocManager$MyLocationListener;)V

    .line 252
    return v2
.end method
