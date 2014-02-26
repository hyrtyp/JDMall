.class Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
.super Ljava/lang/Object;
.source "DefaultEffectHttpListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/DefaultEffectHttpListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# static fields
.field private static final WAITING:I = -0x1

.field private static final WAIT_TIME:I = 0x1f4


# instance fields
.field private hasThread:Z

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private missionCount:I

.field private modal:Landroid/view/ViewGroup;

.field private myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rootFrameLayout:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/jingdong/common/utils/DefaultEffectHttpListener;

.field private waitTime:I


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/DefaultEffectHttpListener;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 2
    .parameter
    .parameter "myActivity"

    .prologue
    const/4 v1, -0x2

    .line 65
    iput-object p1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->this$0:Lcom/jingdong/common/utils/DefaultEffectHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->waitTime:I

    .line 70
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    iput-object p2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->modal:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Lcom/jingdong/common/frame/IMyActivity;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;Landroid/widget/ProgressBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method private firstMission()V
    .locals 4

    .prologue
    .line 175
    iget-boolean v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->hasThread:Z

    if-eqz v2, :cond_0

    .line 176
    const/4 v2, -0x1

    iput v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->waitTime:I

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 200
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->getRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v1

    .line 180
    .local v1, rootFrameLayout:Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->getModal()Landroid/view/ViewGroup;

    move-result-object v0

    .line 181
    .local v0, modal:Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->newProgressBar()V

    .line 183
    iget-object v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v3, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$3;-><init>(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-interface {v2, v3}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getModal()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->modal:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->modal:Landroid/view/ViewGroup;

    .line 135
    :goto_0
    return-object v1

    .line 123
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v2}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->modal:Landroid/view/ViewGroup;

    .line 125
    iget-object v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->modal:Landroid/view/ViewGroup;

    new-instance v2, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$2;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$2;-><init>(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 132
    .local v0, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 133
    iget-object v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->modal:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->modal:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private getRootFrameLayout()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->rootFrameLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->rootFrameLayout:Landroid/view/ViewGroup;

    .line 113
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->rootFrameLayout:Landroid/view/ViewGroup;

    .line 105
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->rootFrameLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 107
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    invoke-direct {p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->getRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->rootFrameLayout:Landroid/view/ViewGroup;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->rootFrameLayout:Landroid/view/ViewGroup;

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private lastMission()V
    .locals 2

    .prologue
    .line 207
    iget-boolean v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->hasThread:Z

    if-eqz v1, :cond_0

    .line 208
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->waitTime:I

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 212
    .local v0, td:Ljava/lang/Thread;
    const-string v1, "DefaultEffectHttpListener_lastMission"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->hasThread:Z

    goto :goto_0
.end method

.method private newProgressBar()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v1, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$1;

    invoke-direct {v1, p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$1;-><init>(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method


# virtual methods
.method public declared-synchronized addMission()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 145
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->missionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->missionCount:I

    .line 146
    iget v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->missionCount:I

    if-ne v1, v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->firstMission()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMission()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 157
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->missionCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->missionCount:I

    .line 158
    iget v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->missionCount:I

    if-gez v2, :cond_1

    .line 160
    const/4 v1, 0x0

    iput v1, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->missionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 162
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->missionCount:I

    if-ge v2, v1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->lastMission()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 165
    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 6

    .prologue
    .line 226
    monitor-enter p0

    :cond_0
    :try_start_0
    iget v4, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->waitTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 228
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    :goto_0
    :try_start_2
    iget v4, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->waitTime:I

    if-nez v4, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->getRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v2

    .line 245
    .local v2, rootFrameLayout:Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->getModal()Landroid/view/ViewGroup;

    move-result-object v1

    .line 246
    .local v1, modal:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v5, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$4;

    invoke-direct {v5, p0, v1, v2}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State$4;-><init>(Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-interface {v4, v5}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 263
    const/16 v4, 0x1f4

    iput v4, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->waitTime:I

    .line 264
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->hasThread:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 229
    .end local v1           #modal:Landroid/view/ViewGroup;
    .end local v2           #rootFrameLayout:Landroid/view/ViewGroup;
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 226
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 234
    :cond_1
    :try_start_4
    iget v3, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->waitTime:I

    .line 235
    .local v3, temp:I
    const/4 v4, 0x0

    iput v4, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->waitTime:I

    .line 236
    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 237
    .end local v3           #temp:I
    :catch_1
    move-exception v0

    .line 238
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
