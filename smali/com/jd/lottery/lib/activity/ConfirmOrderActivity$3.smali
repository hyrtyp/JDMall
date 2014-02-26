.class Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$3;
.super Ljava/lang/Object;
.source "ConfirmOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$3;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 547
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$3;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_info_scrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$13(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 548
    return-void
.end method
