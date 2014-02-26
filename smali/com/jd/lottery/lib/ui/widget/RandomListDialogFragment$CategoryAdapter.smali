.class Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RandomListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;


# direct methods
.method public constructor <init>(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 198
    iput-object p3, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->items:Ljava/util/ArrayList;

    .line 199
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 200
    return-void
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;)Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 219
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 224
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, lottery:Ljava/lang/String;
    const/4 v0, 0x0

    .line 227
    .local v0, holder:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;
    if-nez p2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 230
    sget v3, Lcom/jd/lottery/lib/R$layout;->widget_fragment_dialog_random_listview_item:I

    .line 229
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 233
    new-instance v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;

    .end local v0           #holder:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;
    invoke-direct {v0}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;-><init>()V

    .line 235
    .restart local v0       #holder:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;
    sget v2, Lcom/jd/lottery/lib/R$id;->random_item_layout:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 234
    iput-object v2, v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;->layout:Landroid/widget/RelativeLayout;

    .line 237
    sget v2, Lcom/jd/lottery/lib/R$id;->random_item_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 236
    iput-object v2, v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;->textView:Landroid/widget/TextView;

    .line 239
    sget v2, Lcom/jd/lottery/lib/R$id;->random_item_imageview:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 238
    iput-object v2, v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 241
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 246
    :goto_0
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;->layout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$1;-><init>(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/jd/lottery/lib/utils/LotteryNumberDecor;->decorLotteryNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->currentPosition:I
    invoke-static {v2}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;->access$2(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment;)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 260
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter$2;-><init>(Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$CategoryAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    :goto_1
    return-object p2

    .line 243
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;
    check-cast v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;

    .restart local v0       #holder:Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;
    goto :goto_0

    .line 272
    :cond_1
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/RandomListDialogFragment$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method
