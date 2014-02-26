.class Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;
.super Ljava/lang/Object;
.source "ConfirmListActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;)Lcom/jd/lottery/lib/activity/ConfirmListActivity;
    .locals 1
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 320
    sget v1, Lcom/jd/lottery/lib/R$id;->delete:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    new-instance v1, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10$1;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10$1;-><init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
