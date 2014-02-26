.class Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3$1;
.super Ljava/lang/Object;
.source "CarouselFigureViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;

.field private final synthetic val$commercial:Lcom/jingdong/common/entity/Commercial;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;Ljava/lang/String;Lcom/jingdong/common/entity/Commercial;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3$1;->val$commercial:Lcom/jingdong/common/entity/Commercial;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$2(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v1, "source"

    new-instance v2, Lcom/jingdong/common/entity/SourceEntity;

    const-string v3, "listActivity"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3$1;->val$commercial:Lcom/jingdong/common/entity/Commercial;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Commercial;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 307
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$2(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 308
    return-void
.end method
