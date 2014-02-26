.class Lcom/jingdong/app/mall/gis/GisUrlUtil$4$1;
.super Ljava/lang/Object;
.source "GisUrlUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/gis/GisUrlUtil$4;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/gis/GisUrlUtil$4;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/gis/GisUrlUtil$4;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$4$1;->this$1:Lcom/jingdong/app/mall/gis/GisUrlUtil$4;

    iput-object p2, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$4$1;->val$url:Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$4$1;->this$1:Lcom/jingdong/app/mall/gis/GisUrlUtil$4;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil$4;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil$4;->access$0(Lcom/jingdong/app/mall/gis/GisUrlUtil$4;)Lcom/jingdong/app/mall/gis/GisUrlUtil;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$10(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$4$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 299
    return-void
.end method
