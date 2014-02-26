.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14$1;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;

.field private final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14$1;->val$webView:Landroid/webkit/WebView;

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14$1;->val$webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/map.htm"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 763
    return-void
.end method
