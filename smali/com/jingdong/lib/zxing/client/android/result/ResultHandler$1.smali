.class Lcom/jingdong/lib/zxing/client/android/result/ResultHandler$1;
.super Ljava/lang/Object;
.source "ResultHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;


# direct methods
.method constructor <init>(Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler$1;->this$0:Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler$1;->this$0:Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 98
    const-string v3, "market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
