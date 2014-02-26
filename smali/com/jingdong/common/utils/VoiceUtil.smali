.class public Lcom/jingdong/common/utils/VoiceUtil;
.super Ljava/lang/Object;
.source "VoiceUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceUtil"

.field public static final VOICE_RECOGNITION_REQUEST_CODE:I = 0x4d2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleVoiceResult(Lcom/jingdong/common/frame/IMyActivity;Landroid/content/Intent;Landroid/webkit/WebView;)V
    .locals 6
    .parameter "myActivity"
    .parameter "intent"
    .parameter "web"

    .prologue
    .line 115
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v5, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 120
    .local v3, matchs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 121
    .local v4, size:I
    if-lez v4, :cond_0

    .line 123
    new-array v2, v4, [Ljava/lang/String;

    .line 125
    .local v2, items:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v4, :cond_2

    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sget-object v5, Lcom/jingdong/common/res/StringUtil;->voice_search_please_choose:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    new-instance v5, Lcom/jingdong/common/utils/VoiceUtil$4;

    invoke-direct {v5, v2, p2}, Lcom/jingdong/common/utils/VoiceUtil$4;-><init>([Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    new-instance v5, Lcom/jingdong/common/utils/VoiceUtil$5;

    invoke-direct {v5, v0}, Lcom/jingdong/common/utils/VoiceUtil$5;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-interface {p0, v5}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 126
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static showVoiceDialog(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 5
    .parameter "myActivity"

    .prologue
    .line 41
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 43
    .local v2, pManager:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 49
    invoke-static {p0}, Lcom/jingdong/common/utils/VoiceUtil;->startRecognizeActivty(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 86
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sget-object v3, Lcom/jingdong/common/res/StringUtil;->voice_search_title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 55
    sget-object v3, Lcom/jingdong/common/res/StringUtil;->voice_search_message_hint:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 56
    sget-object v3, Lcom/jingdong/common/res/StringUtil;->ok:Ljava/lang/String;

    new-instance v4, Lcom/jingdong/common/utils/VoiceUtil$1;

    invoke-direct {v4, p0}, Lcom/jingdong/common/utils/VoiceUtil$1;-><init>(Lcom/jingdong/common/frame/IMyActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    sget-object v3, Lcom/jingdong/common/res/StringUtil;->cancel:Ljava/lang/String;

    new-instance v4, Lcom/jingdong/common/utils/VoiceUtil$2;

    invoke-direct {v4}, Lcom/jingdong/common/utils/VoiceUtil$2;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    new-instance v3, Lcom/jingdong/common/utils/VoiceUtil$3;

    invoke-direct {v3, v0}, Lcom/jingdong/common/utils/VoiceUtil$3;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-interface {p0, v3}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static startRecognizeActivty(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 3
    .parameter "myActivity"

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "android.speech.extra.PROMPT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/16 v1, 0x4d2

    invoke-interface {p0, v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 102
    return-void
.end method
