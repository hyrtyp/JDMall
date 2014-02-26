.class public Lcom/jd/lottery/lib/LotteryHome;
.super Landroid/app/Activity;
.source "LotteryHome.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    sget v0, Lcom/jd/lottery/lib/R$layout;->activity_lottery_home:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/LotteryHome;->setContentView(I)V

    .line 14
    return-void
.end method
