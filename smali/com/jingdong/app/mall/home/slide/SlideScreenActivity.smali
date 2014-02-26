.class public Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "SlideScreenActivity.java"


# static fields
.field public static final KEY_DATA:Ljava/lang/String; = "data"


# instance fields
.field private element:Lcom/jingdong/common/entity/HomeFloorElement;

.field private slideScreen:Lcom/jingdong/app/mall/home/slide/SlideScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;->element:Lcom/jingdong/common/entity/HomeFloorElement;

    .line 15
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/HomeFloorElement;

    iput-object v3, p0, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;->element:Lcom/jingdong/common/entity/HomeFloorElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;->element:Lcom/jingdong/common/entity/HomeFloorElement;

    if-nez v3, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;->finish()V

    .line 47
    :goto_1
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 40
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v3, Lcom/jingdong/app/mall/home/slide/SlideScreen;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;)V

    iput-object v3, p0, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;->slideScreen:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    .line 41
    new-instance v2, Lcom/jingdong/app/mall/home/slide/SalesPromotion;

    invoke-direct {v2}, Lcom/jingdong/app/mall/home/slide/SalesPromotion;-><init>()V

    .line 42
    .local v2, salesPromotion:Lcom/jingdong/app/mall/home/slide/SalesPromotion;
    iget-object v3, p0, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;->slideScreen:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;->element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v3, v4, v2}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->showScreen(Lcom/jingdong/common/entity/HomeFloorElement;Lcom/jingdong/app/mall/home/slide/SalesPromotion;)V

    .line 43
    invoke-virtual {v2}, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, item:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 52
    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;->slideScreen:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    if-eqz v1, :cond_0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;->slideScreen:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/jingdong/cloud/msg/util/Log;->E:Z

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
