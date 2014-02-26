.class Lcom/jd/lottery/lib/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/MainActivity$4;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftClicked()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onRightClicked()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$4;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/MainActivity;->access$3(Lcom/jd/lottery/lib/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$4;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #calls: Lcom/jd/lottery/lib/activity/MainActivity;->init()V
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/MainActivity;->access$10(Lcom/jd/lottery/lib/activity/MainActivity;)V

    .line 104
    return-void
.end method
