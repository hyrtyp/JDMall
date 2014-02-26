.class Lcom/jingdong/app/mall/utils/CommonUtil$9;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CommonUtil;->toClient(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

.field private final synthetic val$httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private final synthetic val$tokenKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil;Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9;->val$tokenKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9;->val$httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/CommonUtil$9;)Lcom/jingdong/app/mall/utils/CommonUtil;
    .locals 1
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 18
    .parameter "httpResponse"

    .prologue
    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v15

    const-string v16, "tokenValue"

    invoke-virtual/range {v15 .. v16}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v14

    .line 351
    .local v14, tokenValue:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v14, :cond_0

    .line 352
    const-string v15, "action"

    invoke-virtual {v14, v15}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, action:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 549
    .end local v1           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 357
    .restart local v1       #action:Ljava/lang/String;
    :cond_1
    const-string v15, "pin"

    invoke-virtual {v14, v15}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 358
    .local v10, pin:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v8

    .line 361
    .local v8, oldPin:Ljava/lang/String;
    if-nez v10, :cond_2

    const-string v10, ""

    .line 362
    :cond_2
    if-nez v8, :cond_3

    const-string v8, ""

    .line 363
    :cond_3
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 368
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v7

    .line 370
    .local v7, myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 373
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/jingdong/app/mall/MainFrameActivity;->removeAllRecords(Z)V

    .line 375
    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/jingdong/app/mall/login/LoginActivity;->clearRemember(ZZZ)V

    .line 377
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    const-string v16, "login"

    invoke-interface/range {v15 .. v16}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 378
    const/4 v15, 0x1

    invoke-static {v15}, Lcom/jingdong/common/login/LoginUserBase;->setUserStateOff(Z)V

    .line 380
    invoke-static {}, Lcom/jingdong/common/constant/Constants;->clearOrderInfo()V

    .line 382
    invoke-static {}, Lcom/jingdong/common/service/MessagePullService;->widgetIsRunInBg()Z

    move-result v15

    if-nez v15, :cond_4

    .line 383
    new-instance v13, Landroid/content/Intent;

    const-class v15, Lcom/jingdong/common/service/MessagePullService;

    invoke-direct {v13, v7, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    .local v13, serviceIntent:Landroid/content/Intent;
    const-string v15, "Action_Stop_Message_Service"

    invoke-virtual {v13, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    new-instance v15, Lcom/jingdong/app/mall/utils/CommonUtil$9$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v7, v13}, Lcom/jingdong/app/mall/utils/CommonUtil$9$1;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil$9;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;)V

    invoke-virtual {v7, v15}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 392
    .end local v13           #serviceIntent:Landroid/content/Intent;
    :cond_4
    invoke-static {v7}, Lcom/jingdong/common/utils/UserUtil;->cleanData(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 419
    .end local v7           #myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    :cond_5
    :goto_1
    const-string v15, "thirdLogin"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 423
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 425
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/jingdong/app/mall/MainFrameActivity;->removeAllRecords(Z)V

    .line 427
    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/jingdong/app/mall/login/LoginActivity;->clearRemember(ZZZ)V

    .line 429
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 431
    .local v5, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v15, "pin"

    invoke-virtual {v5, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 435
    :goto_2
    invoke-static {v5}, Lcom/jingdong/common/login/LoginUserBase;->setUserInfo(Lorg/json/JSONObject;)V

    .line 437
    sget v15, Lcom/jingdong/common/constant/Constants;->LOG_IN:I

    invoke-static {v15}, Lcom/jingdong/common/login/LoginUserBase;->setUserState(I)V

    .line 439
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v7

    .line 440
    .restart local v7       #myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    instance-of v15, v7, Lcom/jingdong/app/mall/login/LoginActivity;

    if-eqz v15, :cond_0

    move-object v6, v7

    .line 442
    check-cast v6, Lcom/jingdong/app/mall/login/LoginActivity;

    .line 443
    .local v6, loginActivity:Lcom/jingdong/app/mall/login/LoginActivity;
    new-instance v15, Lcom/jingdong/app/mall/utils/CommonUtil$9$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6}, Lcom/jingdong/app/mall/utils/CommonUtil$9$2;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil$9;Lcom/jingdong/app/mall/login/LoginActivity;)V

    invoke-virtual {v6, v15}, Lcom/jingdong/app/mall/login/LoginActivity;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 397
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .end local v6           #loginActivity:Lcom/jingdong/app/mall/login/LoginActivity;
    :cond_6
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/jingdong/app/mall/MainFrameActivity;->removeAllRecords(Z)V

    .line 399
    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/jingdong/app/mall/login/LoginActivity;->clearRemember(ZZZ)V

    .line 402
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/jingdong/common/utils/PushMessageUtils;->saveBindState(Z)V

    .line 405
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 407
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v15, "pin"

    invoke-virtual {v5, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 411
    :goto_3
    invoke-static {v5}, Lcom/jingdong/common/login/LoginUserBase;->setUserInfo(Lorg/json/JSONObject;)V

    .line 413
    sget v15, Lcom/jingdong/common/constant/Constants;->LOG_IN:I

    invoke-static {v15}, Lcom/jingdong/common/login/LoginUserBase;->setUserState(I)V

    goto :goto_1

    .line 408
    :catch_0
    move-exception v2

    .line 409
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 432
    .end local v2           #e:Lorg/json/JSONException;
    .end local v7           #myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    :catch_1
    move-exception v2

    .line 433
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 450
    .end local v2           #e:Lorg/json/JSONException;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    :cond_7
    const-string v15, "pay"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 454
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v7

    .line 455
    .restart local v7       #myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    instance-of v15, v7, Lcom/jingdong/app/mall/home/NewHomeActivity;

    if-nez v15, :cond_0

    .line 456
    new-instance v4, Landroid/content/Intent;

    const-class v15, Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-direct {v4, v7, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    .local v4, i:Landroid/content/Intent;
    const-string v15, "com.360buy:singleInstanceFlag"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 458
    new-instance v15, Lcom/jingdong/app/mall/utils/CommonUtil$9$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v7, v4}, Lcom/jingdong/app/mall/utils/CommonUtil$9$3;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil$9;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;)V

    invoke-virtual {v7, v15}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 464
    .end local v4           #i:Landroid/content/Intent;
    .end local v7           #myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    :cond_8
    const-string v15, "unionpay"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 470
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jingdong/app/mall/utils/CommonUtil$9;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

    invoke-virtual {v15}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkSDKForPay()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 474
    move-object v11, v10

    .line 475
    .local v11, pinFinal:Ljava/lang/String;
    const-string v15, "orderId"

    invoke-virtual {v14, v15}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 476
    .local v9, orderIdFinal:Ljava/lang/String;
    const-string v15, "plat"

    invoke-virtual {v14, v15}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 478
    .local v12, platFinal:Ljava/lang/String;
    new-instance v3, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 480
    .local v3, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v15, "jdMPay"

    invoke-virtual {v3, v15}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 482
    new-instance v15, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11, v9, v12}, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil$9;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 543
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 544
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jingdong/app/mall/utils/CommonUtil$9;->val$httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v15, v3}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 346
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 341
    const-string v0, "tokenKey"

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9;->val$tokenKey:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    return-void
.end method
