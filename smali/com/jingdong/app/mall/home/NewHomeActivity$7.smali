.class Lcom/jingdong/app/mall/home/NewHomeActivity$7;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;->autoComplete()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$7;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$7;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->quicklyBarPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$11(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$7;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->quicklyBarPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$11(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$7;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->quicklyBarPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$11(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$7;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->quicklyBarPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$11(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x40a0

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method
