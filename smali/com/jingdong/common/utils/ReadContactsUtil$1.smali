.class Lcom/jingdong/common/utils/ReadContactsUtil$1;
.super Ljava/lang/Object;
.source "ReadContactsUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/ReadContactsUtil;->readContactsForNewSDK(Landroid/content/Context;Landroid/database/Cursor;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$finalPhoneList:Ljava/util/ArrayList;

.field private final synthetic val$webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/ReadContactsUtil$1;->val$finalPhoneList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/jingdong/common/utils/ReadContactsUtil$1;->val$webview:Landroid/webkit/WebView;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 180
    iget-object v2, p0, Lcom/jingdong/common/utils/ReadContactsUtil$1;->val$finalPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    .local v0, number:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:contactsCallBack(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/common/utils/ReadContactsUtil$1;->val$webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 184
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 185
    return-void
.end method
