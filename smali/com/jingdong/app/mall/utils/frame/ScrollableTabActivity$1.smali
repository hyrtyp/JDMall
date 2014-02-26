.class Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$1;
.super Ljava/lang/Object;
.source "ScrollableTabActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$1;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 302
    sget-boolean v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->isCanOnTouch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
