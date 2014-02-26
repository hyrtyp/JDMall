.class Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;
.super Lcom/jd/droidlib/adapter/holder/ViewHolder;
.source "EntryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/adapter/EntryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LotteryHolder"
.end annotation


# instance fields
.field awardPoolContainer:Landroid/view/View;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field lottery_category_dates:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field lottery_category_deadline:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field lottery_category_label:Landroid/widget/ImageView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field lottery_category_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field lottery_category_thumbnail:Landroid/widget/ImageView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field lottery_category_title:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field lottery_category_totalMoney:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field final synthetic this$0:Lcom/jd/lottery/lib/adapter/EntryListAdapter;


# direct methods
.method public constructor <init>(Lcom/jd/lottery/lib/adapter/EntryListAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jd/lottery/lib/adapter/EntryListAdapter$LotteryHolder;->this$0:Lcom/jd/lottery/lib/adapter/EntryListAdapter;

    .line 63
    invoke-direct {p0, p2}, Lcom/jd/droidlib/adapter/holder/ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    return-void
.end method
