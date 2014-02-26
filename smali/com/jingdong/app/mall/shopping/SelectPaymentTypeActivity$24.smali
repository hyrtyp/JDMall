.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$24;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->show311Dialog(Ljava/util/ArrayList;II)V
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
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

.field private final synthetic val$right:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$24;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$24;->val$right:Landroid/widget/ListView;

    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
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
    .line 2017
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p1, :cond_1

    instance-of v4, p1, Landroid/widget/ListView;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 2018
    check-cast v2, Landroid/widget/ListView;

    .line 2019
    .local v2, lv:Landroid/widget/ListView;
    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2021
    const/4 v1, 0x0

    .line 2023
    .local v1, day:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;
    :try_start_0
    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 2024
    .local v3, object:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;

    if-eqz v4, :cond_0

    .line 2025
    move-object v0, v3

    check-cast v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    .end local v3           #object:Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$24;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$24;->val$right:Landroid/widget/ListView;

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->resetRightAdapter(Landroid/widget/ListView;Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;)V
    invoke-static {v4, v5, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$32(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/widget/ListView;Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;)V

    .line 2035
    .end local v1           #day:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;
    .end local v2           #lv:Landroid/widget/ListView;
    :cond_1
    return-void

    .line 2027
    .restart local v1       #day:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;
    .restart local v2       #lv:Landroid/widget/ListView;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
