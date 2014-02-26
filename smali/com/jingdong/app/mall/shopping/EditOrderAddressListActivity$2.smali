.class Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "EditOrderAddressListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private selectedPosition:I

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->selectedPosition:I

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;)Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v10, 0x8

    const/4 v11, 0x0

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 125
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/UserAddress;

    .line 127
    .local v0, address:Lcom/jingdong/common/entity/UserAddress;
    const v9, 0x7f0c034c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 128
    .local v3, layoutModify:Landroid/view/View;
    const v9, 0x7f0c0346

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 130
    .local v2, layoutContent:Landroid/view/View;
    const v9, 0x7f0c034d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 131
    .local v1, imageviewItem:Landroid/widget/ImageView;
    const v9, 0x7f0c0348

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 132
    .local v6, textviewName:Landroid/widget/TextView;
    const v9, 0x7f0c0344

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 134
    .local v8, viewTopGap:Landroid/view/View;
    const v9, 0x7f0c034b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 135
    .local v5, msgText:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserAddress;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, msg:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 137
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    if-nez p1, :cond_2

    .line 144
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :goto_1
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 152
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Lcom/jingdong/common/entity/UserAddress;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/jingdong/common/entity/UserAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->selectedPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->selectedPosition:I

    if-ne p1, v9, :cond_3

    .line 153
    :cond_0
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iput p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;->selectedPosition:I

    .line 159
    :goto_2
    new-instance v9, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$1;

    invoke-direct {v9, p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$1;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;Lcom/jingdong/common/entity/UserAddress;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v9, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$2;

    invoke-direct {v9, p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$2;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;Lcom/jingdong/common/entity/UserAddress;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    new-instance v9, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$3;

    invoke-direct {v9, p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2$3;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;Lcom/jingdong/common/entity/UserAddress;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-object v7

    .line 140
    :cond_1
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 156
    :cond_3
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
