.class Lcom/jingdong/app/mall/home/slide/SlideScreen$6;
.super Ljava/lang/Object;
.source "SlideScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$6;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$6;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$2(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$6;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$2(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 348
    :cond_0
    return-void
.end method
