.class Lcom/jingdong/common/utils/CommonBase$1;
.super Ljava/lang/Object;
.source "CommonBase.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/CommonBase;->toBrowser(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 119
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/jingdong/common/utils/CommonBase;->toBrowser(Landroid/net/Uri;)V

    .line 121
    return-void
.end method
