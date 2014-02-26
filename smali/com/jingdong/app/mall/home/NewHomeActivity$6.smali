.class Lcom/jingdong/app/mall/home/NewHomeActivity$6;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;->resolveAutoComplete(Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$6;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 594
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$6;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #calls: Lcom/jingdong/app/mall/home/NewHomeActivity;->gotoSearch()V
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$10(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    .line 600
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
