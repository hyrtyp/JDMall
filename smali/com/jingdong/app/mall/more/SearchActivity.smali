.class public Lcom/jingdong/app/mall/more/SearchActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;
    }
.end annotation


# static fields
.field private static DISPLAY_HEIGHT:I = 0x0

.field private static DISPLAY_WIDTH:I = 0x0

.field public static final REQUEST_SEARCH_CODE:I = 0x110

.field public static final RESET_ANIMATION_FLAG:I = 0x6e

.field private static final SHAKE_THRESHOLD:I = 0x320

.field protected static final SHOW_HOT_WORDS:I = 0x6f

.field private static final TAG:Ljava/lang/String; = "SearchActivity"

.field private static final VOICE_RECOGNITION_REQUEST_CODE:I = 0x4d2

.field public static currentWord:Ljava/lang/String;

.field public static hasSubmit:Z

.field private static horizontal:I

.field public static hotWordsJson:Ljava/lang/String;

.field private static vertical:I


# instance fields
.field public final KEY_WORDS:Ljava/lang/String;

.field private autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private delHistoryButton:Landroid/widget/Button;

.field private dialogBuilder:Landroid/app/AlertDialog$Builder;

.field private emptyView:Landroid/view/View;

.field fromMenuFlag:Z

.field private final handler:Landroid/os/Handler;

.field private hasInitHotWord:Z

.field private head:Landroid/widget/RelativeLayout;

.field private historyScrollView:Landroid/widget/ScrollView;

.field public hotWordsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hotword:Ljava/lang/String;

.field private isAnimationRunning:Z

.field private isFromHome:Z

.field private isInitHistory:Z

.field private isShowResult:Z

.field protected isUseHistoryWord:Z

.field private keyword:Ljava/lang/String;

.field private lastUpdate:J

.field private last_x:F

.field private last_y:F

.field private last_z:F

.field private listDialog:Landroid/app/AlertDialog;

.field private listView:Landroid/widget/ListView;

.field private listener:Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;

.field private final needSensor:Z

.field private otherHeight:I

.field private final random:Ljava/util/Random;

.field private searchButton:Landroid/widget/ImageButton;

.field private searchCleanButton:Landroid/widget/ImageButton;

.field private sensorMgr:Landroid/hardware/SensorManager;

.field private voiceButton:Landroid/widget/ImageButton;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    sput-object v1, Lcom/jingdong/app/mall/more/SearchActivity;->currentWord:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/more/SearchActivity;->hasSubmit:Z

    .line 108
    sput-object v1, Lcom/jingdong/app/mall/more/SearchActivity;->hotWordsJson:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->hotWordsSet:Ljava/util/HashSet;

    .line 110
    const-string v0, "keywords"

    iput-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->KEY_WORDS:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->random:Ljava/util/Random;

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->lastUpdate:J

    .line 124
    iput-boolean v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isAnimationRunning:Z

    .line 126
    iput-boolean v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isShowResult:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->needSensor:Z

    .line 142
    new-instance v0, Lcom/jingdong/app/mall/more/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/SearchActivity$1;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->handler:Landroid/os/Handler;

    .line 156
    iput-boolean v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isUseHistoryWord:Z

    .line 157
    iput-boolean v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->hasInitHotWord:Z

    .line 158
    iput-boolean v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isInitHistory:Z

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/SearchActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isAnimationRunning:Z

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->init()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->showSearchResult()V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->delHistoryButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/more/SearchActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isInitHistory:Z

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->listDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/more/SearchActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->listDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->showHotKeyWords()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/more/SearchActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/more/SearchActivity;->searchSubmit(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->visiableHotWordView()V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/more/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/more/SearchActivity;->searchSubmit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/more/SearchActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->hasInitHotWord:Z

    return v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->voiceButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->searchCleanButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private getTextViewAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 798
    const/4 v0, 0x0

    .line 800
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->random:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 801
    const v1, 0x7f040006

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 806
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->random:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 807
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 808
    return-object v0

    .line 803
    :cond_0
    const v1, 0x7f040008

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 756
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v1

    sput v1, Lcom/jingdong/app/mall/more/SearchActivity;->DISPLAY_HEIGHT:I

    .line 757
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v1

    sput v1, Lcom/jingdong/app/mall/more/SearchActivity;->DISPLAY_WIDTH:I

    .line 759
    sget v1, Lcom/jingdong/app/mall/more/SearchActivity;->DISPLAY_HEIGHT:I

    div-int/lit8 v1, v1, 0x1e

    sput v1, Lcom/jingdong/app/mall/more/SearchActivity;->vertical:I

    .line 760
    sget v1, Lcom/jingdong/app/mall/more/SearchActivity;->DISPLAY_WIDTH:I

    div-int/lit8 v1, v1, 0x14

    sput v1, Lcom/jingdong/app/mall/more/SearchActivity;->horizontal:I

    .line 762
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 763
    .local v0, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 764
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->head:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->otherHeight:I

    .line 765
    return-void
.end method

.method private initHotWordsString(Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 3
    .parameter "keywords"

    .prologue
    .line 818
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->hotWordsSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 819
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 828
    return-void

    .line 821
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->hotWordsSet:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private searchSubmit(Ljava/lang/String;)V
    .locals 1
    .parameter "keyWord"

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/more/SearchActivity;->searchSubmit(Ljava/lang/String;Z)V

    .line 541
    return-void
.end method

.method private searchSubmit(Ljava/lang/String;Z)V
    .locals 3
    .parameter "keyWord"
    .parameter "isHotkeyword"

    .prologue
    const/4 v2, 0x1

    .line 510
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    sput-object p1, Lcom/jingdong/app/mall/more/SearchActivity;->currentWord:Ljava/lang/String;

    .line 514
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isHotkeyword"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "keyWord"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstToList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 517
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 518
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearComposingText()V

    .line 520
    invoke-static {p1}, Lcom/jingdong/common/database/table/SearchHistoryTable;->saveSearchHistory(Ljava/lang/String;)V

    .line 522
    sput-boolean v2, Lcom/jingdong/app/mall/more/SearchActivity;->hasSubmit:Z

    .line 524
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->finish()V

    goto :goto_0
.end method

.method private showDialog()V
    .locals 5

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 545
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 546
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->startVoiceRecognitionActivity()V

    .line 583
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0701b8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 550
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0701ba

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 551
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f07014d

    new-instance v4, Lcom/jingdong/app/mall/more/SearchActivity$11;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/more/SearchActivity$11;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 564
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0701a1

    new-instance v4, Lcom/jingdong/app/mall/more/SearchActivity$12;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/more/SearchActivity$12;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 572
    new-instance v2, Lcom/jingdong/app/mall/more/SearchActivity$13;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/SearchActivity$13;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/SearchActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showHotKeyWords()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 773
    iget v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->otherHeight:I

    if-ge v0, v1, :cond_1

    .line 774
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x6f

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iput-boolean v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->hasInitHotWord:Z

    .line 780
    iput-boolean v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isAnimationRunning:Z

    .line 781
    iput-boolean v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isShowResult:Z

    .line 782
    iget-boolean v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isInitHistory:Z

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSearchResult()V
    .locals 2

    .prologue
    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isShowResult:Z

    .line 732
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->historyScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->emptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 734
    return-void
.end method

.method private startVoiceRecognitionActivity()V
    .locals 3

    .prologue
    .line 589
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v1, "android.speech.extra.PROMPT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 595
    return-void
.end method

.method private visiableHotWordView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->historyScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iput-boolean v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isShowResult:Z

    .line 448
    iput-boolean v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isInitHistory:Z

    .line 449
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 877
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 602
    const/16 v3, 0x4d2

    if-ne p1, v3, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 604
    const-string v3, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 605
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 606
    .local v1, items:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 609
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SearchActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0701b9

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 610
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SearchActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/jingdong/app/mall/more/SearchActivity$14;

    invoke-direct {v4, p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity$14;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;[Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 624
    new-instance v3, Lcom/jingdong/app/mall/more/SearchActivity$15;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/more/SearchActivity$15;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/more/SearchActivity;->post(Ljava/lang/Runnable;)V

    .line 636
    .end local v0           #i:I
    .end local v1           #items:[Ljava/lang/String;
    .end local v2           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 637
    return-void

    .line 607
    .restart local v0       #i:I
    .restart local v1       #items:[Ljava/lang/String;
    .restart local v2       #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 836
    instance-of v1, p1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 841
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 839
    check-cast v0, Landroid/widget/TextView;

    .line 840
    .local v0, tx:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/more/SearchActivity;->searchSubmit(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 893
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 894
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->init()V

    .line 895
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const v1, 0x7f0300f7

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->setContentView(I)V

    .line 166
    new-instance v1, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->listener:Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;

    .line 168
    const v1, 0x7f0c061b

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->voiceButton:Landroid/widget/ImageButton;

    .line 169
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->voiceButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->listener:Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v1, 0x7f0c0619

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->searchButton:Landroid/widget/ImageButton;

    .line 171
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->searchButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->listener:Lcom/jingdong/app/mall/more/SearchActivity$ClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromMenuFlag"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->fromMenuFlag:Z

    .line 173
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hotword"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->hotword:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "keyword"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->keyword:Ljava/lang/String;

    .line 175
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 177
    const v1, 0x7f0c061a

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->searchCleanButton:Landroid/widget/ImageButton;

    .line 178
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->sensorMgr:Landroid/hardware/SensorManager;

    .line 180
    const v1, 0x7f0c00a5

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 181
    const v1, 0x7f0c061d

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->listView:Landroid/widget/ListView;

    .line 182
    const v1, 0x7f0c05be

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->historyScrollView:Landroid/widget/ScrollView;

    .line 183
    const v1, 0x7f0c061e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->delHistoryButton:Landroid/widget/Button;

    .line 184
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->delHistoryButton:Landroid/widget/Button;

    new-instance v2, Lcom/jingdong/app/mall/more/SearchActivity$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/SearchActivity$2;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v1, 0x7f0c00a1

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->head:Landroid/widget/RelativeLayout;

    .line 195
    const v1, 0x7f0c061c

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->emptyView:Landroid/view/View;

    .line 197
    const/4 v1, -0x1

    iput v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->otherHeight:I

    .line 198
    sget-boolean v1, Lcom/jingdong/app/mall/more/SearchActivity;->hasSubmit:Z

    if-nez v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->hotword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/jingdong/app/mall/more/SearchActivity$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/SearchActivity$3;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 213
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/jingdong/app/mall/more/SearchActivity$4;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/SearchActivity$4;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/jingdong/app/mall/more/SearchActivity$5;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/SearchActivity$5;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/jingdong/app/mall/more/SearchActivity$6;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/SearchActivity$6;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 372
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/jingdong/app/mall/more/SearchActivity$7;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/SearchActivity$7;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 383
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, type:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isFromHome"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isFromHome:Z

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 391
    :cond_1
    new-instance v1, Lcom/jingdong/app/mall/more/SearchActivity$8;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/more/SearchActivity$8;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;Ljava/lang/String;)V

    .line 409
    const/16 v2, 0x32

    .line 391
    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/more/SearchActivity;->post(Ljava/lang/Runnable;I)V

    .line 411
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/jingdong/app/mall/more/SearchActivity$9;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/SearchActivity$9;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 440
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->showHistory()V

    .line 441
    return-void

    .line 199
    .end local v0           #type:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->hotword:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isUseHistoryWord:Z

    .line 693
    sget-object v0, Lcom/jingdong/app/mall/more/SearchActivity;->currentWord:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 694
    new-instance v0, Lcom/jingdong/app/mall/more/SearchActivity$16;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/SearchActivity$16;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 713
    :cond_0
    iget-boolean v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isFromHome:Z

    if-eqz v0, :cond_1

    .line 714
    new-instance v0, Lcom/jingdong/app/mall/more/SearchActivity$17;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/SearchActivity$17;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;)V

    .line 724
    const/16 v1, 0x1f4

    .line 714
    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->post(Ljava/lang/Runnable;I)V

    .line 726
    :cond_1
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 727
    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 10
    .parameter "sensor"
    .parameter "values"

    .prologue
    const/4 v9, 0x2

    .line 852
    if-ne p1, v9, :cond_1

    .line 853
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 855
    .local v0, curTime:J
    iget-wide v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->lastUpdate:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x64

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 856
    iget-wide v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->lastUpdate:J

    sub-long v2, v0, v5

    .line 857
    .local v2, diffTime:J
    iput-wide v0, p0, Lcom/jingdong/app/mall/more/SearchActivity;->lastUpdate:J

    .line 859
    const/4 v5, 0x0

    aget v5, p2, v5

    iput v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->x:F

    .line 860
    const/4 v5, 0x1

    aget v5, p2, v5

    iput v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->y:F

    .line 861
    aget v5, p2, v9

    iput v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->z:F

    .line 863
    iget v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->x:F

    iget v6, p0, Lcom/jingdong/app/mall/more/SearchActivity;->y:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/jingdong/app/mall/more/SearchActivity;->z:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/jingdong/app/mall/more/SearchActivity;->last_x:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/jingdong/app/mall/more/SearchActivity;->last_y:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/jingdong/app/mall/more/SearchActivity;->last_z:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    long-to-float v6, v2

    div-float/2addr v5, v6

    const v6, 0x461c4000

    mul-float v4, v5, v6

    .line 865
    .local v4, speed:F
    const/high16 v5, 0x4448

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    iget-boolean v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isAnimationRunning:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isShowResult:Z

    if-nez v5, :cond_0

    .line 866
    iget-object v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->handler:Landroid/os/Handler;

    const/16 v6, 0x6f

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 868
    :cond_0
    iget v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->x:F

    iput v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->last_x:F

    .line 869
    iget v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->y:F

    iput v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->last_y:F

    .line 870
    iget v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->z:F

    iput v5, p0, Lcom/jingdong/app/mall/more/SearchActivity;->last_z:F

    .line 873
    .end local v0           #curTime:J
    .end local v2           #diffTime:J
    .end local v4           #speed:F
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 884
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onWindowFocusChanged(Z)V

    .line 885
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->init()V

    .line 886
    return-void
.end method

.method protected showHistory()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 453
    invoke-static {}, Lcom/jingdong/common/database/table/SearchHistoryTable;->getAllSearchHistory()Ljava/util/ArrayList;

    move-result-object v3

    .line 455
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SearchHistory;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v7, :cond_2

    .line 456
    :cond_0
    iget-boolean v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->hasInitHotWord:Z

    if-nez v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->visiableHotWordView()V

    .line 507
    :goto_0
    return-void

    .line 463
    :cond_2
    new-instance v0, Lcom/jingdong/app/mall/more/SearchActivity$10;

    .line 467
    const v4, 0x7f03006e

    .line 468
    new-array v5, v7, [Ljava/lang/String;

    .line 469
    const-string v1, "word"

    aput-object v1, v5, v8

    .line 471
    new-array v6, v7, [I

    .line 472
    const v1, 0x7f0c0294

    aput v1, v6, v8

    move-object v1, p0

    move-object v2, p0

    .line 463
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/more/SearchActivity$10;-><init>(Lcom/jingdong/app/mall/more/SearchActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 503
    .local v0, arrayAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->delHistoryButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 504
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 505
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SearchActivity;->showSearchResult()V

    .line 506
    iput-boolean v7, p0, Lcom/jingdong/app/mall/more/SearchActivity;->isInitHistory:Z

    goto :goto_0
.end method
