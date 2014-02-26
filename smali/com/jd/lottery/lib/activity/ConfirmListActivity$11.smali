.class Lcom/jd/lottery/lib/activity/ConfirmListActivity$11;
.super Ljava/lang/Object;
.source "ConfirmListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$11;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$11;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #calls: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->submit()V
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$10(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    .line 356
    return-void
.end method
