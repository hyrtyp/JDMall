.class Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2$1;
.super Landroid/webkit/WebViewClient;
.source "ProductDetailInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$2;

    .line 299
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method
