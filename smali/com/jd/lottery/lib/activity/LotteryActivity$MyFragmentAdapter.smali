.class public Lcom/jd/lottery/lib/activity/LotteryActivity$MyFragmentAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "LotteryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/activity/LotteryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyFragmentAdapter"
.end annotation


# instance fields
.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter "fm"

    .prologue
    .line 672
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 673
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "fm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p2, fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 678
    iput-object p2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$MyFragmentAdapter;->fragments:Ljava/util/ArrayList;

    .line 679
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$MyFragmentAdapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$MyFragmentAdapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method
