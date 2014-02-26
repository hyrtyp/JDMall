.class Lcom/jingdong/lib/zxing/client/android/wifi/Killer$1;
.super Ljava/util/TimerTask;
.source "Killer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/lib/zxing/client/android/wifi/Killer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/lib/zxing/client/android/wifi/Killer;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/jingdong/lib/zxing/client/android/wifi/Killer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/wifi/Killer$1;->this$0:Lcom/jingdong/lib/zxing/client/android/wifi/Killer;

    iput-object p2, p0, Lcom/jingdong/lib/zxing/client/android/wifi/Killer$1;->val$handler:Landroid/os/Handler;

    .line 63
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/lib/zxing/client/android/wifi/Killer$1;)Lcom/jingdong/lib/zxing/client/android/wifi/Killer;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/wifi/Killer$1;->this$0:Lcom/jingdong/lib/zxing/client/android/wifi/Killer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/wifi/Killer$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/lib/zxing/client/android/wifi/Killer$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/lib/zxing/client/android/wifi/Killer$1$1;-><init>(Lcom/jingdong/lib/zxing/client/android/wifi/Killer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method
