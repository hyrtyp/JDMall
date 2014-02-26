.class Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PaymentMethodDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CouponAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/jd/lottery/lib/model/Pair",
        "<",
        "Ljava/lang/String;",
        "Lcom/jd/lottery/lib/model/CouponInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field isSelected:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jd/lottery/lib/model/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/jd/lottery/lib/model/CouponInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;


# direct methods
.method public constructor <init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jd/lottery/lib/model/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/jd/lottery/lib/model/CouponInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/lottery/lib/model/Pair<Ljava/lang/String;Lcom/jd/lottery/lib/model/CouponInfo;>;>;"
    const/4 v4, 0x0

    .line 465
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    .line 466
    invoke-direct {p0, p2, v4, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 467
    iput-object p3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->items:Ljava/util/ArrayList;

    .line 468
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 470
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected:Ljava/util/HashMap;

    .line 471
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 474
    return-void

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
    .locals 1
    .parameter

    .prologue
    .line 459
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    return-object v0
.end method


# virtual methods
.method public cleanAllSelect()V
    .locals 2

    .prologue
    .line 505
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 508
    return-void

    .line 506
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->cleanSelected(I)V

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public cleanSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/jd/lottery/lib/model/Pair;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/jd/lottery/lib/model/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/jd/lottery/lib/model/CouponInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/model/Pair;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->getItem(I)Lcom/jd/lottery/lib/model/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 493
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    .line 517
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->getItem(I)Lcom/jd/lottery/lib/model/Pair;

    move-result-object v0

    .line 519
    .local v0, coupon:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/String;Lcom/jd/lottery/lib/model/CouponInfo;>;"
    const/4 v1, 0x0

    .line 520
    .local v1, holder:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;
    if-nez p2, :cond_0

    .line 522
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 523
    sget v4, Lcom/jd/lottery/lib/R$layout;->widget_fragment_dialog_payment_listview_item:I

    .line 522
    invoke-virtual {v3, v4, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 526
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;

    .end local v1           #holder:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;
    invoke-direct {v1}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;-><init>()V

    .line 528
    .restart local v1       #holder:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;
    sget v3, Lcom/jd/lottery/lib/R$id;->coupon_item_layout:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 527
    iput-object v3, v1, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;->layout:Landroid/widget/LinearLayout;

    .line 530
    sget v3, Lcom/jd/lottery/lib/R$id;->coupon_item_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 529
    iput-object v3, v1, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;->textView:Landroid/widget/TextView;

    .line 532
    sget v3, Lcom/jd/lottery/lib/R$id;->coupon_item_checkbox:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 531
    iput-object v3, v1, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 534
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 539
    :goto_0
    iget-object v3, v1, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;->layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;-><init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    iget-object v4, v1, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 564
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 565
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    iget-object v4, v1, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    invoke-virtual {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 566
    sget v6, Lcom/jd/lottery/lib/R$string;->dialog_payment_coupon_item_message:I

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/jd/lottery/lib/model/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/jd/lottery/lib/model/CouponInfo;

    invoke-virtual {v3}, Lcom/jd/lottery/lib/model/CouponInfo;->getDiscount()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v7, v10

    const/4 v8, 0x1

    .line 567
    iget-object v3, v0, Lcom/jd/lottery/lib/model/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/jd/lottery/lib/model/CouponInfo;

    invoke-virtual {v3}, Lcom/jd/lottery/lib/model/CouponInfo;->getEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    .line 565
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    return-object p2

    .line 536
    .end local v2           #sdf:Ljava/text/SimpleDateFormat;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;
    check-cast v1, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;

    .restart local v1       #holder:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    return-void
.end method
