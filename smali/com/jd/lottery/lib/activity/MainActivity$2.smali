.class Lcom/jd/lottery/lib/activity/MainActivity$2;
.super Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/MainActivity$2;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    .line 357
    invoke-direct {p0}, Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 361
    const-string v0, "@@@@@@@@@@@%s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$2;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #setter for: Lcom/jd/lottery/lib/activity/MainActivity;->mCanRefresh:Z
    invoke-static {v0, v5}, Lcom/jd/lottery/lib/activity/MainActivity;->access$0(Lcom/jd/lottery/lib/activity/MainActivity;Z)V

    .line 363
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$2;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/activity/MainActivity;->setAdapter()V

    .line 365
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$2;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/MainActivity;->access$1(Lcom/jd/lottery/lib/activity/MainActivity;)Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$2;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->loadingErrorLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/MainActivity;->access$2(Lcom/jd/lottery/lib/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$2;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/MainActivity;->access$3(Lcom/jd/lottery/lib/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$2;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    iget-object v0, v0, Lcom/jd/lottery/lib/activity/MainActivity;->main_scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$2;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    iget-object v0, v0, Lcom/jd/lottery/lib/activity/MainActivity;->main_scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$2;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/MainActivity;->access$3(Lcom/jd/lottery/lib/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$2;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->loadingErrorLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/MainActivity;->access$2(Lcom/jd/lottery/lib/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
