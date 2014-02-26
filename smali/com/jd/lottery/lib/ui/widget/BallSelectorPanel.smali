.class public Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;
.super Landroid/widget/LinearLayout;
.source "BallSelectorPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;,
        Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;,
        Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;,
        Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

.field private myGridView:Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;

.field private selectorChangedListener:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    sget v1, Lcom/jd/lottery/lib/R$layout;->widget_ball_selector_panel_layout:I

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    sget v0, Lcom/jd/lottery/lib/R$id;->selected_ball_panel_gridview:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myGridView:Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;)Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->selectorChangedListener:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->clean()V

    .line 125
    :cond_0
    return-void
.end method

.method public cleanOthers(I)V
    .locals 1
    .parameter "k"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    invoke-virtual {v0, p1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->cleanOthers(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public getSelectedNums()Ljava/util/List;
    .locals 1
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
    .line 118
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->getSelectedNums()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V
    .locals 6
    .parameter "startNum"
    .parameter "length"
    .parameter "coler"

    .prologue
    .line 59
    new-instance v0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->mContext:Landroid/content/Context;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;-><init>(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;Landroid/content/Context;IILcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallColer;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    .line 60
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myGridView:Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myGridView:Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;

    .line 62
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$1;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$1;-><init>(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    return-void
.end method

.method public isSelected(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, result:Z
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    invoke-virtual {v1, p1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->isItemSelected(I)Z

    move-result v0

    .line 87
    :cond_0
    return v0
.end method

.method public negationItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    invoke-virtual {v0, p1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->negationItem(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public setOnSelectorChangedListener(Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;)V
    .locals 0
    .parameter "selectorChangedListener"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->selectorChangedListener:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$SelectorChangedListener;

    .line 141
    return-void
.end method

.method public setSelected(Ljava/util/List;)V
    .locals 1
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
    .line 107
    .local p1, integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel;->myAdapter:Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;

    invoke-virtual {v0, p1}, Lcom/jd/lottery/lib/ui/widget/BallSelectorPanel$BallSelectorAdapter;->setSelected(Ljava/util/List;)V

    .line 110
    :cond_0
    return-void
.end method
