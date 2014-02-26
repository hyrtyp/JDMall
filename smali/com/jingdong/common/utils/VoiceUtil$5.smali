.class Lcom/jingdong/common/utils/VoiceUtil$5;
.super Ljava/lang/Object;
.source "VoiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/VoiceUtil;->handleVoiceResult(Lcom/jingdong/common/frame/IMyActivity;Landroid/content/Intent;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/VoiceUtil$5;->val$builder:Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/jingdong/common/utils/VoiceUtil$5;->val$builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/jingdong/common/utils/VoiceUtil$5;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 154
    :cond_0
    return-void
.end method
