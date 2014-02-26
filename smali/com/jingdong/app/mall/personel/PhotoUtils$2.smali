.class Lcom/jingdong/app/mall/personel/PhotoUtils$2;
.super Ljava/lang/Object;
.source "PhotoUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PhotoUtils;->updateWebView(Lcom/jingdong/app/mall/WebActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$imageUrl:Ljava/lang/String;

.field private final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$2;->val$webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$2;->val$imageUrl:Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$2;->val$webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:cameraCallBack(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$2;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'<head>\' + document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 202
    return-void
.end method
