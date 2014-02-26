.class public Lcom/jingdong/app/mall/shopping/GiftSelectDialog;
.super Ljava/lang/Object;
.source "GiftSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/GiftSelectDialog$AlertImageProcessor;,
        Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GiftSelectDialog"


# instance fields
.field private builder:Landroid/app/AlertDialog$Builder;

.field private dialog:Landroid/app/Dialog;

.field private emptyView:Landroid/widget/TextView;

.field private giftsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseGift;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final mDefaultColor:I

.field private mListView:Landroid/widget/ListView;

.field private mainView:Landroid/widget/LinearLayout;

.field private selectListener:Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/app/mall/utils/MyActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseGift;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, giftsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseGift;>;"
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->giftsList:Ljava/util/ArrayList;

    .line 46
    const/high16 v0, -0x100

    iput v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mDefaultColor:I

    .line 55
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 56
    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->giftsList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->builder:Landroid/app/AlertDialog$Builder;

    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;

    const v2, 0x7f0704ad

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    const v0, 0x7f030119

    invoke-static {v0, v3}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->view:Landroid/view/View;

    .line 61
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->initDialog()V

    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->selectListener:Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mainView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getAlertTitleColor()Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    .line 201
    :try_start_0
    const-class v5, Landroid/app/AlertDialog;

    const-string v6, "mAlert"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 202
    .local v2, mAlert:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 203
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, alertController:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mTitleView"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 206
    .local v3, mTitleView:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 208
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 209
    .local v4, title:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 214
    .end local v0           #alertController:Ljava/lang/Object;
    .end local v2           #mAlert:Ljava/lang/reflect/Field;
    .end local v3           #mTitleView:Ljava/lang/reflect/Field;
    .end local v4           #title:Landroid/widget/TextView;
    :goto_0
    return-object v5

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private initDialog()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->view:Landroid/view/View;

    const v1, 0x7f0c06d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mListView:Landroid/widget/ListView;

    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->view:Landroid/view/View;

    const v1, 0x7f0c06d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->emptyView:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->view:Landroid/view/View;

    const v1, 0x7f0c06d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mainView:Landroid/widget/LinearLayout;

    .line 82
    return-void
.end method

.method private setAdapter()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 92
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->giftsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->giftsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->getAlertTitleColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 99
    .local v7, textColor:Landroid/content/res/ColorStateList;
    new-instance v0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 100
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->giftsList:Ljava/util/ArrayList;

    .line 101
    const v4, 0x7f030118

    .line 102
    new-array v5, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "imgUrl"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "name"

    aput-object v6, v5, v1

    .line 103
    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    .line 99
    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;-><init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/ColorStateList;)V

    .line 141
    .local v0, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    new-instance v1, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    new-instance v2, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$AlertImageProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$AlertImageProcessor;-><init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog$AlertImageProcessor;)V

    invoke-direct {v1, v2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 142
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v2, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$2;-><init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;Lcom/jingdong/common/utils/MySimpleAdapter;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 158
    .end local v0           #adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    .end local v7           #textColor:Landroid/content/res/ColorStateList;
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v2, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$3;-><init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 103
    nop

    :array_0
    .array-data 0x4
        0xd3t 0x6t 0xct 0x7ft
        0xd5t 0x6t 0xct 0x7ft
    .end array-data
.end method

.method private setDissmissListener()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$4;-><init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 194
    return-void
.end method


# virtual methods
.method public showDialog(Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->selectListener:Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;

    .line 165
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->dialog:Landroid/app/Dialog;

    .line 167
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->setDissmissListener()V

    .line 168
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 169
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->setAdapter()V

    .line 170
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->giftsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->giftsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x4382

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42f0

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method
