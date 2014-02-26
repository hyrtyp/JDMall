.class Lcom/jingdong/app/mall/gis/GisUrlUtil$4;
.super Ljava/lang/Object;
.source "GisUrlUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/gis/GisUrlUtil;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/gis/GisUrlUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$4;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/gis/GisUrlUtil$4;)Lcom/jingdong/app/mall/gis/GisUrlUtil;
    .locals 1
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$4;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$4;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$9(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/gis/GisUrlUtil$4$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/gis/GisUrlUtil$4$1;-><init>(Lcom/jingdong/app/mall/gis/GisUrlUtil$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method
