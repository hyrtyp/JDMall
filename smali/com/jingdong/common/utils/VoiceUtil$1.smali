.class Lcom/jingdong/common/utils/VoiceUtil$1;
.super Ljava/lang/Object;
.source "VoiceUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/VoiceUtil;->showVoiceDialog(Lcom/jingdong/common/frame/IMyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/VoiceUtil$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 61
    const-string v2, "http://union.m.jd.com/download/go.action?to=http%3A%2F%2Fapp.jd.com%2Fdownload%2Fandroid%2Fvoice.apk&client=android&unionId=12532&key=eb5ba3c113b616165e3d763a1f0ce731"

    .line 62
    .local v2, url:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 63
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/jingdong/common/utils/VoiceUtil$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v3, v0}, Lcom/jingdong/common/frame/IMyActivity;->startActivityNoException(Landroid/content/Intent;)V

    .line 65
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 66
    return-void
.end method
