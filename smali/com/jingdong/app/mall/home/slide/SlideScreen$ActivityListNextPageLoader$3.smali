.class Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$3;
.super Ljava/lang/Object;
.source "SlideScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v0

    const/16 v1, 0x8

    #calls: Lcom/jingdong/app/mall/home/slide/SlideScreen;->showProgressBar(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$8(Lcom/jingdong/app/mall/home/slide/SlideScreen;I)V

    .line 592
    return-void
.end method
