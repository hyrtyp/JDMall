.class public Lcom/jingdong/common/utils/NoImageUtils;
.super Ljava/lang/Object;
.source "NoImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initImageView(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 2
    .parameter "myActivity"
    .parameter "imageHttpGroup"
    .parameter "imageView"
    .parameter "url"
    .parameter "isFirst"

    .prologue
    const/4 v1, 0x0

    .line 53
    if-eqz p4, :cond_0

    .line 54
    new-instance v0, Lcom/jingdong/common/utils/NoImageUtils$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jingdong/common/utils/NoImageUtils$1;-><init>(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/jingdong/common/frame/IMyActivity;->addResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V

    .line 63
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/NoImageUtils;->needNoImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lcom/jingdong/common/utils/NoImageUtils$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jingdong/common/utils/NoImageUtils$2;-><init>(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 77
    :goto_0
    invoke-static {v1, p0, p1, p2, p3}, Lcom/jingdong/common/utils/NoImageUtils;->loadImage(ZLcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 79
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 73
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method public static isNeedAlertDialog()Z
    .locals 3

    .prologue
    .line 140
    sget-object v0, Lcom/jingdong/common/res/StringUtil;->no_image_alert_dialog_key:Ljava/lang/String;

    .line 141
    .local v0, key:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static loadImage(ZLcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 5
    .parameter "mustLoad"
    .parameter "myActivity"
    .parameter "imageHttpGroup"
    .parameter "imageView"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 83
    if-nez p0, :cond_1

    invoke-static {}, Lcom/jingdong/common/utils/NoImageUtils;->needNoImage()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 85
    .local v2, useCache:Z
    :goto_0
    new-instance v1, Lcom/jingdong/common/utils/NoImageUtils$3;

    invoke-direct {v1, p1, p3, v2}, Lcom/jingdong/common/utils/NoImageUtils$3;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Z)V

    .line 120
    .local v1, onCommonListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 121
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/16 v4, 0x1388

    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 122
    invoke-virtual {v0, p4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 124
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setCacheMode(I)V

    .line 128
    :cond_0
    invoke-virtual {p2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 130
    return-void

    .line 83
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v1           #onCommonListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    .end local v2           #useCache:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static needNoImage()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 37
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->no_image_switch_key:Ljava/lang/String;

    .line 38
    .local v1, key:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    .local v0, isNeedNoImage:Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->isWifi()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static setIfNeedAlertDialog(Z)V
    .locals 3
    .parameter "isNeedAlertDialog"

    .prologue
    .line 133
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->no_image_alert_dialog_key:Ljava/lang/String;

    .line 135
    .local v1, key:Ljava/lang/String;
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void
.end method

.method public static setIfNeedNoImage(Z)V
    .locals 3
    .parameter "isNeedNoImage"

    .prologue
    .line 45
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->no_image_switch_key:Ljava/lang/String;

    .line 47
    .local v1, key:Ljava/lang/String;
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    return-void
.end method
