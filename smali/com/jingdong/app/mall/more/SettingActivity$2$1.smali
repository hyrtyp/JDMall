.class Lcom/jingdong/app/mall/more/SettingActivity$2$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/jingdong/common/lbs/LocManager$MyLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SettingActivity$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SettingActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/SettingActivity$2$1;)Lcom/jingdong/app/mall/more/SettingActivity$2;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    return-object v0
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/lbs/ProductInfoUtil;Ljava/lang/String;)V
    .locals 9
    .parameter "productInfoUtil"
    .parameter "msg"

    .prologue
    const v8, 0x7f0701a9

    const v7, 0x7f07014d

    const/4 v6, 0x1

    .line 142
    if-eqz p1, :cond_0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v4

    const v5, 0x7f07042d

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getProviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 155
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getDistrictName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, locationMsg:Ljava/lang/String;
    sput-boolean v6, Lcom/jingdong/common/lbs/LocManager;->isLocateSuccess:Z

    .line 157
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getProviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    .line 158
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getProviceName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/jingdong/common/lbs/LocManager;->provinceName:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getCityId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/jingdong/common/lbs/LocManager;->cityId:I

    .line 160
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getCityName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/jingdong/common/lbs/LocManager;->cityName:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getDistrictId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/jingdong/common/lbs/LocManager;->districtId:I

    .line 162
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getDistrictName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/jingdong/common/lbs/LocManager;->districtName:Ljava/lang/String;

    .line 165
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getProviceId()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/more/SettingActivity;->setProvinceIDToSharedPreferences(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/more/SettingActivity;->access$2(Lcom/jingdong/app/mall/more/SettingActivity;Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getProviceName()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/more/SettingActivity;->setProvinceNameToSharedPreferences(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/more/SettingActivity;->access$3(Lcom/jingdong/app/mall/more/SettingActivity;Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->settings:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity;->access$4(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 169
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "PROVINCE_ID_MODE_1"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v3, "CITY_ID_MODE_1"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    new-instance v0, Lcom/jingdong/app/mall/more/SettingActivity$2$1$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/SettingActivity$2$1$1;-><init>(Lcom/jingdong/app/mall/more/SettingActivity$2$1;)V

    .line 188
    .local v0, dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v0, v6}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setCanBack(Z)V

    .line 192
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 193
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/jingdong/app/mall/more/SettingActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/jingdong/app/mall/more/SettingActivity$2$1$2;

    invoke-direct {v4, p0, v0}, Lcom/jingdong/app/mall/more/SettingActivity$2$1$2;-><init>(Lcom/jingdong/app/mall/more/SettingActivity$2$1;Lcom/jingdong/app/mall/utils/ui/DialogController;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #locationMsg:Ljava/lang/String;
    :goto_0
    return-void

    .line 209
    .end local v0           #dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    :cond_0
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->getInstance()Lcom/jingdong/common/lbs/LocManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/lbs/LocManager;->removeUpdateLocation()V

    .line 210
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/jingdong/app/mall/more/SettingActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/jingdong/app/mall/more/SettingActivity$2$1$3;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/more/SettingActivity$2$1$3;-><init>(Lcom/jingdong/app/mall/more/SettingActivity$2$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    new-instance v0, Lcom/jingdong/app/mall/more/SettingActivity$2$1$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/SettingActivity$2$1$4;-><init>(Lcom/jingdong/app/mall/more/SettingActivity$2$1;)V

    .line 232
    .restart local v0       #dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {v0, p2}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v0, v6}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setCanBack(Z)V

    .line 235
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 237
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/jingdong/app/mall/more/SettingActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/jingdong/app/mall/more/SettingActivity$2$1$5;

    invoke-direct {v4, p0, v0}, Lcom/jingdong/app/mall/more/SettingActivity$2$1$5;-><init>(Lcom/jingdong/app/mall/more/SettingActivity$2$1;Lcom/jingdong/app/mall/utils/ui/DialogController;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
