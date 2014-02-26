.class Lcom/jd/lottery/lib/activity/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/MainActivity$5;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$5;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/MainActivity;->access$1(Lcom/jd/lottery/lib/activity/MainActivity;)Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$5;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->itemClickable:Z
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/MainActivity;->access$11(Lcom/jd/lottery/lib/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$5;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jd/lottery/lib/activity/MainActivity;->itemClickable:Z
    invoke-static {v0, v1}, Lcom/jd/lottery/lib/activity/MainActivity;->access$12(Lcom/jd/lottery/lib/activity/MainActivity;Z)V

    .line 123
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$5;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #calls: Lcom/jd/lottery/lib/activity/MainActivity;->handleClick(I)V
    invoke-static {v0, p3}, Lcom/jd/lottery/lib/activity/MainActivity;->access$13(Lcom/jd/lottery/lib/activity/MainActivity;I)V

    .line 124
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$5;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jd/lottery/lib/activity/MainActivity;->itemClickable:Z
    invoke-static {v0, v1}, Lcom/jd/lottery/lib/activity/MainActivity;->access$12(Lcom/jd/lottery/lib/activity/MainActivity;Z)V

    goto :goto_0
.end method
