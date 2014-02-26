.class Lcom/jingdong/app/mall/home/NewHomeActivity$4;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;->onResume()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$4;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$4;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$8(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$4;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$8(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 534
    :cond_0
    return-void
.end method
