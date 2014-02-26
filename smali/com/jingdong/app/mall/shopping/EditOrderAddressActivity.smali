.class public Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "EditOrderAddressActivity.java"


# static fields
.field public static final INTENT_EXTAS_PAGE_TYPE:Ljava/lang/String; = "PageType"

.field public static final INTENT_EXTAS_USER_ADDRESS:Ljava/lang/String; = "UserAddress"

.field public static final PAGE_TYPE_EDIT_CURRENT_ADDRESS:I = 0x4

.field public static final PAGE_TYPE_EDIT_CURRENT_ADDRESS_AND_NEW:I = 0x5

.field public static final PAGE_TYPE_NEW:I = 0x1

.field public static final PAGE_TYPE_SAVE:I = 0x2

.field public static final PAGE_TYPE_SAVE_AS:I = 0x3


# instance fields
.field private final LoadingText:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field addParams:Lorg/json/JSONObject;

.field currAreaId:I

.field currCityId:I

.field currProvinceId:I

.field currSelectUsedAddress:I

.field currTownsId:I

.field private isAreaLoading:Z

.field private isCityLoading:Z

.field private isFristLoading:Z

.field private isLoadingUsedAddress:Z

.field private isTownLoading:Z

.field items:[Ljava/lang/String;

.field jbCartStr:Lorg/json/JSONObject;

.field jdAreas:Lorg/json/JSONObject;

.field jdCitys:Lorg/json/JSONObject;

.field jdCommAddrUsed:Lorg/json/JSONArray;

.field jdProvinces:Lorg/json/JSONObject;

.field jdTowns:Lorg/json/JSONObject;

.field private lastToken:J

.field mAddrListGroup:Landroid/widget/RadioGroup;

.field mArea:Landroid/widget/TextView;

.field mArea2:Landroid/widget/ImageButton;

.field mCity:Landroid/widget/TextView;

.field mCity2:Landroid/widget/ImageButton;

.field mConfirmAddr:Landroid/widget/Button;

.field mMail:Landroid/widget/EditText;

.field mMobile:Landroid/widget/EditText;

.field mPCA:Landroid/widget/TextView;

.field private mPCAString:Ljava/lang/String;

.field mProvince:Landroid/widget/TextView;

.field mProvince2:Landroid/widget/ImageButton;

.field mSelectAreaPosition:I

.field mSelectCityPosition:I

.field mSelectProvincePosition:I

.field mSelectTownsPosition:I

.field mTitle:Landroid/widget/TextView;

.field mTown:Landroid/widget/TextView;

.field mTown2:Landroid/widget/ImageButton;

.field mUserName:Landroid/widget/EditText;

.field mWhere:Landroid/widget/EditText;

.field mZip:Landroid/widget/EditText;

.field private pageType:I

.field private sAddressDetail:Ljava/lang/String;

.field private sArea:Ljava/lang/String;

.field private sCity:Ljava/lang/String;

.field private sMail:Ljava/lang/String;

.field private sMobile:Ljava/lang/String;

.field private sProvince:Ljava/lang/String;

.field private sUserName:Ljava/lang/String;

.field private sWhere:Ljava/lang/String;

.field private sZip:Ljava/lang/String;

.field private succeedToastMsg:Ljava/lang/String;

.field private usedAddresswhere:Ljava/lang/String;

.field private userAddress:Lcom/jingdong/common/entity/UserAddress;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 51
    const-string v0, "EditOrderAddressActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isLoadingUsedAddress:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->usedAddresswhere:Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currSelectUsedAddress:I

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isFristLoading:Z

    .line 79
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isCityLoading:Z

    .line 80
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isAreaLoading:Z

    .line 81
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isTownLoading:Z

    .line 83
    const-string v0, "\u6b63\u5728\u52a0\u8f7d..."

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->LoadingText:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getAddrViewText()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->verificationInputData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 661
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getArea(IJ)V

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getCity(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 803
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->handleData(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isLoadingUsedAddress:Z

    return v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->usedAddresswhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isFristLoading:Z

    return v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isFristLoading:Z

    return-void
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Lcom/jingdong/common/entity/UserAddress;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isLoadingUsedAddress:Z

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isTownLoading:Z

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1257
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->submitEvent()V

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isAreaLoading:Z

    return-void
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isCityLoading:Z

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->createProvinceAlertDiglog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->createCityAlertDiglog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->createAreaAlertDiglog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->createTownAlertDiglog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 716
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getTowns(IJ)V

    return-void
.end method

.method private createAreaAlertDiglog(Ljava/lang/String;)V
    .locals 6
    .parameter "title"

    .prologue
    .line 392
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdAreas:Lorg/json/JSONObject;

    const-string v4, "Areas"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 393
    .local v2, jbProv:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    .line 394
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 402
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 405
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    iget v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mSelectAreaPosition:I

    new-instance v5, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;

    invoke-direct {v5, p0, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 438
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 444
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v1           #i:I
    .end local v2           #jbProv:Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 395
    .restart local v1       #i:I
    .restart local v2       #jbProv:Lorg/json/JSONArray;
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 397
    iget v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currAreaId:I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 398
    iput v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mSelectAreaPosition:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v1           #i:I
    .end local v2           #jbProv:Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private createCityAlertDiglog(Ljava/lang/String;)V
    .locals 7
    .parameter "title"

    .prologue
    .line 448
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdCitys:Lorg/json/JSONObject;

    const-string v5, "Areas"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 449
    .local v3, jbProv:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    .line 450
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 458
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 460
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 461
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    iget v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mSelectCityPosition:I

    new-instance v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;

    invoke-direct {v6, p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 484
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 489
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v2           #i:I
    .end local v3           #jbProv:Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 451
    .restart local v2       #i:I
    .restart local v3       #jbProv:Lorg/json/JSONArray;
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 453
    iget v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currCityId:I

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 454
    iput v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mSelectCityPosition:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    .end local v2           #i:I
    .end local v3           #jbProv:Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 487
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private createProvinceAlertDiglog(Ljava/lang/String;)V
    .locals 6
    .parameter "title"

    .prologue
    .line 494
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdProvinces:Lorg/json/JSONObject;

    if-nez v3, :cond_0

    .line 552
    :goto_0
    return-void

    .line 499
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdProvinces:Lorg/json/JSONObject;

    const-string v4, "Areas"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 500
    .local v2, jbProv:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    .line 502
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 509
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 510
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 512
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    iget v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mSelectProvincePosition:I

    new-instance v5, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$6;

    invoke-direct {v5, p0, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 545
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 546
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v1           #i:I
    .end local v2           #jbProv:Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 503
    .restart local v1       #i:I
    .restart local v2       #jbProv:Lorg/json/JSONArray;
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 504
    iget v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currProvinceId:I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 505
    iput v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mSelectProvincePosition:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private createTownAlertDiglog(Ljava/lang/String;)V
    .locals 6
    .parameter "title"

    .prologue
    .line 348
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdTowns:Lorg/json/JSONObject;

    const-string v4, "Areas"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 349
    .local v2, jbProv:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    .line 350
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 358
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 361
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    iget v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mSelectTownsPosition:I

    new-instance v5, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 381
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 388
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v1           #i:I
    .end local v2           #jbProv:Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 351
    .restart local v1       #i:I
    .restart local v2       #jbProv:Lorg/json/JSONArray;
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->items:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 353
    iget v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 354
    iput v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mSelectTownsPosition:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v1           #i:I
    .end local v2           #jbProv:Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private getAddrViewText()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sUserName:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sMobile:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sProvince:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sCity:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sArea:Ljava/lang/String;

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mPCA:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mWhere:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sWhere:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mWhere:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sAddressDetail:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mZip:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sZip:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mMail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sMail:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mWhere:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mPCAString:Ljava/lang/String;

    .line 246
    return-void
.end method

.method private getArea(IJ)V
    .locals 7
    .parameter "city_code"
    .parameter "token"

    .prologue
    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isAreaLoading:Z

    .line 669
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$9;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$9;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->post(Ljava/lang/Runnable;)V

    .line 686
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 688
    .local v2, params:Lorg/json/JSONObject;
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 689
    const-string v0, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "pin"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    :cond_0
    const-string v0, "action"

    const-string v1, "GetAreas"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    const-string v0, "IdCity"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v0, :cond_2

    .line 695
    :cond_1
    const-string v1, "easyBuyOrderAddress"

    const-string v3, "GetAreas"

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 714
    .end local v2           #params:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 707
    .restart local v2       #params:Lorg/json/JSONObject;
    :cond_2
    const-string v1, "orderAddress"

    const-string v3, "GetAreas"

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    .end local v2           #params:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 711
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getAreaCode(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    .line 1402
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1403
    .local v1, jbProv:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 1405
    .local v0, code:I
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdAreas:Lorg/json/JSONObject;

    const-string v4, "Areas"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1412
    :goto_0
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 1425
    :goto_2
    return v0

    .line 1414
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1415
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_2

    .line 1418
    :catch_0
    move-exception v3

    .line 1412
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1406
    .end local v2           #n:I
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private getCartItemInfo()V
    .locals 6

    .prologue
    .line 1385
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v3, :cond_1

    .line 1386
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1387
    .local v1, sku:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1389
    .local v2, temp:Lorg/json/JSONArray;
    :try_start_0
    const-string v3, "Id"

    sget-wide v4, Lcom/jingdong/common/constant/Constants;->easyBuyProdId:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1390
    const-string v3, "num"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1391
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1392
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v4, "TheSkus"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    .end local v1           #sku:Lorg/json/JSONObject;
    .end local v2           #temp:Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 1393
    .restart local v1       #sku:Lorg/json/JSONObject;
    .restart local v2       #temp:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 1394
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1396
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #sku:Lorg/json/JSONObject;
    .end local v2           #temp:Lorg/json/JSONArray;
    :cond_1
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    if-eqz v3, :cond_0

    .line 1397
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->toCheckedCartStr()Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jbCartStr:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private getCity(I)V
    .locals 7
    .parameter "province_code"

    .prologue
    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isCityLoading:Z

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J

    .line 613
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$8;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->post(Ljava/lang/Runnable;)V

    .line 631
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 632
    .local v2, params:Lorg/json/JSONObject;
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 633
    const-string v0, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "pin"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    :cond_0
    const-string v0, "action"

    const-string v1, "GetCitys"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    const-string v0, "IdProvince"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v0, :cond_2

    .line 638
    :cond_1
    const-string v1, "easyBuyOrderAddress"

    const-string v3, "GetCitys"

    iget-wide v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 659
    .end local v2           #params:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 651
    .restart local v2       #params:Lorg/json/JSONObject;
    :cond_2
    const-string v1, "orderAddress"

    const-string v3, "GetCitys"

    iget-wide v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 655
    .end local v2           #params:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 656
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCityCode(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    .line 1429
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1430
    .local v1, jbProv:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 1432
    .local v0, code:I
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdCitys:Lorg/json/JSONObject;

    const-string v4, "Areas"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1439
    :goto_0
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 1452
    :goto_2
    return v0

    .line 1441
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1442
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_2

    .line 1445
    :catch_0
    move-exception v3

    .line 1439
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1433
    .end local v2           #n:I
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private getProvices()V
    .locals 7

    .prologue
    .line 556
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$7;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->post(Ljava/lang/Runnable;)V

    .line 577
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 578
    .local v2, params:Lorg/json/JSONObject;
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 579
    const-string v0, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "pin"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    :cond_0
    const-string v0, "action"

    const-string v1, "GetProvinces"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v0, :cond_2

    .line 584
    :cond_1
    const-string v1, "easyBuyOrderAddress"

    const-string v3, "GetProvinces"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 603
    .end local v2           #params:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 596
    .restart local v2       #params:Lorg/json/JSONObject;
    :cond_2
    const-string v1, "orderAddress"

    const-string v3, "GetProvinces"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    .end local v2           #params:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 600
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getProvinceCode(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    .line 1456
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1457
    .local v1, jbProv:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 1459
    .local v0, code:I
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdProvinces:Lorg/json/JSONObject;

    const-string v4, "Areas"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1466
    :goto_0
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 1479
    :goto_2
    return v0

    .line 1468
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1469
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_2

    .line 1472
    :catch_0
    move-exception v3

    .line 1466
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1460
    .end local v2           #n:I
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private getTowns(IJ)V
    .locals 7
    .parameter "area_code"
    .parameter "token"

    .prologue
    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isTownLoading:Z

    .line 721
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 723
    .local v2, params:Lorg/json/JSONObject;
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 724
    const-string v0, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "pin"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    :cond_0
    const-string v0, "action"

    const-string v1, "GetTowns"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    const-string v0, "IdArea"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v0, :cond_2

    .line 730
    :cond_1
    const-string v1, "easyBuyOrderAddress"

    const-string v3, "GetTowns"

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 748
    .end local v2           #params:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 742
    .restart local v2       #params:Lorg/json/JSONObject;
    :cond_2
    const-string v1, "orderAddress"

    const-string v3, "GetTowns"

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    .end local v2           #params:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 746
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleClickEvent()V
    .locals 3

    .prologue
    .line 250
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)V

    .line 274
    .local v0, confirmClick:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mConfirmAddr:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    new-instance v1, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)V

    .line 293
    .local v1, onclickBut:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince2:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity2:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea2:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    return-void
.end method

.method private handleData(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;J)V
    .locals 5
    .parameter "httpResponse"
    .parameter "action"
    .parameter "token"

    .prologue
    .line 805
    const-string v3, "GetProvinces"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 807
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "provinceInfo"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdProvinces:Lorg/json/JSONObject;

    .line 813
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdProvinces:Lorg/json/JSONObject;

    const-string v4, "Areas"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateProvincesView(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 815
    :catch_0
    move-exception v2

    .line 816
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 819
    .end local v2           #e:Lorg/json/JSONException;
    :cond_1
    const-string v3, "GetCitys"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 820
    iget-wide v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J

    cmp-long v3, v3, p3

    if-nez v3, :cond_0

    .line 825
    :try_start_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "provinceInfo"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdCitys:Lorg/json/JSONObject;

    .line 830
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdCitys:Lorg/json/JSONObject;

    const-string v4, "Areas"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 831
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdCitys:Lorg/json/JSONObject;

    const-string v4, "Areas"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 832
    .local v1, array:Lorg/json/JSONArray;
    invoke-direct {p0, v1, p3, p4}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateCityView(Lorg/json/JSONArray;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 837
    .end local v1           #array:Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    .line 838
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 834
    .end local v2           #e:Lorg/json/JSONException;
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, v3, p3, p4}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateCityView(Lorg/json/JSONArray;J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 840
    :cond_3
    const-string v3, "GetAreas"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 841
    iget-wide v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J

    cmp-long v3, v3, p3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isCityLoading:Z

    if-nez v3, :cond_0

    .line 846
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "provinceInfo"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdAreas:Lorg/json/JSONObject;

    .line 852
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdAreas:Lorg/json/JSONObject;

    const-string v4, "Areas"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {p0, v3, p3, p4}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateAreasView(Lorg/json/JSONArray;J)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 854
    :catch_2
    move-exception v2

    .line 855
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 857
    .end local v2           #e:Lorg/json/JSONException;
    :cond_5
    const-string v3, "GetTowns"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 859
    iget-wide v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J

    cmp-long v3, v3, p3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isCityLoading:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isAreaLoading:Z

    if-nez v3, :cond_0

    .line 864
    :cond_6
    :try_start_4
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "provinceInfo"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdTowns:Lorg/json/JSONObject;

    .line 870
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdTowns:Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateTownsView(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 872
    :catch_3
    move-exception v2

    .line 873
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 875
    .end local v2           #e:Lorg/json/JSONException;
    :cond_7
    const-string v3, "addAddress"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 878
    :try_start_5
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "addAddress"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 879
    .local v0, addJson:Lorg/json/JSONObject;
    const-string v3, "Flag"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 880
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->succeedToastMsg:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->makeToast(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateUserInfo()V

    .line 884
    iget v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 886
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setResult(I)V

    .line 892
    :goto_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->finish()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 897
    .end local v0           #addJson:Lorg/json/JSONObject;
    :catch_4
    move-exception v2

    .line 898
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 889
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v0       #addJson:Lorg/json/JSONObject;
    :cond_8
    const/4 v3, -0x1

    :try_start_6
    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setResult(I)V

    goto :goto_1

    .line 894
    :cond_9
    const-string v3, "Message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->makeToast(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 901
    .end local v0           #addJson:Lorg/json/JSONObject;
    :cond_a
    const-string v3, "updateAddress"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 904
    :try_start_7
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "updateAddress"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 905
    .restart local v0       #addJson:Lorg/json/JSONObject;
    const-string v3, "Flag"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 906
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->succeedToastMsg:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->makeToast(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateUserInfo()V

    .line 911
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setResult(I)V

    .line 912
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->finish()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 917
    .end local v0           #addJson:Lorg/json/JSONObject;
    :catch_5
    move-exception v2

    .line 918
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 914
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v0       #addJson:Lorg/json/JSONObject;
    :cond_b
    :try_start_8
    const-string v3, "Message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->makeToast(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0
.end method

.method private initAddressId()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 163
    iput v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currProvinceId:I

    .line 164
    const/16 v0, 0x48

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currCityId:I

    .line 165
    const/16 v0, 0xb03

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currAreaId:I

    .line 167
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    if-ne v0, v1, :cond_3

    .line 168
    sget v0, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    if-lez v0, :cond_0

    .line 169
    sget v0, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currProvinceId:I

    .line 171
    :cond_0
    sget v0, Lcom/jingdong/common/lbs/LocManager;->cityId:I

    if-lez v0, :cond_1

    .line 172
    sget v0, Lcom/jingdong/common/lbs/LocManager;->cityId:I

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currCityId:I

    .line 174
    :cond_1
    sget v0, Lcom/jingdong/common/lbs/LocManager;->districtId:I

    if-lez v0, :cond_2

    .line 175
    sget v0, Lcom/jingdong/common/lbs/LocManager;->districtId:I

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currAreaId:I

    .line 183
    :cond_2
    :goto_0
    return-void

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserAddress;->getIdProvince()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currProvinceId:I

    .line 179
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserAddress;->getIdCity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currCityId:I

    .line 180
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserAddress;->getIdArea()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currAreaId:I

    .line 181
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserAddress;->getIdTown()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    goto :goto_0
.end method

.method private initAddressView()V
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mUserName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserAddress;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mMobile:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserAddress;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mZip:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserAddress;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mMail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserAddress;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    return-void
.end method

.method private initCoponent()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 187
    const v0, 0x7f0c0340

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mConfirmAddr:Landroid/widget/Button;

    .line 188
    const v0, 0x7f0c032d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mUserName:Landroid/widget/EditText;

    .line 189
    const v0, 0x7f0c032f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mMobile:Landroid/widget/EditText;

    .line 190
    const v0, 0x7f0c0331

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0c0333

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0c0335

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f0c0337

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0c033b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mWhere:Landroid/widget/EditText;

    .line 195
    const v0, 0x7f0c033a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mPCA:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f0c033d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mZip:Landroid/widget/EditText;

    .line 197
    const v0, 0x7f0c033f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mMail:Landroid/widget/EditText;

    .line 198
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTitle:Landroid/widget/TextView;

    .line 199
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_0
    const v0, 0x7f0c0332

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince2:Landroid/widget/ImageButton;

    .line 216
    const v0, 0x7f0c0334

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity2:Landroid/widget/ImageButton;

    .line 217
    const v0, 0x7f0c0336

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea2:Landroid/widget/ImageButton;

    .line 218
    const v0, 0x7f0c0338

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    .line 220
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :cond_1
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0704fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0704fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0704ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 211
    :pswitch_3
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f070398

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private isNotModify()Z
    .locals 2

    .prologue
    .line 1357
    new-instance v0, Lcom/jingdong/common/entity/UserAddress;

    invoke-direct {v0}, Lcom/jingdong/common/entity/UserAddress;-><init>()V

    .line 1358
    .local v0, currEditUserAddress:Lcom/jingdong/common/entity/UserAddress;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setName(Ljava/lang/String;)V

    .line 1359
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sMobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setMobile(Ljava/lang/String;)V

    .line 1360
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sZip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setZip(Ljava/lang/String;)V

    .line 1361
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setWhere(Ljava/lang/String;)V

    .line 1362
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sAddressDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setAddressDetail(Ljava/lang/String;)V

    .line 1364
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private makeToast(Ljava/lang/String;)V
    .locals 1
    .parameter "mesg"

    .prologue
    .line 1368
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$15;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->post(Ljava/lang/Runnable;)V

    .line 1376
    return-void
.end method

.method private redrawCurrentAddress()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/jingdong/common/entity/UserAddress;

    invoke-direct {v0}, Lcom/jingdong/common/entity/UserAddress;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    .line 129
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setName(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setMobile(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setZip(Ljava/lang/String;)V

    .line 133
    :try_start_0
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Where"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Where"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setWhere(Ljava/lang/String;)V

    .line 136
    :cond_0
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "addressDetail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "addressDetail"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setAddressDetail(Ljava/lang/String;)V

    .line 139
    :cond_1
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Email"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setEmail(Ljava/lang/String;)V

    .line 142
    :cond_2
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "IdProvince"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdProvince(Ljava/lang/Integer;)V

    .line 145
    :cond_3
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "IdCity"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdCity(Ljava/lang/Integer;)V

    .line 148
    :cond_4
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "IdArea"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdArea(Ljava/lang/Integer;)V

    .line 151
    :cond_5
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "IdTown"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdTown"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdTown(Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_6
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 3
    .parameter "funcID"
    .parameter "param"
    .parameter "action"
    .parameter "token"

    .prologue
    const/4 v2, 0x1

    .line 756
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 757
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 765
    const-string v1, "orderAddress"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAlertErrorDialogType(I)V

    .line 769
    :cond_0
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 770
    new-instance v1, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$10;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$10;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 789
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 792
    const-string v1, "GetProvinces"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 793
    const-string v1, "GetCitys"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 794
    const-string v1, "GetAreas"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 795
    const-string v1, "GetTowns"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    :cond_1
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 797
    const-wide/32 v1, 0xf731400

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 800
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 801
    return-void
.end method

.method private submitEvent()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    .line 1258
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 1259
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateUserInfo()V

    .line 1260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setResult(I)V

    .line 1261
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->finish()V

    .line 1320
    :goto_0
    return-void

    .line 1265
    :cond_0
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    if-ne v0, v5, :cond_1

    .line 1267
    const v0, 0x7f0704fc

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->succeedToastMsg:Ljava/lang/String;

    .line 1274
    :goto_1
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    if-ne v0, v5, :cond_2

    .line 1275
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserAddress;->getTypeId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 1276
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isNotModify()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1277
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateUserInfo()V

    .line 1278
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->succeedToastMsg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->makeToast(Ljava/lang/String;)V

    .line 1279
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setResult(I)V

    .line 1280
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->finish()V

    goto :goto_0

    .line 1270
    :cond_1
    const v0, 0x7f0704fb

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->succeedToastMsg:Ljava/lang/String;

    goto :goto_1

    .line 1284
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    .line 1286
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pin"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1287
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "Name"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sUserName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1288
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "IdProvince"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sProvince:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getProvinceCode(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1289
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "IdCity"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sCity:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getCityCode(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1290
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "IdArea"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sArea:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getAreaCode(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1291
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    if-lez v0, :cond_3

    .line 1292
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "IdTown"

    iget v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1294
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sWhere:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1295
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "Where"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sWhere:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1299
    :goto_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sAddressDetail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1300
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "addressDetail"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sAddressDetail:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1304
    :goto_3
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "Zip"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sZip:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1305
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "Mobile"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sMobile:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1306
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    if-eqz v0, :cond_4

    .line 1307
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "Id"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserAddress;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1308
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "TypeId"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserAddress;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    :cond_4
    :goto_4
    const-string v1, "addAddress"

    .line 1314
    .local v1, function:Ljava/lang/String;
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    if-ne v0, v5, :cond_5

    .line 1315
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserAddress;->getTypeId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1316
    const-string v1, "updateAddress"

    .line 1319
    :cond_5
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1297
    .end local v1           #function:Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "Where"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1310
    :catch_0
    move-exception v6

    .line 1311
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1302
    .end local v6           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->addParams:Lorg/json/JSONObject;

    const-string v2, "addressDetail"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private updateAreasView(Lorg/json/JSONArray;J)V
    .locals 1
    .parameter "jdAreaArray"
    .parameter "token"

    .prologue
    .line 1049
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONArray;J)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->post(Ljava/lang/Runnable;)V

    .line 1137
    return-void
.end method

.method private updateCityView(Lorg/json/JSONArray;J)V
    .locals 1
    .parameter "jdCityArray"
    .parameter "token"

    .prologue
    .line 1140
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONArray;J)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->post(Ljava/lang/Runnable;)V

    .line 1205
    return-void
.end method

.method private updateProvincesView(Lorg/json/JSONArray;)V
    .locals 1
    .parameter "jdProvincesArray"

    .prologue
    .line 1208
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONArray;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->post(Ljava/lang/Runnable;)V

    .line 1242
    return-void
.end method

.method private updateTownsView(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "jdTown"

    .prologue
    .line 925
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->post(Ljava/lang/Runnable;)V

    .line 1046
    return-void
.end method

.method private verificationInputData()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, isPass:Z
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sUserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "\u8bf7\u586b\u5199\u6536\u8d27\u4eba\u59d3\u540d."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 343
    :goto_0
    return v0

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sUserName:Ljava/lang/String;

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkUsername(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    const-string v1, "\u60a8\u8f93\u5165\u7684\u6536\u8d27\u4eba\u59d3\u540d\u542b\u6709\u7279\u6b8a\u5b57\u7b26\uff0c\u8bf7\u8f93\u5165\u82f1\u6587\u5b57\u7b26\uff0c\u4e2d\u6587\u6216\u8005\u6570\u5b57."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sProvince:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    const-string v1, "\u6536\u8d27\u7701\u4efd\u6709\u8bef,\u8bf7\u91cd\u65b0\u9009\u62e9."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sProvince:Ljava/lang/String;

    const-string v2, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    const-string v1, "\u6536\u8d27\u7701\u4efd\u6b63\u5728\u52a0\u8f7d,\u8bf7\u7a0d\u540e..."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sCity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 316
    const-string v1, "\u6536\u8d27\u57ce\u5e02\u6709\u8bef,\u8bf7\u91cd\u65b0\u9009\u62e9."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 317
    :cond_4
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sCity:Ljava/lang/String;

    const-string v2, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 318
    const-string v1, "\u6536\u8d27\u57ce\u5e02\u6b63\u5728\u52a0\u8f7d,\u8bf7\u7a0d\u540e..."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 319
    :cond_5
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sArea:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 320
    const-string v1, "\u6536\u8d27\u5730\u533a\u6709\u8bef,\u8bf7\u91cd\u65b0\u9009\u62e9."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 321
    :cond_6
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sArea:Ljava/lang/String;

    const-string v2, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 322
    const-string v1, "\u6536\u8d27\u5730\u533a\u6b63\u5728\u52a0\u8f7d,\u8bf7\u7a0d\u540e..."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 323
    :cond_7
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sMobile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sMobile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_9

    .line 324
    :cond_8
    const-string v1, "\u60a8\u7684\u624b\u673a\u53f7\u7801\u672a\u8f93\u5165\u6216\u8f93\u5165\u9519\u8bef."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 325
    :cond_9
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mPCAString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 326
    const-string v1, "\u8bf7\u8f93\u5165\u8be6\u7ec6\u5730\u5740\uff0c\u5982\u8857\u9053\uff0c\u95e8\u724c\u53f7\u7b49"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 327
    :cond_a
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isTownLoading:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdTowns:Lorg/json/JSONObject;

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    if-ltz v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 328
    :cond_c
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 329
    const-string v1, "\u6536\u8d27\u57ce\u9547\u6b63\u5728\u52a0\u8f7d,\u8bf7\u7a0d\u540e..."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 331
    :cond_d
    const-string v1, "\u6536\u8d27\u57ce\u9547\u6709\u8bef,\u8bf7\u91cd\u65b0\u9009\u62e9."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 333
    :cond_e
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isAreaLoading:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isCityLoading:Z

    if-eqz v1, :cond_10

    .line 334
    :cond_f
    const-string v1, "\u6570\u636e\u6b63\u5728\u52a0\u8f7d,\u8bf7\u7a0d\u540e."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 336
    :cond_10
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sZip:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sZip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_11

    .line 337
    const-string v1, "\u90ae\u7f16\u683c\u5f0f\u4e0d\u6b63\u786e."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 338
    :cond_11
    iget v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currCityId:I

    if-gez v1, :cond_12

    .line 339
    const-string v1, "\u57ce\u5e02\u6709\u8bef,\u8bf7\u91cd\u65b0\u9009\u62e9"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 341
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f030093

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UserAddress"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/UserAddress;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;

    .line 105
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PageType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    .line 106
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 107
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->pageType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->redrawCurrentAddress()V

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->initCoponent()V

    .line 112
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->initAddressId()V

    .line 113
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->initAddressView()V

    .line 114
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v0, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getCartItemInfo()V

    .line 118
    :cond_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getProvices()V

    .line 120
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->handleClickEvent()V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1246
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 1247
    const v1, 0x7f0c032c

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1249
    .local v0, tp:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1250
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 1251
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 1252
    return-void
.end method

.method public updateUserInfo()V
    .locals 3

    .prologue
    .line 1329
    new-instance v1, Lcom/jingdong/common/entity/UserInfo;

    invoke-direct {v1}, Lcom/jingdong/common/entity/UserInfo;-><init>()V

    sput-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1330
    sget-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 1331
    sget-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sMobile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/UserInfo;->setUserMobile(Ljava/lang/String;)V

    .line 1332
    sget-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sZip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/UserInfo;->setUserZip(Ljava/lang/String;)V

    .line 1333
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1335
    .local v0, jbAddr:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "IdProvince"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sProvince:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getProvinceCode(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1336
    const-string v1, "IdCity"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sCity:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getCityCode(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1337
    const-string v1, "IdArea"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sArea:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getAreaCode(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1338
    const-string v1, "IdTown"

    iget v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1339
    const-string v1, "Where"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sWhere:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1340
    const-string v1, "addressDetail"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sAddressDetail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1341
    const-string v1, "Email"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->sMail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    :goto_0
    sget-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/entity/UserInfo;->setUserAddr(Lorg/json/JSONObject;)V

    .line 1354
    return-void

    .line 1346
    :catch_0
    move-exception v1

    goto :goto_0
.end method
