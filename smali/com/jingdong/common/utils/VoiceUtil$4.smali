.class Lcom/jingdong/common/utils/VoiceUtil$4;
.super Ljava/lang/Object;
.source "VoiceUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/VoiceUtil;->handleVoiceResult(Lcom/jingdong/common/frame/IMyActivity;Landroid/content/Intent;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$items:[Ljava/lang/String;

.field private final synthetic val$web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/VoiceUtil$4;->val$items:[Ljava/lang/String;

    iput-object p2, p0, Lcom/jingdong/common/utils/VoiceUtil$4;->val$web:Landroid/webkit/WebView;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    iget-object v2, p0, Lcom/jingdong/common/utils/VoiceUtil$4;->val$items:[Ljava/lang/String;

    aget-object v0, v2, p2

    .line 142
    .local v0, item:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:speechInputCallBack(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/common/utils/VoiceUtil$4;->val$web:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 144
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 146
    return-void
.end method
