.class Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RulesDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RulesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;",
        ">;"
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
            "Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;",
            ">;"
        }
    .end annotation
.end field

.field layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;


# direct methods
.method public constructor <init>(Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
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
            "Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;>;"
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 129
    iput-object p3, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;->items:Ljava/util/ArrayList;

    .line 130
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 132
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;->getItem(I)Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;->getItem(I)Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;

    move-result-object v3

    iget-object v2, v3, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;->title:Ljava/lang/String;

    .line 158
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;->getItem(I)Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;

    move-result-object v3

    iget-object v0, v3, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;->content:Ljava/lang/String;

    .line 160
    .local v0, content:Ljava/lang/String;
    const/4 v1, 0x0

    .line 161
    .local v1, holder:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;
    if-nez p2, :cond_0

    .line 163
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 164
    sget v4, Lcom/jd/lottery/lib/R$layout;->widget_fragment_dialog_rules_listview_item:I

    .line 165
    const/4 v5, 0x0

    .line 163
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 167
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;

    .end local v1           #holder:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;-><init>(Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;)V

    .line 169
    .restart local v1       #holder:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;
    sget v3, Lcom/jd/lottery/lib/R$id;->rules_item_title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 168
    iput-object v3, v1, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 171
    sget v3, Lcom/jd/lottery/lib/R$id;->rules_item_content:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 170
    iput-object v3, v1, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;->content:Landroid/widget/TextView;

    .line 173
    sget v3, Lcom/jd/lottery/lib/R$id;->rules_item_li:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 172
    iput-object v3, v1, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;->li:Landroid/widget/ImageView;

    .line 175
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    :goto_0
    iget-object v3, v1, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, v1, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v3, v1, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;->li:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->liResId:[I
    invoke-static {v4}, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;)[I

    move-result-object v4

    rem-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    return-object p2

    .line 177
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;
    check-cast v1, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;

    .restart local v1       #holder:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$ViewHolder;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method
