.class public Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
.super Landroid/app/ActivityGroup;
.source "ScrollableTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;,
        Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;,
        Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;,
        Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;,
        Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;,
        Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;
    }
.end annotation


# static fields
.field public static final CLEAR_HISTORY_FLAG:Ljava/lang/String; = "com.360buy:clearHistoryFlag"

.field public static final HOME_ACTIVITY_BUTTON_IS_DOWN:Ljava/lang/String; = "home_button_down"

.field public static final NAVIGATION_CATEGORY:I = 0x2

.field public static final NAVIGATION_DISPLAY_FLAG:Ljava/lang/String; = "com.360buy:navigationDisplayFlag"

.field public static final NAVIGATION_DISPLAY_HIDE:I = -0x1

.field public static final NAVIGATION_DISPLAY_SHOW:I = 0x0

.field public static final NAVIGATION_FLAG:Ljava/lang/String; = "com.360buy:navigationFlag"

.field public static final NAVIGATION_HOME:I = 0x0

.field public static final NAVIGATION_ID:Ljava/lang/String; = "com.360buy:navigationId"

.field public static final NAVIGATION_MORE:I = 0x5

.field public static final NAVIGATION_MYJD:I = 0x4

.field public static final NAVIGATION_SERACH:I = 0x1

.field public static final NAVIGATION_SHOPPINGCAR:I = 0x3

.field public static final RESEND_FLAG:Ljava/lang/String; = "com.360buy:resendFlag"

.field public static final SINGLE_INSTANCE_FLAG:Ljava/lang/String; = "com.360buy:singleInstanceFlag"

.field public static final TASK_ID_FLAG:Ljava/lang/String; = "com.360buy:taskIdFlag"

.field public static final USE_HISTORY_FLAG:Ljava/lang/String; = "com.360buy:useHistoryFlag"

.field private static hideNavigationActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static isCanOnTouch:Z


# instance fields
.field private final KEY_IDS:Ljava/lang/String;

.field private final KEY_NEED_RESTORE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private activityManager:Landroid/app/LocalActivityManager;

.field protected arrow_left:Landroid/widget/ImageView;

.field protected arrow_right:Landroid/widget/ImageView;

.field protected bottomBar:Landroid/widget/HorizontalScrollView;

.field protected bottomRadioGroup:Landroid/widget/RadioGroup;

.field private buttonActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;",
            ">;"
        }
    .end annotation
.end field

.field private buttonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;

.field private contentViewLayout:Landroid/widget/LinearLayout;

.field private contentViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private context:Landroid/content/Context;

.field private counter:I

.field private defaultOffShade:I

.field private defaultOnShade:I

.field private isPrevNotInRecord:Z

.field private isShowArrow:Z

.field private jump:Z

.field private layoutListener:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;

.field private navigationDisplayMode:I

.field private radioGroupListener:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;

.field private radioOnTouchListener:Landroid/view/View$OnTouchListener;

.field private recordIdAndRadioId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected recordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;",
            ">;"
        }
    .end annotation
.end field

.field private resendRequests:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private singleInstanceRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;",
            ">;"
        }
    .end annotation
.end field

.field private states:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field private titleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isCanOnTouch:Z

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->hideNavigationActivityList:Ljava/util/ArrayList;

    .line 747
    sget-object v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->hideNavigationActivityList:Ljava/util/ArrayList;

    const-class v1, Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 47
    const-string v0, "ScrollableTabActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->singleInstanceRecordList:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordIdAndRadioId:Ljava/util/HashMap;

    .line 182
    const-string v0, "needRestore"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->KEY_NEED_RESTORE:Ljava/lang/String;

    .line 183
    const-string v0, "ids"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->KEY_IDS:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->layoutListener:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;

    .line 299
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$1;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->radioOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 568
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->resendRequests:Ljava/util/Stack;

    .line 1035
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->radioGroupListener:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->navigationDisplayMode:I

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonActionList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->checkNoEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->defaultOffShade:I

    return v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->defaultOnShade:I

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->states:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->titleList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isShowArrow:Z

    return v0
.end method

.method private check(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->findRadioId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 841
    .local v0, radioId:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 842
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->checkNoEvent(Ljava/lang/Integer;)V

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->checkNoEvent(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private checkNoEvent(Ljava/lang/Integer;)V
    .locals 2
    .parameter "radioId"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 863
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->radioGroupListener:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->setOldFlag(Z)V

    .line 864
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->radioGroupListener:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->setmNow(I)V

    .line 865
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 867
    :cond_0
    return-void
.end method

.method private clearHistoryRecord(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 558
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    invoke-direct {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;-><init>()V

    .line 559
    .local v0, record:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    invoke-virtual {v0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->setIntent(Landroid/content/Intent;)V

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    return-void
.end method

.method private collectErrorData(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 724
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 725
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 726
    .local v3, stringBuffer:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "activity class name\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 727
    const-string v5, "\uff0cintent content\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 730
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 738
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->resetErrorInfo(Ljava/lang/String;)V

    .line 740
    return-void

    .line 731
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, key:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v4, "<null>"

    .line 734
    .local v4, value:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\uff0c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 733
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private doJump()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->jump:Z

    .line 409
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->removeRecordTop()V

    .line 410
    return-void
.end method

.method private findRadioId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "id"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordIdAndRadioId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private findsingleInstanceRecord(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    .locals 4
    .parameter "intent"

    .prologue
    .line 542
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->singleInstanceRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 548
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 543
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 544
    .local v1, unit:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private getNavigationId(Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 2
    .parameter "intent"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isNavigation(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "com.360buy:navigationId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTaskId(Landroid/content/Intent;)Ljava/util/HashMap;
    .locals 1
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    const-string v0, "com.360buy:taskIdFlag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public static isClearHistory(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 508
    const-string v0, "com.360buy:clearHistoryFlag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isJump()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->jump:Z

    return v0
.end method

.method private isNavigation(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 451
    const-string v0, "com.360buy:navigationFlag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isResend(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 525
    const-string v0, "com.360buy:resendFlag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSingleInstance(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 488
    const-string v0, "com.360buy:singleInstanceFlag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUseHistoryRecord(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 498
    const-string v0, "com.360buy:useHistoryFlag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected addTab(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;)V
    .locals 0
    .parameter "style"
    .parameter "action"

    .prologue
    .line 363
    return-void
.end method

.method public clearJump()V
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isJump()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->jump:Z

    .line 419
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 15

    .prologue
    .line 307
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v11}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 309
    const/4 v5, 0x5

    .line 311
    .local v5, optimum_visible_items_in_portrait_mode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    .line 312
    .local v9, window:Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 313
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 315
    .local v10, window_width:I
    const/high16 v11, 0x4280

    invoke-static {v11}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v11

    div-int v5, v10, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v1           #display:Landroid/view/Display;
    .end local v9           #window:Landroid/view/WindowManager;
    .end local v10           #window_width:I
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 322
    .local v6, screen_width:I
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonActionList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-gt v11, v5, :cond_0

    .line 324
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonActionList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    div-int v8, v6, v11

    .line 331
    .local v8, width:I
    :goto_1
    sput v8, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->width:I

    .line 332
    sput v6, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->screen_width:I

    .line 333
    new-instance v11, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v8, v12}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    iput-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;

    .line 335
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonActionList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lt v3, v11, :cond_1

    .line 357
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomRadioGroup:Landroid/widget/RadioGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RadioGroup;->check(I)V

    .line 358
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonActionList:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;

    .line 359
    .local v0, action:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->run()V

    .line 360
    return-void

    .line 316
    .end local v0           #action:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;
    .end local v3           #i:I
    .end local v6           #screen_width:I
    .end local v8           #width:I
    :catch_0
    move-exception v2

    .line 317
    .local v2, e:Ljava/lang/Exception;
    const/4 v5, 0x5

    goto :goto_0

    .line 327
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v6       #screen_width:I
    :cond_0
    div-int/lit8 v8, v6, 0x5

    .line 328
    .restart local v8       #width:I
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isShowArrow:Z

    .line 329
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->arrow_right:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 336
    .restart local v3       #i:I
    :cond_1
    new-instance v7, Lcom/jingdong/app/mall/utils/frame/TabBarButton;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;-><init>(Landroid/content/Context;)V

    .line 337
    .local v7, tabButton:Lcom/jingdong/app/mall/utils/frame/TabBarButton;
    const/4 v11, 0x3

    if-ne v3, v11, :cond_2

    .line 338
    invoke-virtual {v7}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->getStateController()Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    move-result-object v11

    invoke-static {v11}, Lcom/jingdong/app/mall/MainFrameActivity;->setCarStateController(Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;)V

    .line 340
    :cond_2
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->states:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 342
    .local v4, iconStates:[I
    array-length v11, v4

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 343
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->titleList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v4, v12

    invoke-virtual {v7, v11, v12}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->setState(Ljava/lang/String;I)V

    .line 349
    :cond_3
    :goto_3
    const v11, 0x7f0201f4

    invoke-virtual {v7, v11}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->setBackgroundResource(I)V

    .line 350
    invoke-virtual {v7, v3}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->setId(I)V

    .line 351
    const/16 v11, 0x11

    invoke-virtual {v7, v11}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->setGravity(I)V

    .line 352
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->radioOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v11}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 354
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomRadioGroup:Landroid/widget/RadioGroup;

    iget-object v12, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;

    invoke-virtual {v11, v7, v3, v12}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 344
    :cond_4
    array-length v11, v4

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 345
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->titleList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v4, v12

    const/4 v13, 0x1

    aget v13, v4, v13

    invoke-virtual {v7, v11, v12, v13}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->setState(Ljava/lang/String;II)V

    goto :goto_3

    .line 346
    :cond_5
    array-length v11, v4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 347
    iget-object v11, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->titleList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v4, v12

    const/4 v13, 0x1

    aget v13, v4, v13

    const/4 v14, 0x2

    aget v14, v4, v14

    invoke-virtual {v7, v11, v12, v13, v14}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->setState(Ljava/lang/String;III)V

    goto :goto_3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1012
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->activityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1013
    .local v0, currentActivity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1014
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1027
    .end local v0           #currentActivity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return v2

    .line 1016
    .restart local v0       #currentActivity:Landroid/app/Activity;
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x43

    if-eq v3, v4, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1022
    :cond_2
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1023
    .end local v0           #currentActivity:Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 1027
    .local v1, e:Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 987
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->removeRecordTop()V

    .line 988
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 990
    .local v0, cur:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 995
    .end local v0           #cur:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    :goto_0
    return-void

    .line 993
    :cond_0
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/LoginUser;->setUserStateOff(Z)V

    .line 994
    invoke-super {p0}, Landroid/app/ActivityGroup;->finish()V

    goto :goto_0
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->finish()V

    .line 1007
    return-void
.end method

.method public finishThis()V
    .locals 0

    .prologue
    .line 1001
    invoke-super {p0}, Landroid/app/ActivityGroup;->finish()V

    .line 1002
    return-void
.end method

.method public getBottomBarBottom()I
    .locals 2

    .prologue
    .line 1239
    const/4 v0, 0x0

    .line 1240
    .local v0, bottomBarBottom:I
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->layoutListener:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->getOriginalHeigth()I

    move-result v0

    .line 1244
    return v0
.end method

.method public hideNavigation()V
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomBar:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    return-void
.end method

.method public markJump()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->jump:Z

    .line 394
    return-void
.end method

.method public newActivity(Ljava/lang/String;Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    .locals 2
    .parameter "id"
    .parameter "intent"

    .prologue
    .line 615
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    invoke-direct {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;-><init>()V

    .line 616
    .local v0, record:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    invoke-virtual {v0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->setId(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, p2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->setIntent(Landroid/content/Intent;)V

    .line 618
    invoke-static {p2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isSingleInstance(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->singleInstanceRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->newActivity(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;)V

    .line 622
    return-object v0
.end method

.method public newActivity(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;)V
    .locals 9
    .parameter "record"

    .prologue
    const/4 v8, 0x0

    .line 637
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isResend(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 641
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->removeRecordTop()V

    .line 649
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 650
    iget-object v6, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 651
    .local v2, prevRecord:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->getTaskId(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v3

    .line 652
    .local v3, prevTaskId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_2

    .line 653
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->getTaskId(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v4

    .line 654
    .local v4, taskId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 659
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->removeRecordTop()V

    .line 668
    .end local v2           #prevRecord:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    .end local v3           #prevTaskId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #taskId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isSingleInstance(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 669
    iget-object v6, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 670
    iget-object v6, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 673
    :cond_3
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isUseHistoryRecord(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 675
    iget-object v6, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 677
    .local v0, index:I
    if-lez v0, :cond_4

    .line 679
    iget-object v6, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 681
    .local v5, temp:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 682
    move-object p1, v5

    .line 688
    .end local v0           #index:I
    .end local v5           #temp:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    :cond_4
    iget-object v6, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 695
    :cond_5
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->getNavigationId(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v1

    .line 696
    .local v1, navigationId:Ljava/lang/Integer;
    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->findRadioId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_6

    .line 700
    iget-object v6, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordIdAndRadioId:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    :cond_6
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->collectErrorData(Landroid/content/Intent;)V

    .line 706
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 708
    return-void

    .line 642
    .end local v1           #navigationId:Ljava/lang/Integer;
    :cond_7
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isJump()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->doJump()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 104
    iput-object p0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->context:Landroid/content/Context;

    .line 106
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->activityManager:Landroid/app/LocalActivityManager;

    .line 107
    const v4, 0x7f030048

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->setContentView(I)V

    .line 114
    const v4, 0x7f0c01c4

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->contentViewLayout:Landroid/widget/LinearLayout;

    .line 115
    const v4, 0x7f0c01c5

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalScrollView;

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomBar:Landroid/widget/HorizontalScrollView;

    .line 116
    const v4, 0x7f0c01c6

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomRadioGroup:Landroid/widget/RadioGroup;

    .line 117
    const v4, 0x7f0c01c7

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->arrow_left:Landroid/widget/ImageView;

    .line 118
    const v4, 0x7f0c01c8

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->arrow_right:Landroid/widget/ImageView;

    .line 119
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->contentViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    iput v7, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->defaultOffShade:I

    .line 124
    const/4 v4, 0x3

    iput v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->defaultOnShade:I

    .line 126
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomRadioGroup:Landroid/widget/RadioGroup;

    iget-object v5, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->radioGroupListener:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 127
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonActionList:Ljava/util/List;

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->titleList:Ljava/util/List;

    .line 129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->states:Ljava/util/List;

    .line 131
    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    const/16 v5, 0x40

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;

    .line 134
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, decorView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 137
    .local v3, viewTreeObserver:Landroid/view/ViewTreeObserver;
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #decorView:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 139
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 141
    .local v2, view:Landroid/view/View;
    instance-of v4, v2, Landroid/view/ViewStub;

    if-eqz v4, :cond_0

    .line 142
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 145
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->layoutListener:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;

    invoke-virtual {v4, v2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->init(Landroid/view/View;)V

    .line 146
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->layoutListener:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 147
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->layoutListener:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 148
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomBar:Landroid/widget/HorizontalScrollView;

    new-instance v5, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$2;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 213
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    const-string v4, "needRestore"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    const-string v4, "ids"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 215
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 217
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 225
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 226
    .local v3, record:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #record:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 235
    return-void

    .line 217
    .restart local v1       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, id:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 219
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    invoke-direct {v3}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;-><init>()V

    .line 220
    .restart local v3       #record:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    invoke-virtual {v3, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->setId(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v3, v2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->setIntent(Landroid/content/Intent;)V

    .line 222
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 229
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #record:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 190
    :cond_0
    const-string v2, "needRestore"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 199
    const-string v2, "ids"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 200
    const-string v2, "needRestore"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 195
    .restart local v0       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 196
    .local v1, record:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 202
    .end local v0           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #record:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public pushResendRequest(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->resendRequests:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    return-void
.end method

.method public removeAllRecords(Z)V
    .locals 6
    .parameter "isDestoryActivity"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 951
    if-nez p1, :cond_2

    .line 952
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_1

    .line 963
    :cond_0
    return-void

    .line 953
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 952
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 956
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .restart local v0       #i:I
    :goto_1
    if-le v0, v4, :cond_0

    .line 957
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 958
    .local v1, old:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isSingleInstance(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 959
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->activityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 956
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public removeAllSingleInstances()V
    .locals 5

    .prologue
    .line 972
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->singleInstanceRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gtz v0, :cond_0

    .line 983
    return-void

    .line 973
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->singleInstanceRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 977
    .local v1, old:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->activityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 978
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->singleInstanceRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 972
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public removeRecord(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 918
    :try_start_0
    iget-boolean v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isPrevNotInRecord:Z

    if-eqz v1, :cond_1

    .line 919
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isPrevNotInRecord:Z

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 926
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 928
    .local v0, old:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isSingleInstance(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->activityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 932
    .end local v0           #old:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removeRecordSecond()V
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->removeRecord(I)V

    .line 914
    return-void
.end method

.method public removeRecordTop()V
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->removeRecord(I)V

    .line 899
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 374
    return-void
.end method

.method protected setDefaultShade(II)V
    .locals 0
    .parameter "offShade"
    .parameter "onShade"

    .prologue
    .line 367
    iput p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->defaultOffShade:I

    .line 368
    iput p2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->defaultOnShade:I

    .line 369
    return-void
.end method

.method protected showActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .parameter "id"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 756
    const-string v4, "com.360buy:navigationDisplayFlag"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->navigationDisplayMode:I

    .line 758
    sget-object v4, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->hideNavigationActivityList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 759
    iput v6, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->navigationDisplayMode:I

    .line 762
    :cond_0
    iget v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->navigationDisplayMode:I

    packed-switch v4, :pswitch_data_0

    .line 767
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->showNavigation()V

    .line 771
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->contentViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 777
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->activityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v4, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 791
    .local v3, view:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->resendRequests:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 792
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->resendRequests:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 793
    .local v2, runnable:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->resendRequests:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 794
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 825
    .end local v2           #runnable:Ljava/lang/Runnable;
    :goto_2
    return-void

    .line 764
    .end local v3           #view:Landroid/view/View;
    :pswitch_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->hideNavigation()V

    goto :goto_0

    .line 778
    :catch_0
    move-exception v1

    .line 779
    .local v1, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cleanMost()V

    .line 780
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->activityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v4, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_1

    .line 797
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 798
    .local v0, currentActivity:Landroid/app/Activity;
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 799
    instance-of v4, v0, Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v4, :cond_2

    .line 800
    check-cast v0, Lcom/jingdong/app/mall/utils/MyActivity;

    .end local v0           #currentActivity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/MyActivity;->canNotResend()V

    .line 805
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->contentViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ne v4, v6, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_3

    .line 806
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->contentViewLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->contentViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    :cond_3
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->check(Ljava/lang/String;)V

    goto :goto_2

    .line 762
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public showNavigation()V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->bottomBar:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    return-void
.end method

.method public startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    .locals 3
    .parameter "intent"

    .prologue
    .line 591
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isSingleInstance(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->findsingleInstanceRecord(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    move-result-object v0

    .line 596
    .local v0, r:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {v0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;->setIntent(Landroid/content/Intent;)V

    .line 599
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->newActivity(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;)V

    .line 608
    .end local v0           #r:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;
    :goto_0
    return-object v0

    .line 602
    :cond_0
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isClearHistory(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->clearHistoryRecord(Landroid/content/Intent;)V

    .line 607
    :cond_1
    iget v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->counter:I

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->newActivity(Ljava/lang/String;Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    move-result-object v0

    goto :goto_0
.end method
