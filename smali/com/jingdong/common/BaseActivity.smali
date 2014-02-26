.class public Lcom/jingdong/common/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/jingdong/common/frame/IMyActivity;


# static fields
.field public static final CLEAR_HISTORY_FLAG:Ljava/lang/String; = "com.360buy:clearHistoryFlag"

.field public static final HOME_ACTIVITY_BUTTON_IS_DOWN:Ljava/lang/String; = "home_button_down"

.field public static final NAVIGATION_DISPLAY_FLAG:Ljava/lang/String; = "com.360buy:navigationDisplayFlag"

.field public static final NAVIGATION_FLAG:Ljava/lang/String; = "com.360buy:navigationFlag"

.field public static final NAVIGATION_ID:Ljava/lang/String; = "com.360buy:navigationId"

.field public static final RESEND_FLAG:Ljava/lang/String; = "com.360buy:resendFlag"

.field public static final SINGLE_INSTANCE_FLAG:Ljava/lang/String; = "com.360buy:singleInstanceFlag"

.field public static final TASK_ID_FLAG:Ljava/lang/String; = "com.360buy:taskIdFlag"

.field public static final USE_HISTORY_FLAG:Ljava/lang/String; = "com.360buy:useHistoryFlag"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activityManager:Landroid/app/LocalActivityManager;

.field private counter:I

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

.field private handler:Landroid/os/Handler;

.field private isPrevNotInRecord:Z

.field private jump:Z

.field private mUiThread:Ljava/lang/Thread;

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
            "Lcom/jingdong/common/frame/Record;",
            ">;"
        }
    .end annotation
.end field

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

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private singleInstanceRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/frame/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const-class v0, Lcom/jingdong/common/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/BaseActivity;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/BaseActivity;->handler:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/BaseActivity;->destroyListenerList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/BaseActivity;->pauseListenerList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/BaseActivity;->resumeListenerList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/BaseActivity;->recordList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/BaseActivity;->singleInstanceRecordList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/BaseActivity;->recordIdAndRadioId:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method private clearHistoryRecord(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 517
    new-instance v0, Lcom/jingdong/common/frame/Record;

    invoke-direct {v0}, Lcom/jingdong/common/frame/Record;-><init>()V

    .line 518
    .local v0, record:Lcom/jingdong/common/frame/Record;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/frame/Record;->setIntent(Landroid/content/Intent;)V

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/BaseActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    return-void
.end method

.method private collectErrorData(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 528
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 529
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 530
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

    .line 531
    const-string v5, "\uff0cintent content\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 534
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 542
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->resetErrorInfo(Ljava/lang/String;)V

    .line 544
    return-void

    .line 535
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 536
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

    .line 537
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v4, "<null>"

    .line 538
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

    .line 537
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
    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/BaseActivity;->jump:Z

    .line 600
    invoke-virtual {p0}, Lcom/jingdong/common/BaseActivity;->removeRecordTop()V

    .line 601
    return-void
.end method

.method private findRadioId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "id"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->recordIdAndRadioId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private findsingleInstanceRecord(Landroid/content/Intent;)Lcom/jingdong/common/frame/Record;
    .locals 4
    .parameter "intent"

    .prologue
    .line 380
    iget-object v2, p0, Lcom/jingdong/common/BaseActivity;->singleInstanceRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/jingdong/common/frame/Record;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 386
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 381
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/frame/Record;

    .line 382
    .local v1, unit:Lcom/jingdong/common/frame/Record;
    invoke-virtual {v1}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

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
    .line 490
    invoke-direct {p0, p1}, Lcom/jingdong/common/BaseActivity;->isNavigation(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "com.360buy:navigationId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 493
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
    .line 547
    const-string v0, "com.360buy:taskIdFlag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method private isJump()Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/jingdong/common/BaseActivity;->jump:Z

    return v0
.end method

.method private isNavigation(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 642
    const-string v0, "com.360buy:navigationFlag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addDestroyListener(Lcom/jingdong/common/frame/IDestroyListener;)V
    .locals 1
    .parameter "destroyListener"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->destroyListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->destroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    return-void
.end method

.method public addPauseListener(Lcom/jingdong/common/frame/IPauseListener;)V
    .locals 1
    .parameter "pauseListener"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->pauseListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->pauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    return-void
.end method

.method public addResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V
    .locals 1
    .parameter "resumeListener"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->resumeListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->resumeListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    return-void
.end method

.method public clearJump()V
    .locals 1

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/jingdong/common/BaseActivity;->isJump()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/BaseActivity;->jump:Z

    .line 610
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/jingdong/common/BaseActivity;->hideSoftInput()V

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 278
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;
    .locals 1

    .prologue
    .line 238
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/jingdong/common/BaseActivity;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    return-object v0
.end method

.method public getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;
    .locals 2
    .parameter "type"

    .prologue
    .line 242
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 243
    .local v0, setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    invoke-virtual {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setMyActivity(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 244
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/jingdong/common/BaseActivity;->getHttpGroupaAsynPool(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    return-object v1
.end method

.method public getHttpGroupaAsynPool(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)Lcom/jingdong/common/utils/HttpGroup;
    .locals 1
    .parameter "setting"

    .prologue
    .line 249
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    .line 250
    .local v0, httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-virtual {p0, v0}, Lcom/jingdong/common/BaseActivity;->addDestroyListener(Lcom/jingdong/common/frame/IDestroyListener;)V

    .line 251
    return-object v0
.end method

.method public getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThisActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 233
    return-object p0
.end method

.method public getUiThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->mUiThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public hideSoftInput()V
    .locals 3

    .prologue
    .line 350
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/jingdong/common/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 351
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/jingdong/common/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 352
    return-void
.end method

.method public isClearHistory(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 316
    const-string v0, "com.360buy:clearHistoryFlag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isResend(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 333
    const-string v0, "com.360buy:resendFlag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSingleInstance(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 296
    const-string v0, "com.360buy:singleInstanceFlag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUseHistoryRecord(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 306
    const-string v0, "com.360buy:useHistoryFlag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public markJump()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/BaseActivity;->jump:Z

    .line 585
    return-void
.end method

.method public newActivity(Ljava/lang/String;Landroid/content/Intent;)Lcom/jingdong/common/frame/Record;
    .locals 2
    .parameter "id"
    .parameter "intent"

    .prologue
    .line 500
    new-instance v0, Lcom/jingdong/common/frame/Record;

    invoke-direct {v0}, Lcom/jingdong/common/frame/Record;-><init>()V

    .line 501
    .local v0, record:Lcom/jingdong/common/frame/Record;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/frame/Record;->setId(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, p2}, Lcom/jingdong/common/frame/Record;->setIntent(Landroid/content/Intent;)V

    .line 503
    invoke-virtual {p0, p2}, Lcom/jingdong/common/BaseActivity;->isSingleInstance(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/jingdong/common/BaseActivity;->singleInstanceRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jingdong/common/BaseActivity;->newActivity(Lcom/jingdong/common/frame/Record;)V

    .line 507
    return-object v0
.end method

.method public newActivity(Lcom/jingdong/common/frame/Record;)V
    .locals 9
    .parameter "record"

    .prologue
    const/4 v8, 0x0

    .line 410
    invoke-virtual {p1}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/BaseActivity;->isResend(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 414
    invoke-virtual {p0}, Lcom/jingdong/common/BaseActivity;->removeRecordTop()V

    .line 422
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/jingdong/common/BaseActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 423
    iget-object v6, p0, Lcom/jingdong/common/BaseActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/frame/Record;

    .line 424
    .local v2, prevRecord:Lcom/jingdong/common/frame/Record;
    invoke-virtual {v2}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jingdong/common/BaseActivity;->getTaskId(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v3

    .line 425
    .local v3, prevTaskId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_2

    .line 426
    invoke-virtual {p1}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jingdong/common/BaseActivity;->getTaskId(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v4

    .line 427
    .local v4, taskId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/BaseActivity;->removeRecordTop()V

    .line 441
    .end local v2           #prevRecord:Lcom/jingdong/common/frame/Record;
    .end local v3           #prevTaskId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #taskId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/BaseActivity;->isSingleInstance(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 442
    iget-object v6, p0, Lcom/jingdong/common/BaseActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 443
    iget-object v6, p0, Lcom/jingdong/common/BaseActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/frame/Record;

    invoke-virtual {v6}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 446
    :cond_3
    invoke-virtual {p1}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/BaseActivity;->isUseHistoryRecord(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 448
    iget-object v6, p0, Lcom/jingdong/common/BaseActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 450
    .local v0, index:I
    if-lez v0, :cond_4

    .line 452
    iget-object v6, p0, Lcom/jingdong/common/BaseActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/frame/Record;

    .line 454
    .local v5, temp:Lcom/jingdong/common/frame/Record;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/jingdong/common/frame/Record;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 455
    move-object p1, v5

    .line 461
    .end local v0           #index:I
    .end local v5           #temp:Lcom/jingdong/common/frame/Record;
    :cond_4
    iget-object v6, p0, Lcom/jingdong/common/BaseActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 468
    :cond_5
    invoke-virtual {p1}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jingdong/common/BaseActivity;->getNavigationId(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v1

    .line 469
    .local v1, navigationId:Ljava/lang/Integer;
    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/jingdong/common/frame/Record;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jingdong/common/BaseActivity;->findRadioId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_6

    .line 473
    iget-object v6, p0, Lcom/jingdong/common/BaseActivity;->recordIdAndRadioId:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/jingdong/common/frame/Record;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_6
    invoke-virtual {p1}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jingdong/common/BaseActivity;->collectErrorData(Landroid/content/Intent;)V

    .line 479
    invoke-virtual {p1}, Lcom/jingdong/common/frame/Record;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/jingdong/common/BaseActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 481
    return-void

    .line 415
    .end local v1           #navigationId:Ljava/lang/Integer;
    :cond_7
    invoke-direct {p0}, Lcom/jingdong/common/BaseActivity;->isJump()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/jingdong/common/BaseActivity;->doJump()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/jingdong/common/MyApplication;->setCurrentMyActivity(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/BaseActivity;->setRequestedOrientation(I)V

    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/BaseActivity;->mUiThread:Ljava/lang/Thread;

    .line 75
    invoke-virtual {p0}, Lcom/jingdong/common/BaseActivity;->hideSoftInput()V

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/jingdong/common/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jingdong/common/BaseActivity;->isSingleInstance(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jingdong/common/BaseActivity;->destroyListenerList:Ljava/util/ArrayList;

    .line 85
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/BaseActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 86
    return-void
.end method

.method public onHideModal()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onShowModal()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public post(Ljava/lang/Runnable;I)V
    .locals 3
    .parameter "runnable"
    .parameter "uptimeMillis"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->handler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 262
    return-void
.end method

.method public putBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    return-void
.end method

.method public removeDestroyListener(Lcom/jingdong/common/frame/IDestroyListener;)V
    .locals 1
    .parameter "destroyListener"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->destroyListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->destroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    return-void
.end method

.method public removePauseListener(Lcom/jingdong/common/frame/IPauseListener;)V
    .locals 1
    .parameter "pauseListener"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->pauseListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->pauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    return-void
.end method

.method public removeRecordTop()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-boolean v1, p0, Lcom/jingdong/common/BaseActivity;->isPrevNotInRecord:Z

    if-eqz v1, :cond_1

    .line 391
    iput-boolean v2, p0, Lcom/jingdong/common/BaseActivity;->isPrevNotInRecord:Z

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/BaseActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/jingdong/common/BaseActivity;->recordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/frame/Record;

    .line 398
    .local v0, old:Lcom/jingdong/common/frame/Record;
    invoke-virtual {v0}, Lcom/jingdong/common/frame/Record;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/BaseActivity;->isSingleInstance(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/jingdong/common/BaseActivity;->activityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Lcom/jingdong/common/frame/Record;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    goto :goto_0
.end method

.method public removeResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V
    .locals 1
    .parameter "pauseListener"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->resumeListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity;->resumeListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    return-void
.end method

.method public showActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter "id"
    .parameter "intent"

    .prologue
    .line 487
    return-void
.end method

.method public startActivityForResultNoException(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "installRequestCode"

    .prologue
    .line 148
    invoke-virtual {p0, p0, p1, p2}, Lcom/jingdong/common/BaseActivity;->startActivityForResultNoExceptionStatic(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 149
    return-void
.end method

.method public startActivityForResultNoExceptionStatic(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 6
    .parameter "activity"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 153
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 163
    .local v0, ane:Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->not_find_other:Ljava/lang/String;

    .line 164
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "https"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    :cond_2
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->not_find_browser:Ljava/lang/String;

    .line 175
    .end local v2           #scheme:Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v3, v1

    .line 177
    .local v3, toastMsg:Ljava/lang/String;
    new-instance v4, Lcom/jingdong/common/BaseActivity$3;

    invoke-direct {v4, p0, p1, v3}, Lcom/jingdong/common/BaseActivity$3;-><init>(Lcom/jingdong/common/BaseActivity;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/jingdong/common/BaseActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 169
    .end local v3           #toastMsg:Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 170
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->not_find_gallery:Ljava/lang/String;

    .line 171
    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->not_find_camera:Ljava/lang/String;

    goto :goto_1

    .line 182
    .end local v0           #ane:Landroid/content/ActivityNotFoundException;
    .end local v1           #msg:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public startActivityInFrame(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/16 v2, 0xa

    .line 120
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 122
    .local v0, sdk:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jingdong/common/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 124
    new-instance v1, Lcom/jingdong/common/BaseActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/common/BaseActivity$1;-><init>(Lcom/jingdong/common/BaseActivity;Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/common/BaseActivity;->post(Ljava/lang/Runnable;)V

    .line 144
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jingdong/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 135
    new-instance v1, Lcom/jingdong/common/BaseActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/common/BaseActivity$2;-><init>(Lcom/jingdong/common/BaseActivity;Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/common/BaseActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0, p1}, Lcom/jingdong/common/BaseActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/common/frame/Record;

    goto :goto_0
.end method

.method public startActivityNoException(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 109
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/jingdong/common/BaseActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 110
    return-void
.end method

.method public startSubActivity(Landroid/content/Intent;)Lcom/jingdong/common/frame/Record;
    .locals 3
    .parameter "intent"

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/jingdong/common/BaseActivity;->isSingleInstance(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-direct {p0, p1}, Lcom/jingdong/common/BaseActivity;->findsingleInstanceRecord(Landroid/content/Intent;)Lcom/jingdong/common/frame/Record;

    move-result-object v0

    .line 364
    .local v0, r:Lcom/jingdong/common/frame/Record;
    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v0, p1}, Lcom/jingdong/common/frame/Record;->setIntent(Landroid/content/Intent;)V

    .line 367
    invoke-virtual {p0, v0}, Lcom/jingdong/common/BaseActivity;->newActivity(Lcom/jingdong/common/frame/Record;)V

    .line 376
    .end local v0           #r:Lcom/jingdong/common/frame/Record;
    :goto_0
    return-object v0

    .line 370
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jingdong/common/BaseActivity;->isClearHistory(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    invoke-direct {p0, p1}, Lcom/jingdong/common/BaseActivity;->clearHistoryRecord(Landroid/content/Intent;)V

    .line 375
    :cond_1
    iget v1, p0, Lcom/jingdong/common/BaseActivity;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jingdong/common/BaseActivity;->counter:I

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jingdong/common/BaseActivity;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/jingdong/common/BaseActivity;->newActivity(Ljava/lang/String;Landroid/content/Intent;)Lcom/jingdong/common/frame/Record;

    move-result-object v0

    goto :goto_0
.end method
