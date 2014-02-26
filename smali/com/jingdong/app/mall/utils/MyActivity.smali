.class public Lcom/jingdong/app/mall/utils/MyActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MyActivity.java"

# interfaces
.implements Lcom/jingdong/common/frame/IMyActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/utils/MyActivity$FragmentPlugLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyActivity"

.field private static hintDialogBuilder:Landroid/app/AlertDialog$Builder;


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;

.field private classLoader:Lcom/jingdong/app/mall/utils/MyActivity$FragmentPlugLoader;

.field private destroyListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/frame/IDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private guideResourceId:I

.field private handler:Landroid/os/Handler;

.field private imageViewLayout:Landroid/widget/FrameLayout;

.field private isCanResend:Z

.field private mUiThread:Ljava/lang/Thread;

.field private myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

.field private pauseListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/frame/IPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Landroid/content/res/Resources;

.field private resumeListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/frame/IResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Landroid/view/ViewGroup;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private theme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->destroyListenerList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->pauseListenerList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resumeListenerList:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->isCanResend:Z

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->guideResourceId:I

    .line 59
    return-void
.end method

.method private static catchToastTip(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 595
    const v4, 0x7f070417

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 597
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    :cond_0
    const v4, 0x7f070414

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    .end local v2           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v3, v0

    .line 610
    .local v3, toastMsg:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    .line 611
    .local v1, myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    if-eqz v1, :cond_2

    .line 612
    new-instance v4, Lcom/jingdong/app/mall/utils/MyActivity$4;

    invoke-direct {v4, p0, v3}, Lcom/jingdong/app/mall/utils/MyActivity$4;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 618
    :cond_2
    return-void

    .line 602
    .end local v1           #myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    .end local v3           #toastMsg:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 603
    const v4, 0x7f070416

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 604
    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 605
    const v4, 0x7f070415

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1

    .prologue
    .line 1048
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    return-object v0
.end method

.method private getUiThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->mUiThread:Ljava/lang/Thread;

    return-object v0
.end method

.method private startActivityForResultNoExceptionForFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2
    .parameter "fragment"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 551
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 560
    .local v0, ane:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->catchToastTip(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 562
    .end local v0           #ane:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addDestroyListener(Lcom/jingdong/common/frame/IDestroyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->destroyListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->destroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_0
    return-void
.end method

.method protected addGuideImage(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, -0x1

    const/4 v3, -0x2

    .line 940
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    .line 945
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    iget v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->guideResourceId:I

    if-eqz v2, :cond_0

    .line 953
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    .line 954
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 956
    .local v1, imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 957
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 958
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 959
    .local v0, guideImage:Landroid/widget/ImageView;
    iget v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->guideResourceId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 960
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 962
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 963
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/utils/CommonUtil;->setIsGuided(Ljava/lang/String;)V

    .line 965
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/jingdong/app/mall/utils/MyActivity$6;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/utils/MyActivity$6;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 979
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method protected addGuideImage(Landroid/view/ViewGroup;III)V
    .locals 6
    .parameter "view"
    .parameter "gravity"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, -0x1

    .line 991
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    .line 996
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    iget v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->guideResourceId:I

    if-eqz v2, :cond_0

    .line 1004
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    .line 1005
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1006
    .local v1, imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1007
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1008
    .local v0, guideImage:Landroid/widget/ImageView;
    iget v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->guideResourceId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1009
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1010
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1011
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1012
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/utils/CommonUtil;->setIsGuided(Ljava/lang/String;)V

    .line 1014
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/jingdong/app/mall/utils/MyActivity$7;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/utils/MyActivity$7;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1028
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1029
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public addPauseListener(Lcom/jingdong/common/frame/IPauseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->pauseListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->pauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_0
    return-void
.end method

.method public addResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resumeListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resumeListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_0
    return-void
.end method

.method public alert(I)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 407
    sget-object v0, Lcom/jingdong/app/mall/utils/MyActivity;->hintDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jingdong/app/mall/utils/MyActivity;->hintDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 409
    sget-object v0, Lcom/jingdong/app/mall/utils/MyActivity;->hintDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0701a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 410
    sget-object v0, Lcom/jingdong/app/mall/utils/MyActivity;->hintDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 411
    sget-object v0, Lcom/jingdong/app/mall/utils/MyActivity;->hintDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07014d

    new-instance v2, Lcom/jingdong/app/mall/utils/MyActivity$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/utils/MyActivity$1;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 418
    :cond_0
    sget-object v0, Lcom/jingdong/app/mall/utils/MyActivity;->hintDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 419
    return-void
.end method

.method public attemptRunOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 789
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getUiThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 790
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 794
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public canNotResend()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->isCanResend:Z

    .line 158
    return-void
.end method

.method public createTaskId(Landroid/content/Intent;)Ljava/util/HashMap;
    .locals 3
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
    .line 743
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 744
    .local v0, taskId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "className"

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    return-object v0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->hideSoftInput()V

    .line 901
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 902
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->assetManager:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->assetManager:Landroid/content/res/AssetManager;

    goto :goto_0

    .line 128
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getBooleanFromPreference(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 866
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBooleanFromPreference(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->classLoader:Lcom/jingdong/app/mall/utils/MyActivity$FragmentPlugLoader;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/jingdong/app/mall/utils/MyActivity$FragmentPlugLoader;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/utils/MyActivity$FragmentPlugLoader;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->classLoader:Lcom/jingdong/app/mall/utils/MyActivity$FragmentPlugLoader;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->classLoader:Lcom/jingdong/app/mall/utils/MyActivity$FragmentPlugLoader;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;
    .locals 1

    .prologue
    .line 434
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    return-object v0
.end method

.method public getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;
    .locals 2
    .parameter "type"

    .prologue
    .line 438
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 439
    .local v0, setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    invoke-virtual {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setMyActivity(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 440
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 441
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    return-object v1
.end method

.method public getHttpGroupaAsynPool(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)Lcom/jingdong/common/utils/HttpGroup;
    .locals 1
    .parameter "setting"

    .prologue
    .line 445
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    .line 446
    .local v0, httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->addDestroyListener(Lcom/jingdong/common/frame/IDestroyListener;)V

    .line 447
    return-object v0
.end method

.method public getOverrideResources()Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParamsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 280
    .local v0, maps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 281
    const-string v1, ""

    .line 283
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resources:Landroid/content/res/Resources;

    goto :goto_0

    .line 137
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->theme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->theme:Landroid/content/res/Resources$Theme;

    .line 151
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method public getThisActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 1057
    return-object p0
.end method

.method public hideSoftInput()V
    .locals 3

    .prologue
    .line 894
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 895
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 896
    return-void
.end method

.method public noShowAgain()V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    .line 162
    .local v0, activity:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->markJump()V

    .line 165
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 906
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 907
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 908
    if-nez p2, :cond_0

    .line 909
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->exitAll()V

    .line 911
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 250
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/jingdong/app/mall/MyApplication;->setCurrentMyActivity(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 252
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->setRequestedOrientation(I)V

    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->mUiThread:Ljava/lang/Thread;

    .line 257
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 258
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 260
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->handler:Landroid/os/Handler;

    .line 262
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 266
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isSingleInstance(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->destroyListenerList:Ljava/util/ArrayList;

    .line 270
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 272
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 355
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/MyActivity;->destroyListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/MyActivity;->destroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    :cond_0
    iput-object v3, p0, Lcom/jingdong/app/mall/utils/MyActivity;->destroyListenerList:Ljava/util/ArrayList;

    .line 361
    iput-object v3, p0, Lcom/jingdong/app/mall/utils/MyActivity;->pauseListenerList:Ljava/util/ArrayList;

    .line 362
    iput-object v3, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resumeListenerList:Ljava/util/ArrayList;

    .line 363
    return-void

    .line 356
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/frame/IDestroyListener;

    .line 357
    .local v0, listener:Lcom/jingdong/common/frame/IDestroyListener;
    invoke-interface {v0}, Lcom/jingdong/common/frame/IDestroyListener;->onDestroy()V

    goto :goto_0
.end method

.method public onHideModal()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 919
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 923
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->removeGuideView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x1

    .line 930
    :goto_0
    return v0

    .line 926
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->clearJump()V

    .line 930
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 342
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 343
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/common/utils/NewJLogUtil;->doOnPause(Landroid/content/Context;)V

    .line 344
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/MyActivity;->pauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    return-void

    .line 344
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/frame/IPauseListener;

    .line 345
    .local v0, listener:Lcom/jingdong/common/frame/IPauseListener;
    invoke-interface {v0}, Lcom/jingdong/common/frame/IPauseListener;->onPause()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 334
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 335
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 292
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 294
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/jingdong/app/mall/MyApplication;->setCurrentMyActivity(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 296
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/common/utils/NewJLogUtil;->doOnResume(Landroid/content/Context;)V

    .line 297
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParamsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/jingdong/app/mall/utils/MyActivity;->isCanResend:Z

    .line 301
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resumeListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 302
    .local v0, beforeSize:I
    const/4 v1, 0x0

    .line 303
    .local v1, currIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 319
    .end local v0           #beforeSize:I
    .end local v1           #currIndex:I
    .end local v2           #i:I
    :cond_0
    :goto_1
    return-void

    .line 304
    .restart local v0       #beforeSize:I
    .restart local v1       #currIndex:I
    .restart local v2       #i:I
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resumeListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 305
    .local v4, oldSize:I
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resumeListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/frame/IResumeListener;

    .line 306
    .local v3, listener:Lcom/jingdong/common/frame/IResumeListener;
    invoke-interface {v3}, Lcom/jingdong/common/frame/IResumeListener;->onResume()V

    .line 307
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resumeListenerList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 310
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resumeListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v4, v5, :cond_2

    .line 311
    add-int/lit8 v1, v1, 0x1

    .line 303
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v0           #beforeSize:I
    .end local v1           #currIndex:I
    .end local v2           #i:I
    .end local v3           #listener:Lcom/jingdong/common/frame/IResumeListener;
    .end local v4           #oldSize:I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->onSearchRequested()Z

    .line 821
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onShowModal()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 326
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 327
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;I)V
    .locals 3
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->handler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public putBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 890
    return-void
.end method

.method public putStringToPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 856
    return-void
.end method

.method public removeAllHistory()V
    .locals 2

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->removeAllRecords(Z)V

    .line 638
    :cond_0
    return-void
.end method

.method public removeAllSingleHistory()V
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->removeAllSingleInstances()V

    .line 650
    :cond_0
    return-void
.end method

.method public removeDestroyListener(Lcom/jingdong/common/frame/IDestroyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->destroyListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->destroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 399
    :cond_0
    return-void
.end method

.method public removeGuideView()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1034
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1036
    iput-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->rootView:Landroid/view/ViewGroup;

    .line 1037
    iput-object v2, p0, Lcom/jingdong/app/mall/utils/MyActivity;->imageViewLayout:Landroid/widget/FrameLayout;

    .line 1038
    const/4 v0, 0x1

    .line 1040
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePauseListener(Lcom/jingdong/common/frame/IPauseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->pauseListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->pauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    return-void
.end method

.method public removeRecordTop()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    .line 169
    .local v0, activity:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->removeRecordTop()V

    .line 172
    :cond_0
    return-void
.end method

.method public removeResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resumeListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resumeListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    return-void
.end method

.method public resendActivityInFrame(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 665
    iget-boolean v1, p0, Lcom/jingdong/app/mall/utils/MyActivity;->isCanResend:Z

    if-nez v1, :cond_0

    .line 678
    :goto_0
    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    .line 672
    .local v0, parent:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    new-instance v1, Lcom/jingdong/app/mall/utils/MyActivity$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/jingdong/app/mall/utils/MyActivity$5;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->pushResendRequest(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 2
    .parameter "layoutResID"

    .prologue
    .line 238
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->clean()V

    .line 241
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected setGuideResId(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 1044
    iput p1, p0, Lcom/jingdong/app/mall/utils/MyActivity;->guideResourceId:I

    .line 1045
    return-void
.end method

.method public setOverrideResources(Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;)V
    .locals 7
    .parameter "myres"

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    if-nez p1, :cond_1

    .line 92
    iput-object v6, p0, Lcom/jingdong/app/mall/utils/MyActivity;->myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    .line 93
    iput-object v6, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resources:Landroid/content/res/Resources;

    .line 94
    iput-object v6, p0, Lcom/jingdong/app/mall/utils/MyActivity;->assetManager:Landroid/content/res/AssetManager;

    .line 95
    iput-object v6, p0, Lcom/jingdong/app/mall/utils/MyActivity;->theme:Landroid/content/res/Resources$Theme;

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/MyActivity;->myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    .line 98
    invoke-virtual {p1}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/jingdong/app/mall/utils/MyActivity;->resources:Landroid/content/res/Resources;

    .line 99
    invoke-virtual {p1}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/jingdong/app/mall/utils/MyActivity;->assetManager:Landroid/content/res/AssetManager;

    .line 101
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/MyActivity;->myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 105
    .local v4, t1:Landroid/content/res/Resources$Theme;
    :try_start_0
    const-string v5, "android.app.ContextImpl"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getThemeResId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 107
    .local v2, m:Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 108
    .local v3, rsid:I
    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v3           #rsid:I
    :goto_1
    iput-object v4, p0, Lcom/jingdong/app/mall/utils/MyActivity;->theme:Landroid/content/res/Resources$Theme;

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public startActivityForResultForFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 0
    .parameter "fragment"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 547
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityForResultNoExceptionForFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 548
    return-void
.end method

.method public startActivityForResultNoException(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 536
    invoke-virtual {p0, p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityForResultNoExceptionStatic(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 537
    return-void
.end method

.method public startActivityForResultNoExceptionStatic(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 2
    .parameter "activity"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 570
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 579
    .local v0, ane:Landroid/content/ActivityNotFoundException;
    invoke-static {p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->catchToastTip(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 581
    .end local v0           #ane:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public startActivityInFrame(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/16 v2, 0xa

    .line 490
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 492
    .local v0, sdk:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 494
    new-instance v1, Lcom/jingdong/app/mall/utils/MyActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity$2;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 514
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 504
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 505
    new-instance v1, Lcom/jingdong/app/mall/utils/MyActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity$3;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 511
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-virtual {v1, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    goto :goto_0
.end method

.method public startActivityInFrameWithNoNavigation(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 517
    const-string v0, "com.360buy:navigationDisplayFlag"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method public startActivityNoException(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 527
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 528
    return-void
.end method

.method public startSingleActivityInFrame(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 466
    const-string v0, "com.360buy:singleInstanceFlag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-virtual {v0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-static {}, Lcom/jingdong/app/mall/utils/MyActivity;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startTaskActivityInFrame(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->createTaskId(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v0

    .line 700
    .local v0, taskId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->startTaskActivityInFrame(Landroid/content/Intent;Ljava/util/HashMap;)V

    .line 701
    return-void
.end method

.method public startTaskActivityInFrame(Landroid/content/Intent;Ljava/util/HashMap;)V
    .locals 2
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 721
    .local p2, taskId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "com.360buy:taskIdFlag"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 724
    const-string v0, "com.360buy:navigationDisplayFlag"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 727
    return-void
.end method
