.class Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "BallSelectorPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BallSelectorAdapter"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$jd$lottery$lib$ui$widget$BallSelectorPanel$BallColer:[I


# instance fields
.field public final mColer:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jd/lottery/lib/model/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mLength:I

.field public final mStartingNum:I

.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;


# direct methods
.method static synthetic $SWITCH_TABLE$com$jd$lottery$lib$ui$widget$BallSelectorPanel$BallColer()[I
    .locals 3

    .prologue
    .line 152
    sget-object v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->$SWITCH_TABLE$com$jd$lottery$lib$ui$widget$BallSelectorPanel$BallColer:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->values()[Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->BLUE:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->RED:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->$SWITCH_TABLE$com$jd$lottery$lib$ui$widget$BallSelectorPanel$BallColer:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;Landroid/content/Context;IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "startingNum"
    .parameter "length"
    .parameter "coler"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    .line 162
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 165
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 164
    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 167
    iput p3, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    .line 168
    iput p4, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mLength:I

    .line 169
    iput-object p5, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mColer:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    .line 171
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->initItems()V

    .line 172
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 4

    .prologue
    .line 303
    iget v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mLength:I

    iget v3, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->notifyDataSetChanged()V

    .line 311
    return-void

    .line 305
    :cond_0
    new-instance v1, Lcom/jd/lottery/lib/model/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jd/lottery/lib/model/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    .local v1, pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    iget v3, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    sub-int v3, v0, v3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public cleanOthers(I)V
    .locals 4
    .parameter "k"

    .prologue
    .line 314
    iget v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mLength:I

    iget v3, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->notifyDataSetChanged()V

    .line 322
    return-void

    .line 315
    :cond_0
    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    add-int/2addr v2, p1

    if-eq v0, v2, :cond_1

    .line 316
    new-instance v1, Lcom/jd/lottery/lib/model/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jd/lottery/lib/model/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    .local v1, pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    iget v3, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    sub-int v3, v0, v3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v1           #pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/model/Pair;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 186
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedNums()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    return-object v0

    .line 332
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/Pair;

    .line 333
    .local v1, pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v2, v1, Lcom/jd/lottery/lib/model/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, v1, Lcom/jd/lottery/lib/model/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 193
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/Pair;

    .line 195
    .local v1, item:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    if-nez p2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 197
    sget v3, Lcom/jd/lottery/lib/R$layout;->widget_ball_selector_item:I

    const/4 v4, 0x0

    .line 196
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 198
    new-instance v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;-><init>(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;)V

    .line 201
    .local v0, holder:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;
    sget v2, Lcom/jd/lottery/lib/R$id;->listview_item_imageview:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 200
    iput-object v2, v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;->ballImageView:Landroid/widget/ImageView;

    .line 204
    sget v2, Lcom/jd/lottery/lib/R$id;->listview_item_textview:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 203
    iput-object v2, v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;->ballNumberTextView:Landroid/widget/TextView;

    .line 206
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    :goto_0
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;->ballNumberTextView:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/jd/lottery/lib/model/Pair;->first:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->$SWITCH_TABLE$com$jd$lottery$lib$ui$widget$BallSelectorPanel$BallColer()[I

    move-result-object v2

    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mColer:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;

    invoke-virtual {v3}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 239
    :goto_1
    return-object p2

    .line 208
    .end local v0           #holder:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;

    .restart local v0       #holder:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;
    goto :goto_0

    .line 215
    :pswitch_0
    iget-object v2, v1, Lcom/jd/lottery/lib/model/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;->ballImageView:Landroid/widget/ImageView;

    .line 217
    sget v3, Lcom/jd/lottery/lib/R$drawable;->red_ball_icon_selector_selected:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    :goto_2
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;->ballNumberTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    #getter for: Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->access$0(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jd/lottery/lib/R$color;->lottery_ball_number_red:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 219
    :cond_1
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;->ballImageView:Landroid/widget/ImageView;

    .line 220
    sget v3, Lcom/jd/lottery/lib/R$drawable;->red_ball_icon_selector:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 225
    :pswitch_1
    iget-object v2, v1, Lcom/jd/lottery/lib/model/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;->ballImageView:Landroid/widget/ImageView;

    .line 227
    sget v3, Lcom/jd/lottery/lib/R$drawable;->blue_ball_icon_selector_selected:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    :goto_3
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;->ballNumberTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;

    #getter for: Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->access$0(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jd/lottery/lib/R$color;->lottery_ball_number_blue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 229
    :cond_2
    iget-object v2, v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;->ballImageView:Landroid/widget/ImageView;

    .line 230
    sget v3, Lcom/jd/lottery/lib/R$drawable;->blue_ball_icon_selector:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initItems()V
    .locals 4

    .prologue
    .line 246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    .line 247
    iget v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    iget v3, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mLength:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    .line 252
    return-void

    .line 248
    :cond_0
    new-instance v1, Lcom/jd/lottery/lib/model/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 249
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 248
    invoke-direct {v1, v2, v3}, Lcom/jd/lottery/lib/model/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .local v1, pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isItemSelected(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/model/Pair;

    iget-object v0, v0, Lcom/jd/lottery/lib/model/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public negationItem(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 270
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/model/Pair;

    .line 272
    .local v0, item:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/jd/lottery/lib/model/Pair;

    .line 273
    iget-object v2, v0, Lcom/jd/lottery/lib/model/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, v0, Lcom/jd/lottery/lib/model/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 272
    invoke-direct {v1, v2, v3}, Lcom/jd/lottery/lib/model/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .local v1, pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->notifyDataSetChanged()V

    .line 278
    return-void

    .line 273
    .end local v1           #pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelected(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, randomIntegers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    .line 287
    iget v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mLength:I

    iget v3, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mStartingNum:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->notifyDataSetChanged()V

    .line 300
    return-void

    .line 290
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    new-instance v1, Lcom/jd/lottery/lib/model/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jd/lottery/lib/model/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    .local v1, pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :goto_1
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v1           #pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_1
    new-instance v1, Lcom/jd/lottery/lib/model/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jd/lottery/lib/model/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .restart local v1       #pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    goto :goto_1
.end method
