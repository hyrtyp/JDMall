.class Lcom/jingdong/app/mall/MainFrameActivity$6;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->freshNewStartImageByHttp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainFrameActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$6;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/MainFrameActivity$6;)Lcom/jingdong/app/mall/MainFrameActivity;
    .locals 1
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity$6;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 14
    .parameter "httpResponse"

    .prologue
    .line 585
    const/4 v12, 0x4

    invoke-static {v12}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v2

    .line 586
    .local v2, dir1:Lcom/jingdong/common/utils/FileService$Directory;
    const-string v5, "startimage.image"

    .line 588
    .local v5, filename1:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v11

    .line 598
    .local v11, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 600
    .local v0, dataHasException:Ljava/lang/Boolean;
    :try_start_0
    const-string v12, "images"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v10

    .line 602
    .local v10, imagesArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 603
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    .line 604
    .local v6, firstImageInfo:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v12, p0, Lcom/jingdong/app/mall/MainFrameActivity$6;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    const-string v13, "url"

    invoke-virtual {v6, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/jingdong/app/mall/MainFrameActivity;->mStartImageUrl:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/jingdong/app/mall/MainFrameActivity;->access$4(Lcom/jingdong/app/mall/MainFrameActivity;Ljava/lang/String;)V

    .line 605
    iget-object v12, p0, Lcom/jingdong/app/mall/MainFrameActivity$6;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    const-string v13, "onlineTime"

    invoke-virtual {v6, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/jingdong/app/mall/MainFrameActivity;->mStartTime:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/jingdong/app/mall/MainFrameActivity;->access$5(Lcom/jingdong/app/mall/MainFrameActivity;Ljava/lang/String;)V

    .line 606
    iget-object v12, p0, Lcom/jingdong/app/mall/MainFrameActivity$6;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    const-string v13, "referralsTime"

    invoke-virtual {v6, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/jingdong/app/mall/MainFrameActivity;->mEndTime:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/jingdong/app/mall/MainFrameActivity;->access$6(Lcom/jingdong/app/mall/MainFrameActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v6           #firstImageInfo:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v10           #imagesArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 706
    :goto_1
    return-void

    .line 608
    .restart local v10       #imagesArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 609
    .local v1, defaultPreference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 610
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v12, "imageurl"

    const-string v13, ""

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 611
    const-string v12, "imagepath"

    const-string v13, ""

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 612
    const-string v12, "beginTime"

    const-string v13, ""

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 613
    const-string v12, "endTime"

    const-string v13, ""

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 614
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 619
    .end local v1           #defaultPreference:Landroid/content/SharedPreferences;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v10           #imagesArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :catch_0
    move-exception v3

    .line 620
    .local v3, e:Lorg/json/JSONException;
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 641
    .end local v3           #e:Lorg/json/JSONException;
    :cond_1
    new-instance v8, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v8}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 642
    .local v8, httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    const/16 v12, 0x1388

    invoke-virtual {v8, v12}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 643
    new-instance v7, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v7, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    .line 644
    .local v7, httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    new-instance v9, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v9}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 645
    .local v9, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 646
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 647
    iget-object v12, p0, Lcom/jingdong/app/mall/MainFrameActivity$6;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity;->mStartImageUrl:Ljava/lang/String;
    invoke-static {v12}, Lcom/jingdong/app/mall/MainFrameActivity;->access$7(Lcom/jingdong/app/mall/MainFrameActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 649
    new-instance v12, Lcom/jingdong/app/mall/MainFrameActivity$6$1;

    invoke-direct {v12, p0, v2}, Lcom/jingdong/app/mall/MainFrameActivity$6$1;-><init>(Lcom/jingdong/app/mall/MainFrameActivity$6;Lcom/jingdong/common/utils/FileService$Directory;)V

    invoke-virtual {v9, v12}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 704
    invoke-virtual {v7, v9}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 713
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 581
    return-void
.end method
