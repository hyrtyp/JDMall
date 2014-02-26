.class Lcom/jd/lottery/lib/activity/LotteryActivity$3;
.super Ljava/lang/Object;
.source "LotteryActivity.java"

# interfaces
.implements Lcom/jd/lottery/lib/utils/CountDownUtil$CountDownListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/LotteryActivity;->init(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/LotteryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$3;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDown(J)V
    .locals 8
    .parameter "milliseconds"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 262
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$3;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->timeCounter:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$3(Lcom/jd/lottery/lib/activity/LotteryActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$string;->time_counter_default:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$3;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->timeCounter:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$3(Lcom/jd/lottery/lib/activity/LotteryActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 277
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v1, Ljava/util/SimpleTimeZone;

    .line 268
    const-string v2, "GMT"

    .line 267
    invoke-direct {v1, v6, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 269
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 271
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$3;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->timeCounter:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$3(Lcom/jd/lottery/lib/activity/LotteryActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$3;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    sget v3, Lcom/jd/lottery/lib/R$string;->time_counter:I

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 272
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 273
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    .line 274
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 275
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 271
    invoke-virtual {v2, v3, v4}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/LotteryActivity$3;->this$0:Lcom/jd/lottery/lib/activity/LotteryActivity;

    #getter for: Lcom/jd/lottery/lib/activity/LotteryActivity;->timeCounter:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/LotteryActivity;->access$3(Lcom/jd/lottery/lib/activity/LotteryActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method
