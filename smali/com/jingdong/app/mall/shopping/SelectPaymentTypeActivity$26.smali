.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$26;
.super Landroid/widget/ArrayAdapter;
.source "SelectPaymentTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->resetRightAdapter(Landroid/widget/ListView;Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    .local p4, $anonymous2:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$26;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    .line 2139
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2143
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2144
    if-eqz p2, :cond_0

    .line 2145
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$26;->isEnabled(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2147
    :cond_0
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 2152
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$26;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;

    .line 2153
    .local v0, hour:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;->isCanSelected:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
