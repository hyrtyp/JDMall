.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$35;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->hidePasswordEdit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$35;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 5681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5685
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$35;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$56(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5686
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$35;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defray_passwork_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$62(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5687
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$35;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$11(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5688
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$35;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->hideInputKey()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$10(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 5689
    return-void
.end method
