.class public Lcom/jd/lottery/lib/ui/widget/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->sToast:Landroid/widget/Toast;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1(Landroid/widget/Toast;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    sput-object p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->sToast:Landroid/widget/Toast;

    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->mHandler:Landroid/os/Handler;

    .line 17
    :cond_0
    sget-object v0, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static longToast(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 62
    return-void
.end method

.method public static longToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public static shortToast(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 22
    return-void
.end method

.method public static shortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method private static showToast(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 26
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/ToastUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil$1;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "msg"
    .parameter "duration"

    .prologue
    .line 42
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jd/lottery/lib/ui/widget/ToastUtil$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/jd/lottery/lib/ui/widget/ToastUtil$2;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method
