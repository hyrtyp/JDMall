.class Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener$1;
.super Ljava/lang/Object;
.source "ScrollableTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener$1;->this$1:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener$1;->this$1:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;

    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->access$1(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->navigationDisplayMode:I
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$0(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener$1;->this$1:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;

    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;->access$1(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$LayoutListener;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->showNavigation()V

    goto :goto_0
.end method
