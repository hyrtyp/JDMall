.class Lcom/jingdong/lib/zxing/client/android/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/lib/zxing/client/android/CaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/lib/zxing/client/android/CaptureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity$1;->this$0:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mediaPlayer"

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 273
    return-void
.end method
