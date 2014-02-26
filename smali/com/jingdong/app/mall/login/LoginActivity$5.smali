.class Lcom/jingdong/app/mall/login/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$5;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$5;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$5(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$5;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    const/4 v2, 0x0

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->showOrhidHistoryUserName(Landroid/view/animation/Animation;Z)V
    invoke-static {v1, v2, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->access$4(Lcom/jingdong/app/mall/login/LoginActivity;Landroid/view/animation/Animation;Z)V

    .line 388
    const/4 v0, 0x1

    .line 390
    :cond_0
    return v0
.end method
