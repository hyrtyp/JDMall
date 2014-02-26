.class public Lcom/jingdong/app/mall/personel/PersonelActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "PersonelActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;,
        Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;,
        Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;,
        Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jingdong/app/mall/utils/MyActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/ViewSwitcher$ViewFactory;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field public static final BALANCE:Ljava/lang/String; = "balance"

.field public static final BALANCE_TYPE:Ljava/lang/String; = "queryBalance"

.field private static final CAMERA_PICTURE:I = 0x2

.field private static final CUT_PICTURE:I = 0x3

.field public static final DRAWER_MAX_WIDTH:I = 0x64

.field public static final DRAWER_MIN_WIDTH:I = 0x1

.field public static final GET_IMG_DONE:I = 0x101

.field private static final HEAD_RATE:F = 0.28f

.field public static final JINGBEAN:Ljava/lang/String; = "jingBean"

.field public static final JINGBEAN_TYPE:Ljava/lang/String; = "queryJingBean"

.field private static final LOCAL_PICTURE:I = 0x1

.field public static final MOVE_WIDTH:I = 0xa

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.jd.plug.personel"

.field private static final PERSONAL_JINGDONG_BEAN_TIP:Ljava/lang/String; = "personal_jingdong_bean_tip"

.field private static final PERSONAL_ONLINE_TIP:Ljava/lang/String; = "personal_online_tip"

.field public static final TAG:Ljava/lang/String; = "PersonelActivity"

.field private static final ZERO:F = 1.0E-4f

.field public static annual_switch:Z


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private amAnimationUtil:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

.field private am_enter:Landroid/widget/ImageView;

.field private assetManager:Landroid/content/res/AssetManager;

.field private canMove:Z

.field private classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

.field private clickLoginForNormal:Landroid/widget/LinearLayout;

.field private clickToLogin:Landroid/widget/Button;

.field private convertView:Landroid/view/View;

.field private couponsTextView:Landroid/widget/TextView;

.field private drawerUseable:Z

.field private fragmentName:Ljava/lang/String;

.field private galleryLayout:Landroid/widget/RelativeLayout;

.field private guessLayout:Landroid/widget/RelativeLayout;

.field private guessProductlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation
.end field

.field private guessRelativeLayout:Landroid/widget/RelativeLayout;

.field private headHeight:I

.field private headReleatLayout:Landroid/widget/RelativeLayout;

.field private iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

.field private isCanClickButton:Z

.field private isDrawerOpen:Z

.field private isLoadedOrderInfo:Z

.field private isNormal:Z

.field private isQuerying:Z

.field private isStartAnim:Z

.field private jPin:Lorg/json/JSONObject;

.field private jsonRecomandArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private keyWord:Ljava/lang/String;

.field private final layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private leftArrow:Landroid/view/View;

.field private loaded:Z

.field private loginAfterRunnable:Ljava/lang/Runnable;

.field private loginInfoLayout:Landroid/widget/RelativeLayout;

.field private logoutBtn:Landroid/widget/Button;

.field private mDrawerGallery:Landroid/widget/Gallery;

.field private mGallery:Landroid/widget/Gallery;

.field private mGesture:Landroid/view/GestureDetector;

.field private mImgView:Landroid/widget/ImageView;

.field private mNewUserInfoLabelsModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/NewUserInfoLabelsMode;",
            ">;"
        }
    .end annotation
.end field

.field private mNewUserInfoMode:Lcom/jingdong/common/entity/NewUserInfoMode;

.field private mSayHello:Landroid/widget/TextView;

.field private mScore:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mScrollY:I

.field private mUserClass:Landroid/widget/TextView;

.field private mUserGallery:Landroid/widget/Gallery;

.field private mUserScore:Ljava/lang/Integer;

.field private meetingAssistantIcon:Landroid/widget/RelativeLayout;

.field private meetingLoginBtn:Landroid/widget/Button;

.field private meetingPassWordEdit:Landroid/widget/EditText;

.field private meetingUseNameEdit:Landroid/widget/EditText;

.field private myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

.field nCurrentIndex:I

.field nLength:I

.field private notLoginForMeeeting:Landroid/widget/LinearLayout;

.field private notLoginLayout:Landroid/widget/RelativeLayout;

.field private oldPin:Ljava/lang/String;

.field private onScrolling:Z

.field private orderDrawer:Landroid/widget/RelativeLayout;

.field private orderDrawerHandle:Landroid/widget/Button;

.field private orderInfoListLayout:Landroid/widget/LinearLayout;

.field private orderView:Landroid/widget/TextView;

.field private personelUserCoupon:Landroid/widget/LinearLayout;

.field private productImg:Landroid/widget/ImageView;

.field private productJdPriceView:Landroid/widget/TextView;

.field private productMarketPriceView:Landroid/widget/TextView;

.field private productTextView:Landroid/widget/TextView;

.field private resources:Landroid/content/res/Resources;

.field private rightArrow:Landroid/view/View;

.field private rootView:Landroid/widget/FrameLayout;

.field private scankey:Ljava/lang/String;

.field private shared:Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

.field private spin:Ljava/lang/String;

.field private theme:Landroid/content/res/Resources$Theme;

.field private tipImageView:Landroid/widget/ImageView;

.field private tipOnlineServerImagetView:Landroid/widget/ImageView;

.field private unreadMessageTextView:Landroid/widget/TextView;

.field private upOrDown:Z

.field private useLoginForMeeting:Z

.field private userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/personel/PersonelActivity;->annual_switch:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 144
    iput-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->jPin:Lorg/json/JSONObject;

    .line 148
    iput-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->jsonRecomandArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 149
    const-string v0, "pin"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->spin:Ljava/lang/String;

    .line 161
    iput v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->nCurrentIndex:I

    iput v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->nLength:I

    .line 177
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isDrawerOpen:Z

    .line 178
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->upOrDown:Z

    .line 180
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->drawerUseable:Z

    .line 181
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->canMove:Z

    .line 182
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->onScrolling:Z

    .line 183
    iput v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mScrollY:I

    .line 187
    iput-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mGesture:Landroid/view/GestureDetector;

    .line 203
    iput-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->convertView:Landroid/view/View;

    .line 215
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v4, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 242
    iput-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    .line 244
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->useLoginForMeeting:Z

    .line 255
    iput-boolean v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isNormal:Z

    .line 540
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->loginAfterRunnable:Ljava/lang/Runnable;

    .line 2417
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isQuerying:Z

    .line 2418
    iput-boolean v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isCanClickButton:Z

    .line 2845
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isStartAnim:Z

    .line 134
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->notLoginLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->logoutBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1837
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setDefaultUserPhoto()V

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getScankey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->scankey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->useLoginForMeeting:Z

    return v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2850
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startAmAnimation()V

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2637
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->queryAnnualInfo()V

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2242
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->queryNewUserInfo()V

    return-void
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1411
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setRecomandList(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1338
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getRecomandProduct()V

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->loadUnreadMessage()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->loginInfoLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->drawerUseable:Z

    return v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getOneMonthOrder()V

    return-void
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2405
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->optionsViewVisibility(I)V

    return-void
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2052
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->queryOnlineAppointment()V

    return-void
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mScrollY:I

    return-void
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->onScrolling:Z

    return-void
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->canMove:Z

    return-void
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/personel/PersonelActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 183
    iget v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mScrollY:I

    return v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->upOrDown:Z

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->oldPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isDrawerOpen:Z

    return v0
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->upOrDown:Z

    return v0
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->canMove:Z

    return v0
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isDrawerOpen:Z

    return-void
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 2417
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isQuerying:Z

    return v0
.end method

.method static synthetic access$35(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2393
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setViewVisibility(I)V

    return-void
.end method

.method static synthetic access$36(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2140
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->queryBalanceAndJingBean(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$37(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startToLoginActivity(I)V

    return-void
.end method

.method static synthetic access$38(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isNormal:Z

    return-void
.end method

.method static synthetic access$39(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2794
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->logout(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mUserClass:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$40(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->couponsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$41(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setOrderList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$42(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/Gallery;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mDrawerGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$43(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->unreadMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$44(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1280
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setSayHelloName()V

    return-void
.end method

.method static synthetic access$45(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$46(Lcom/jingdong/app/mall/personel/PersonelActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2308
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setLayoutBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$47(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->jsonRecomandArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$48(Lcom/jingdong/app/mall/personel/PersonelActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->jsonRecomandArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$49(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->guessProductlist:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mScore:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$50(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/Gallery;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$51(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->guessRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$52(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1789
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->createOrderInfo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$53(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1713
    iput-boolean p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isLoadedOrderInfo:Z

    return-void
.end method

.method static synthetic access$54(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->headReleatLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$55(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2417
    iput-boolean p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isQuerying:Z

    return-void
.end method

.method static synthetic access$56(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mUserScore:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$57(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/common/entity/NewUserInfoMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoMode:Lcom/jingdong/common/entity/NewUserInfoMode;

    return-void
.end method

.method static synthetic access$58(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoLabelsModeList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$59(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1170
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setUserInfo()V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->guessProductlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$60(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1302
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setUserClass()V

    return-void
.end method

.method static synthetic access$61(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2339
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->initPersonelUI()V

    return-void
.end method

.method static synthetic access$62(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->tipImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$63(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->tipOnlineServerImagetView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$64(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2494
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->onLogin()V

    return-void
.end method

.method static synthetic access$65(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2548
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/personel/PersonelActivity;->loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$66(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2589
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->loginError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$67(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 540
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->loginAfterRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$68(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->scankey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$69(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingAssistantIcon:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->guessLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$70(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2668
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->handleMeetingEntrance(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    return-void
.end method

.method static synthetic access$71(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 2845
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isStartAnim:Z

    return v0
.end method

.method static synthetic access$72(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 2418
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isCanClickButton:Z

    return v0
.end method

.method static synthetic access$73(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2754
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->avoidMoreTimeClicked()V

    return-void
.end method

.method static synthetic access$74(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2418
    iput-boolean p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isCanClickButton:Z

    return-void
.end method

.method static synthetic access$75(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2766
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->onLogout()V

    return-void
.end method

.method static synthetic access$76(Lcom/jingdong/app/mall/personel/PersonelActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2791
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$77(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->am_enter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->oldPin:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/personel/PersonelActivity;)Lcom/jingdong/app/mall/personel/UserPhotoUpload;
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    return-object v0
.end method

.method private avoidMoreTimeClicked()V
    .locals 2

    .prologue
    .line 2755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isCanClickButton:Z

    .line 2756
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$35;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$35;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 2762
    const/16 v1, 0xbb8

    .line 2756
    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;I)V

    .line 2763
    return-void
.end method

.method private createOrderInfo(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/JdOrderStat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdOrderStat;>;"
    const/4 v8, 0x0

    .line 1790
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderInfoListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1791
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 1830
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderInfoListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1831
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isLoadedOrderInfo:Z

    .line 1832
    return-void

    .line 1792
    :cond_0
    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;)V

    .line 1793
    .local v1, item:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/JdOrderStat;

    .line 1794
    .local v2, jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;
    if-nez v2, :cond_1

    .line 1791
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1797
    :cond_1
    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->setData(Lcom/jingdong/common/entity/JdOrderStat;)V

    .line 1798
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->getView()Landroid/view/View;

    move-result-object v3

    .line 1799
    .local v3, view:Landroid/view/View;
    new-instance v4, Lcom/jingdong/app/mall/personel/PersonelActivity$17;

    invoke-direct {v4, p0, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity$17;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/common/entity/JdOrderStat;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1817
    if-nez v0, :cond_2

    .line 1818
    const v4, 0x7f020209

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1819
    invoke-virtual {v1, v8}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->setLineVisibility(I)V

    .line 1826
    :goto_2
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x422c

    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getDensity()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1827
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderInfoListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1820
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_3

    .line 1821
    const v4, 0x7f02020a

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1823
    :cond_3
    const v4, 0x7f02020b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1824
    invoke-virtual {v1, v8}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->setLineVisibility(I)V

    goto :goto_2
.end method

.method private findViews()V
    .locals 3

    .prologue
    .line 512
    const v1, 0x7f0c04d4

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->unreadMessageTextView:Landroid/widget/TextView;

    .line 513
    const v1, 0x7f0c04c4

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderInfoListLayout:Landroid/widget/LinearLayout;

    .line 514
    const v1, 0x7f0c04b6

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->loginInfoLayout:Landroid/widget/RelativeLayout;

    .line 515
    const v1, 0x7f0c04be

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->notLoginLayout:Landroid/widget/RelativeLayout;

    .line 516
    const v1, 0x7f0c04c1

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->clickToLogin:Landroid/widget/Button;

    .line 517
    const v1, 0x7f0c04c3

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderView:Landroid/widget/TextView;

    .line 518
    const v1, 0x7f0c04b5

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->headReleatLayout:Landroid/widget/RelativeLayout;

    .line 519
    const v1, 0x7f0c04b7

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->personelUserCoupon:Landroid/widget/LinearLayout;

    .line 521
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e8f5c29

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->headHeight:I

    .line 522
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->headHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 523
    .local v0, headLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->headReleatLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    const v1, 0x7f0c04e9

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->tipOnlineServerImagetView:Landroid/widget/ImageView;

    .line 525
    const-string v1, "personal_online_tip"

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->activityIsGuided(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->optionsViewVisibility(I)V

    .line 530
    :cond_0
    const v1, 0x7f0c04c2

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->notLoginForMeeeting:Landroid/widget/LinearLayout;

    .line 531
    const v1, 0x7f0c04bf

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->clickLoginForNormal:Landroid/widget/LinearLayout;

    .line 532
    const v1, 0x7f0c04bd

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingAssistantIcon:Landroid/widget/RelativeLayout;

    .line 533
    const v1, 0x7f0c04f3

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingUseNameEdit:Landroid/widget/EditText;

    .line 534
    const v1, 0x7f0c04f4

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingPassWordEdit:Landroid/widget/EditText;

    .line 535
    const v1, 0x7f0c006a

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->am_enter:Landroid/widget/ImageView;

    .line 536
    const v1, 0x7f0c04f5

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingLoginBtn:Landroid/widget/Button;

    .line 538
    return-void
.end method

.method private getOneMonthOrder()V
    .locals 3

    .prologue
    .line 991
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 992
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "oneMonthOrder"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 993
    const-string v1, "page"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 994
    const-string v1, "pagesize"

    const-string v2, "50"

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 995
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$5;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1039
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1040
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1041
    return-void
.end method

.method private getRecomandProduct()V
    .locals 4

    .prologue
    .line 1341
    :try_start_0
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$12;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$12;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 1384
    .local v1, listener:Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1385
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "recommend"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1390
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->jPin:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 1391
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 1392
    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 1393
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1398
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v1           #listener:Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;
    :goto_0
    return-void

    .line 1395
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getScankey()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 292
    const-string v0, ""

    .line 294
    .local v0, key:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "scanTokey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 301
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const-string v1, "annualToken"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->useLoginForMeeting:Z

    .line 314
    :goto_1
    return-object v0

    .line 311
    :cond_1
    sput-boolean v3, Lcom/jingdong/app/mall/personel/PersonelActivity;->annual_switch:Z

    .line 312
    iput-boolean v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->useLoginForMeeting:Z

    goto :goto_1

    .line 295
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleMeetingEntrance(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 8
    .parameter "jsonObject"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2669
    const-string v5, "sc"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2670
    .local v2, meetingFlag:Ljava/lang/String;
    const-string v5, "tk"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2671
    .local v3, meetingToken:Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2672
    .local v4, name:Ljava/lang/String;
    const-string v5, "isCheckedIn"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2673
    .local v0, isCheckin:Ljava/lang/String;
    sput-object v3, Lcom/jingdong/app/mall/amHelper/AmHelper;->token:Ljava/lang/String;

    .line 2674
    const/4 v1, 0x0

    .line 2675
    .local v1, isOpen:Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2677
    const-string v5, "-1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2678
    sput-boolean v6, Lcom/jingdong/app/mall/personel/PersonelActivity;->annual_switch:Z

    .line 2679
    const/4 v1, 0x0

    .line 2680
    new-instance v5, Lcom/jingdong/app/mall/personel/PersonelActivity$32;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$32;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 2708
    :goto_0
    if-eqz v1, :cond_4

    .line 2709
    new-instance v5, Lcom/jingdong/app/mall/personel/PersonelActivity$33;

    invoke-direct {v5, p0, v0, v4, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity$33;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 2752
    :goto_1
    return-void

    .line 2688
    :cond_0
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2689
    sput-boolean v6, Lcom/jingdong/app/mall/personel/PersonelActivity;->annual_switch:Z

    .line 2690
    const/4 v1, 0x1

    .line 2691
    goto :goto_0

    :cond_1
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2692
    sput-boolean v7, Lcom/jingdong/app/mall/personel/PersonelActivity;->annual_switch:Z

    .line 2693
    const/4 v1, 0x0

    .line 2694
    const-string v5, "annualToken"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/jingdong/app/mall/utils/CommonUtil;->putStringToPreference(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2695
    iput-boolean v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->useLoginForMeeting:Z

    goto :goto_0

    .line 2697
    :cond_2
    const/4 v1, 0x0

    .line 2700
    goto :goto_0

    .line 2701
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 2744
    :cond_4
    new-instance v5, Lcom/jingdong/app/mall/personel/PersonelActivity$34;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$34;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 613
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_3

    .line 614
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->loginAfterRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/jingdong/common/login/LoginUserBase;->executeLoginRunnableForCheckNetwork(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;)V

    .line 615
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->loginInfoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 616
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->logoutBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 617
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->notLoginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 618
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getScankey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->scankey:Ljava/lang/String;

    .line 619
    iget-boolean v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->useLoginForMeeting:Z

    if-eqz v1, :cond_2

    .line 620
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->clickLoginForNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 621
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->notLoginForMeeeting:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 626
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e8f5c29

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 627
    .local v0, notLoginLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->notLoginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->unreadMessageTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->unreadMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->clickToLogin:Landroid/widget/Button;

    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$2;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->guessProductlist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->guessProductlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->guessLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 653
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingUseNameEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingPassWordEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_1

    .line 656
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v5, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 662
    .end local v0           #notLoginLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 623
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->clickLoginForNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 624
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->notLoginForMeeeting:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 660
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->loginAfterRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private initComponent()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 693
    new-instance v10, Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

    invoke-direct {v10}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity;-><init>()V

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->shared:Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

    .line 695
    const v10, 0x7f0c007e

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 696
    .local v0, mTitleView:Landroid/widget/TextView;
    const v10, 0x7f070281

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    .line 697
    const v10, 0x7f0c071c

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 698
    .local v1, moreView:Landroid/widget/Button;
    const v10, 0x7f07051a

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 699
    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 701
    new-instance v4, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;

    const/4 v10, 0x0

    invoke-direct {v4, p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)V

    .line 702
    .local v4, myClickListener:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    const v10, 0x7f0c04d1

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 706
    .local v8, myMessages:Landroid/widget/RelativeLayout;
    const v10, 0x7f0c04c7

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 707
    .local v5, myCollect:Landroid/widget/RelativeLayout;
    const v10, 0x7f0c04cc

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 708
    .local v6, myDiscuss:Landroid/widget/RelativeLayout;
    const v10, 0x7f0c0002

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 709
    .local v7, myEasyBuy:Landroid/widget/RelativeLayout;
    const v10, 0x7f0c04e1

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 710
    .local v3, myBackExchange:Landroid/widget/RelativeLayout;
    const v10, 0x7f0c04db

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 711
    .local v2, myAccountSafe:Landroid/widget/RelativeLayout;
    const v10, 0x7f0c04e6

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 713
    .local v9, myOnlineService:Landroid/widget/RelativeLayout;
    const v10, 0x7f0c04eb

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->guessLayout:Landroid/widget/RelativeLayout;

    .line 714
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-boolean v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->drawerUseable:Z

    if-eqz v10, :cond_0

    .line 723
    const v10, 0x7f0c04b3

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawerHandle:Landroid/widget/Button;

    .line 724
    iget-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawerHandle:Landroid/widget/Button;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 725
    iget-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawerHandle:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 726
    new-instance v10, Landroid/view/GestureDetector;

    new-instance v11, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;

    invoke-direct {v11, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-direct {v10, p0, v11}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mGesture:Landroid/view/GestureDetector;

    .line 727
    const v10, 0x7f0c04af

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;

    .line 728
    const v10, 0x7f0c04b2

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Gallery;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mDrawerGallery:Landroid/widget/Gallery;

    .line 734
    :cond_0
    const v10, 0x7f0c00af

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->galleryLayout:Landroid/widget/RelativeLayout;

    .line 735
    iget-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->galleryLayout:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/jingdong/app/mall/utils/ui/TriangleLineDrawable;

    invoke-direct {v11, p0}, Lcom/jingdong/app/mall/utils/ui/TriangleLineDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    const v10, 0x7f0c04f2

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->logoutBtn:Landroid/widget/Button;

    .line 738
    const v10, 0x7f0c0463

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->rightArrow:Landroid/view/View;

    .line 739
    const v10, 0x7f0c01c7

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->leftArrow:Landroid/view/View;

    .line 741
    const v10, 0x7f0c04ef

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->guessRelativeLayout:Landroid/widget/RelativeLayout;

    .line 743
    const v10, 0x7f0c04b4

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ScrollView;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 744
    iget-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->logoutBtn:Landroid/widget/Button;

    new-instance v11, Lcom/jingdong/app/mall/personel/PersonelActivity$3;

    invoke-direct {v11, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$3;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    const v10, 0x7f0c04bb

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mUserClass:Landroid/widget/TextView;

    .line 755
    const v10, 0x7f0c04ba

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mSayHello:Landroid/widget/TextView;

    .line 756
    const v10, 0x7f0c04bc

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mScore:Landroid/widget/TextView;

    .line 757
    const v10, 0x7f0c04b8

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mImgView:Landroid/widget/ImageView;

    .line 758
    const v10, 0x7f0c04ee

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Gallery;

    iput-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mGallery:Landroid/widget/Gallery;

    .line 759
    iget-object v10, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v10, p0}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 761
    return-void
.end method

.method private initPersonelUI()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 2341
    iget-object v11, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoLabelsModeList:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoLabelsModeList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 2391
    :cond_0
    :goto_0
    return-void

    .line 2344
    :cond_1
    iget-object v11, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->personelUserCoupon:Landroid/widget/LinearLayout;

    invoke-direct {p0, v11}, Lcom/jingdong/app/mall/personel/PersonelActivity;->removeAllLinearLayout(Landroid/view/ViewGroup;)V

    .line 2346
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2347
    .local v7, linearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2349
    :try_start_0
    iget-object v11, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->personelUserCoupon:Landroid/widget/LinearLayout;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2351
    iget-object v11, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoLabelsModeList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2352
    .local v10, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v10, :cond_0

    .line 2354
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f03007d

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2355
    .local v5, itemView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030085

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2356
    .local v6, lineView:Landroid/view/View;
    const v11, 0x7f0c02ca

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2357
    .local v9, name:Landroid/widget/TextView;
    const v11, 0x7f0c02cb

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2359
    .local v0, amount:Landroid/widget/TextView;
    iget-object v11, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoLabelsModeList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;

    invoke-virtual {v11}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2361
    iget-object v11, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoLabelsModeList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;

    .line 2362
    .local v8, mode:Lcom/jingdong/common/entity/NewUserInfoLabelsMode;
    invoke-virtual {v8}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "balance"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2363
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v11, "0.00"

    invoke-direct {v2, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2364
    .local v2, df:Ljava/text/DecimalFormat;
    invoke-virtual {v8}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->getAmount()Ljava/lang/Double;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2365
    .local v3, formatedBalance:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2366
    .local v1, amountValue:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const v12, 0x7f0701e1

    invoke-virtual {p0, v12}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2376
    .end local v2           #df:Ljava/text/DecimalFormat;
    .end local v3           #formatedBalance:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2378
    new-instance v12, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;

    iget-object v11, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoLabelsModeList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;

    invoke-virtual {v11}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, p0, v11}, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2380
    iget-object v11, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2382
    add-int/lit8 v11, v10, -0x1

    if-eq v4, v11, :cond_3

    .line 2383
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2352
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2368
    .end local v1           #amountValue:Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->getAmount()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    double-to-int v11, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2369
    .restart local v1       #amountValue:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "jingBean"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2370
    const-string v11, "personal_jingdong_bean_tip"

    invoke-static {v11}, Lcom/jingdong/app/mall/utils/CommonUtil;->activityIsGuided(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2371
    const v11, 0x7f0c02cc

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->tipImageView:Landroid/widget/ImageView;

    .line 2372
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setViewVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2386
    .end local v0           #amount:Landroid/widget/TextView;
    .end local v1           #amountValue:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #itemView:Landroid/view/View;
    .end local v6           #lineView:Landroid/view/View;
    .end local v8           #mode:Lcom/jingdong/common/entity/NewUserInfoLabelsMode;
    .end local v9           #name:Landroid/widget/TextView;
    .end local v10           #size:I
    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method

.method private initPlug(Landroid/content/Intent;Ljava/io/File;)Z
    .locals 8
    .parameter "intent"
    .parameter "file"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 372
    :try_start_0
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->fragmentName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->loadFragNameEmpty()V

    .line 375
    :cond_0
    invoke-static {p2}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->getClassLoader(Ljava/io/File;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    .line 377
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-eqz v7, :cond_2

    move v7, v6

    :goto_0
    iput-boolean v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->loaded:Z

    .line 389
    iget-boolean v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->loaded:Z

    if-nez v7, :cond_3

    .line 390
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->loadPlugClassLoaderError()V

    .line 415
    :cond_1
    :goto_1
    return v5

    :cond_2
    move v7, v5

    .line 377
    goto :goto_0

    .line 394
    :cond_3
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->fragmentName:Ljava/lang/String;

    invoke-virtual {p0, p0, v7}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getPlugIntance(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    move-result-object v4

    .line 396
    .local v4, iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    const/4 v2, 0x0

    .line 399
    .local v2, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_1

    .line 400
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v4, p0, v7}, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;->getFragment(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 406
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 407
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 408
    .local v1, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 409
    .local v3, ft:Landroid/support/v4/app/FragmentTransaction;
    const v7, 0x102000c

    invoke-virtual {v3, v7, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 410
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 411
    goto :goto_1

    .line 412
    .end local v1           #fm:Landroid/support/v4/app/FragmentManager;
    .end local v2           #fragment:Landroid/support/v4/app/Fragment;
    .end local v3           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v4           #iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->loadPlugFragmentError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private loadCoupons()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 871
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->couponsTextView:Landroid/widget/TextView;

    const v2, 0x7f07028d

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 873
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "getCouponAndBalance"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 874
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$4;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 903
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 904
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 906
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 907
    return-void
.end method

.method private loadUnreadMessage()V
    .locals 3

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->unreadMessageTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->unreadMessageTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1104
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1105
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 1106
    const-string v1, "msgHost"

    invoke-static {v1}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 1107
    const-string v1, "getUnreadMsgCount"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1108
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->jPin:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 1109
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$9;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$9;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1155
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1157
    return-void
.end method

.method private loginError(Ljava/lang/String;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 2593
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$30;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$30;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 2632
    return-void
.end method

.method private loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sUserName"
    .parameter "sUserPassword"
    .parameter "pinName"

    .prologue
    .line 2552
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jingdong/app/mall/personel/PersonelActivity$29;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 2581
    return-void
.end method

.method private logout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .parameter "title"

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2842
    :goto_0
    return-void

    .line 2798
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 2799
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2800
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2801
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f070223

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$36;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$36;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2809
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0701a1

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$37;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$37;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2822
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$38;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$38;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2832
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$39;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$39;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2840
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private nameCheck()Z
    .locals 5

    .prologue
    .line 2469
    const/4 v0, 0x0

    .line 2470
    .local v0, checkFlag:Z
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingUseNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2471
    .local v1, checkStr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2472
    const/4 v0, 0x1

    .line 2473
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingUseNameEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07020c

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 2476
    :cond_0
    return v0
.end method

.method private onLocalOrderInfo()V
    .locals 7

    .prologue
    .line 1774
    const-string v2, "{\"JdOrderStat\":[{\"icon\":\"2130837602\",\"functionId\":\"unfinishedOrder\",\"count\":1,\"url\":\"\",\"name\":\"\u8ba2\u5355\u72b6\u6001\u901f\u67e5\"},{\"icon\":\"2130837603\",\"functionId\":\"waite4Payment\",\"count\":0,\"url\":\"\",\"name\":\"\u5f85\u4ed8\u6b3e\u8ba2\u5355\"},{\"icon\":\"2130837601\",\"functionId\":\"allOrdersFunctionList\",\"count\":4,\"url\":\"\",\"name\":\"\u5168\u90e8\u8ba2\u5355\"}]}"

    .line 1775
    .local v2, json:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1777
    .local v3, jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    new-instance v5, Lorg/json/JSONObject;

    const-string v6, "{\"JdOrderStat\":[{\"icon\":\"2130837602\",\"functionId\":\"unfinishedOrder\",\"count\":1,\"url\":\"\",\"name\":\"\u8ba2\u5355\u72b6\u6001\u901f\u67e5\"},{\"icon\":\"2130837603\",\"functionId\":\"waite4Payment\",\"count\":0,\"url\":\"\",\"name\":\"\u5f85\u4ed8\u6b3e\u8ba2\u5355\"},{\"icon\":\"2130837601\",\"functionId\":\"allOrdersFunctionList\",\"count\":4,\"url\":\"\",\"name\":\"\u5168\u90e8\u8ba2\u5355\"}]}"

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .local v4, jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    move-object v3, v4

    .line 1781
    .end local v4           #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v3       #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    if-nez v3, :cond_0

    .line 1782
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->oldPin:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/jingdong/app/mall/personel/PersonelActivity;->onOrderInfo(Ljava/lang/String;)V

    .line 1787
    :goto_1
    return-void

    .line 1778
    :catch_0
    move-exception v1

    .line 1779
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1784
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    const-string v5, "JdOrderStat"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/common/entity/JdOrderStat;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1785
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdOrderStat;>;"
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->createOrderInfo(Ljava/util/List;)V

    goto :goto_1
.end method

.method private onLogin()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2495
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->nameCheck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->passWordCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2541
    :cond_0
    :goto_0
    return-void

    .line 2499
    :cond_1
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 2500
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingPassWordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v7, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2502
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingUseNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2503
    .local v1, username:Ljava/lang/String;
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingPassWordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2504
    .local v2, password:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getPassword()Ljava/lang/String;

    move-result-object v8

    .line 2505
    .local v8, safePassword:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 2507
    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2508
    invoke-static {v2}, Lcom/jingdong/app/mall/login/LoginActivity;->EncryptPassword2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2510
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 2514
    move-object v6, v2

    .line 2516
    .local v6, finalPassword:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/common/utils/PushMessageUtils;->saveBindState(Z)V

    .line 2519
    new-instance v5, Lcom/jingdong/app/mall/personel/PersonelActivity$28;

    invoke-direct {v5, p0, v1, v6}, Lcom/jingdong/app/mall/personel/PersonelActivity$28;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/jingdong/common/login/LoginUserBase;->login(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/jingdong/common/login/LoginUserBase$LoginRequestListener;)V

    goto :goto_0

    .line 2505
    .end local v6           #finalPassword:Ljava/lang/String;
    :cond_3
    const-string v8, ""

    goto :goto_1
.end method

.method private onLogout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2767
    invoke-static {p0}, Lcom/jingdong/common/utils/UserUtil;->onLogout(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 2769
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->removeAllHistory()V

    .line 2774
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2775
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getScankey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isNormal:Z

    if-nez v1, :cond_0

    .line 2779
    sput-boolean v2, Lcom/jingdong/app/mall/amHelper/AmHelper;->isShowDialog:Z

    .line 2780
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jingdong/app/mall/amHelper/AmHelper;->isGoPersonel:Z

    .line 2788
    :goto_0
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startSingleActivityInFrame(Landroid/content/Intent;)V

    .line 2789
    return-void

    .line 2785
    :cond_0
    sput-boolean v2, Lcom/jingdong/app/mall/amHelper/AmHelper;->isGoPersonel:Z

    goto :goto_0
.end method

.method private onOrderInfo(Ljava/lang/String;)V
    .locals 4
    .parameter "pin"

    .prologue
    const/4 v3, 0x1

    .line 1716
    iget-boolean v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isLoadedOrderInfo:Z

    if-eqz v1, :cond_0

    .line 1771
    :goto_0
    return-void

    .line 1719
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1720
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "jdHomeOrderInfo"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1721
    const-string v1, "pin"

    invoke-virtual {v0, v1, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1722
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 1723
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 1724
    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 1725
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1726
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$16;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$16;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1770
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method private optionsViewVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2406
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$26;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$26;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 2415
    return-void
.end method

.method private passWordCheck()Z
    .locals 5

    .prologue
    .line 2480
    const/4 v0, 0x0

    .line 2481
    .local v0, checkFlag:Z
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingPassWordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2482
    .local v1, checkStr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2483
    const/4 v0, 0x1

    .line 2484
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingPassWordEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07020d

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 2487
    :cond_0
    return v0
.end method

.method private queryAnnualInfo()V
    .locals 2

    .prologue
    .line 2638
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 2639
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "openAnnual"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 2640
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 2641
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$31;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$31;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 2665
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 2666
    return-void
.end method

.method private queryBalanceAndJingBean(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 2149
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isQuerying:Z

    .line 2151
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 2152
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "jdHomeShowItem"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 2153
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$22;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$22;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 2235
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 2236
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 2237
    return-void
.end method

.method private queryNewUserInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2246
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 2247
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mSayHello:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2248
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 2252
    :goto_0
    const-string v2, "newUserInfo"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 2256
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->jPin:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 2258
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$23;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$23;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 2302
    .local v1, listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 2303
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 2304
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 2306
    return-void

    .line 2250
    .end local v1           #listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    goto :goto_0
.end method

.method private queryOnlineAppointment()V
    .locals 2

    .prologue
    .line 2061
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 2062
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "jdHomeShowItem"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 2063
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$21;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$21;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 2136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 2137
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 2138
    return-void
.end method

.method private removeAllLinearLayout(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "viewGroup"

    .prologue
    .line 2329
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2331
    .local v0, childCount:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 2337
    return-void

    .line 2332
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2333
    .local v1, childView:Landroid/view/View;
    instance-of v3, v1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 2334
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2331
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private setDefaultUserPhoto()V
    .locals 6

    .prologue
    .line 1838
    const/4 v0, 0x0

    .line 1840
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getPhotoFromCache()Ljava/io/File;

    move-result-object v2

    .line 1842
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1846
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1851
    :goto_0
    if-eqz v0, :cond_0

    .line 1852
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->toMergePhoto(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    .line 1853
    .local v3, img:Landroid/graphics/drawable/LayerDrawable;
    new-instance v4, Lcom/jingdong/app/mall/personel/PersonelActivity$18;

    invoke-direct {v4, p0, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity$18;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Landroid/graphics/drawable/LayerDrawable;)V

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 1861
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1863
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setLayoutBackground(Landroid/graphics/Bitmap;)V

    .line 1880
    .end local v2           #file:Ljava/io/File;
    .end local v3           #img:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    :goto_1
    return-void

    .line 1848
    .restart local v2       #file:Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1866
    .restart local v3       #img:Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    new-instance v4, Lcom/jingdong/app/mall/personel/PersonelActivity$19;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$19;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1875
    .end local v2           #file:Ljava/io/File;
    .end local v3           #img:Landroid/graphics/drawable/LayerDrawable;
    :catch_0
    move-exception v1

    .line 1876
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1877
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 1878
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setEvent()V
    .locals 2

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingLoginBtn:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$27;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$27;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2466
    return-void
.end method

.method private setLayoutBackground(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 2309
    if-nez p1, :cond_0

    .line 2326
    :goto_0
    return-void

    .line 2312
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$24;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$24;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setOrderList(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 1052
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$6;

    const v4, 0x7f030023

    new-array v5, v2, [Ljava/lang/String;

    const-string v1, "orderStatus"

    aput-object v1, v5, v7

    new-array v6, v2, [I

    const v1, 0x7f0c010c

    aput v1, v6, v7

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/personel/PersonelActivity$6;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    .line 1068
    .local v0, adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$7;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 1083
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mDrawerGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v7}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 1084
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mDrawerGallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$8;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$8;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method private setRecomandList(Ljava/util/ArrayList;I)V
    .locals 8
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 1413
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$13;

    .line 1421
    const v4, 0x7f03006f

    .line 1422
    new-array v5, v2, [Ljava/lang/String;

    const-string v1, "imageUrl"

    aput-object v1, v5, v7

    .line 1423
    new-array v6, v2, [I

    const v1, 0x7f0c01d5

    aput v1, v6, v7

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    .line 1419
    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/personel/PersonelActivity$13;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    .line 1435
    .local v0, adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$14;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$14;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 1451
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v7}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 1452
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mGallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$15;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$15;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method private setSayHelloName()V
    .locals 5

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mSayHello:Landroid/widget/TextView;

    const v1, 0x7f070291

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1287
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1282
    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1289
    return-void
.end method

.method private setUserClass()V
    .locals 5

    .prologue
    .line 1303
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoMode:Lcom/jingdong/common/entity/NewUserInfoMode;

    if-nez v2, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoMode:Lcom/jingdong/common/entity/NewUserInfoMode;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewUserInfoMode;->getUclass()Ljava/lang/String;

    move-result-object v1

    .line 1309
    .local v1, uclass:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1310
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 1314
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mUserClass:Landroid/widget/TextView;

    const v3, 0x7f070238

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1319
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mUserScore:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1320
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mScore:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f070284

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mUserScore:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1322
    .end local v1           #uclass:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1323
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1316
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #uclass:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mUserClass:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setUserImage()V
    .locals 5

    .prologue
    .line 1199
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoMode:Lcom/jingdong/common/entity/NewUserInfoMode;

    if-nez v4, :cond_1

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mNewUserInfoMode:Lcom/jingdong/common/entity/NewUserInfoMode;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/NewUserInfoMode;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    .line 1208
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1210
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1211
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/16 v4, 0x1388

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 1212
    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 1214
    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$11;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$11;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 1260
    .local v2, listener:Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1261
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1264
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v2           #listener:Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;
    .end local v3           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1265
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setUserInfo()V
    .locals 1

    .prologue
    .line 1171
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setUserImage()V

    .line 1172
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$10;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$10;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 1185
    return-void
.end method

.method private setViewVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2394
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$25;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$25;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 2403
    return-void
.end method

.method private startAmAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2851
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingAssistantIcon:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 2874
    :goto_0
    return-void

    .line 2854
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingAssistantIcon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2855
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->amAnimationUtil:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    if-nez v0, :cond_1

    .line 2856
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    invoke-direct {v0}, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->amAnimationUtil:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    .line 2858
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->amAnimationUtil:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$40;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$40;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, p0, v2, v1}, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;->startAnimation(Lcom/jingdong/app/mall/utils/MyActivity;ILcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;)V

    .line 2870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isStartAnim:Z

    goto :goto_0

    .line 2872
    :cond_2
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isStartAnim:Z

    goto :goto_0
.end method

.method private startPlug(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, -0x1

    .line 324
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->rootView:Landroid/widget/FrameLayout;

    .line 325
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->rootView:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->rootView:Landroid/widget/FrameLayout;

    const v8, 0x102000c

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 327
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setContentView(Landroid/view/View;)V

    .line 329
    invoke-static {}, Lcom/jingdong/app/mall/plug/PlugManager;->getInstance()Lcom/jingdong/app/mall/plug/PlugManager;

    move-result-object v7

    const-string v8, "com.jd.plug.personel"

    invoke-virtual {v7, p0, v8}, Lcom/jingdong/app/mall/plug/PlugManager;->getPlugItem(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v5

    .line 335
    .local v5, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 336
    .local v3, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 338
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v7, v5, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    :try_start_1
    iget-object v7, v5, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->fragmentName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    .line 344
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->initPlug(Landroid/content/Intent;Ljava/io/File;)Z

    move-result v4

    .line 350
    .local v4, isOk:Z
    if-nez v4, :cond_0

    .line 352
    :try_start_2
    const-string v7, "com.jd.plug.personel"

    invoke-static {p0, v7}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->installPlugFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v6

    .line 353
    .local v6, plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v6, :cond_0

    .line 359
    new-instance v2, Ljava/io/File;

    iget-object v7, v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 360
    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :try_start_3
    iget-object v7, v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->fragmentName:Ljava/lang/String;

    .line 361
    invoke-direct {p0, v3, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->initPlug(Landroid/content/Intent;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .line 368
    .end local v2           #file:Ljava/io/File;
    .end local v6           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 340
    .end local v4           #isOk:Z
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->loadFileError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 363
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #isOk:Z
    :catch_1
    move-exception v0

    .line 364
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->loadPlugFragmentError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 363
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v6       #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_3

    .line 340
    .end local v1           #file:Ljava/io/File;
    .end local v4           #isOk:Z
    .end local v6           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v2       #file:Ljava/io/File;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_2
.end method

.method private startToLoginActivity(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 673
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 674
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    const-string v1, "com.360buy:loginResendFlag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 679
    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 428
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    goto :goto_0

    .line 432
    :cond_1
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 1
    .parameter "context"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    goto :goto_0
.end method

.method public getOverrideResources()Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    return-object v0
.end method

.method public getPlugIntance(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    .locals 3
    .parameter "context"
    .parameter "lunchPath"

    .prologue
    .line 469
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    if-eqz v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    .line 485
    :goto_0
    return-object v2

    .line 473
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cleanMost()V

    .line 477
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 478
    :catch_1
    move-exception v1

    .line 479
    .local v1, e1:Ljava/lang/Throwable;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    goto :goto_1
.end method

.method protected loadFileError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 463
    return-void
.end method

.method protected loadFragNameEmpty()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method protected loadPlugClassLoaderError()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method protected loadPlugFragmentError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 456
    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    .prologue
    .line 1539
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1540
    .local v0, iv:Landroid/widget/ImageView;
    const-string v1, "icon"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1541
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1542
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0xf

    div-int/lit8 v3, v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1543
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1496
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1497
    packed-switch p1, :pswitch_data_0

    .line 1525
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1526
    return-void

    .line 1500
    :pswitch_0
    if-eqz p3, :cond_0

    .line 1501
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0

    .line 1507
    :pswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getUserPhotoFile()Ljava/io/File;

    move-result-object v1

    .line 1508
    .local v1, userPhotoFile:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1509
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->startPhotoZoom(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1511
    .end local v1           #userPhotoFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1512
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1517
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    if-eqz p3, :cond_0

    .line 1518
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    invoke-virtual {v2, p3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->setPicToView(Landroid/content/Intent;)V

    goto :goto_0

    .line 1497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startPlug(Landroid/os/Bundle;)V

    .line 289
    :goto_0
    return-void

    .line 271
    :cond_0
    const v0, 0x7f0300cd

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->convertView:Landroid/view/View;

    .line 272
    new-instance v0, Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->convertView:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    .line 273
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->userPhotoUpload:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->init()V

    .line 274
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->convertView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setContentView(Landroid/view/View;)V

    .line 276
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getScankey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->scankey:Ljava/lang/String;

    .line 278
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->findViews()V

    .line 280
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->initComponent()V

    .line 281
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->onLocalOrderInfo()V

    .line 282
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->setEvent()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1485
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 1487
    .local v0, product:Lcom/jingdong/common/entity/Product;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1488
    new-instance v3, Lcom/jingdong/common/entity/SourceEntity;

    const-string v4, "guess"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    invoke-static {p0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 1489
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1533
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 1535
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 496
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 498
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->jPin:Lorg/json/JSONObject;

    .line 506
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->init()V

    .line 509
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v3, 0x32

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1548
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1549
    invoke-super {p0, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1572
    :goto_0
    return v2

    .line 1551
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-boolean v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->onScrolling:Z

    if-eqz v2, :cond_1

    .line 1552
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1553
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 1554
    .local v0, height:I
    if-lt v0, v3, :cond_2

    .line 1559
    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    new-array v3, v5, [Ljava/lang/Integer;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1560
    iput-boolean v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isDrawerOpen:Z

    .line 1572
    .end local v0           #height:I
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1561
    .restart local v0       #height:I
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    if-ge v0, v3, :cond_1

    .line 1566
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1567
    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    new-array v3, v5, [Ljava/lang/Integer;

    const/16 v4, -0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1568
    iput-boolean v6, p0, Lcom/jingdong/app/mall/personel/PersonelActivity;->isDrawerOpen:Z

    goto :goto_1
.end method

.method public queryAccountSecurity()V
    .locals 2

    .prologue
    .line 1891
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1892
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "jdHomeShowItem"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1893
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$20;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$20;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1957
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1958
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1960
    return-void
.end method

.method public recoveryPlug()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method
