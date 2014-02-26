.class Lcom/jingdong/common/ui/CustomDigitalClock$1;
.super Ljava/lang/Object;
.source "CustomDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/ui/CustomDigitalClock;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/ui/CustomDigitalClock;


# direct methods
.method constructor <init>(Lcom/jingdong/common/ui/CustomDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->mTickerStopped:Z
    invoke-static {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$1(Lcom/jingdong/common/ui/CustomDigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 102
    .local v7, currentTime:J
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->endTime:J
    invoke-static {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$2(Lcom/jingdong/common/ui/CustomDigitalClock;)J

    move-result-wide v0

    sub-long v2, v0, v7

    .line 104
    .local v2, distanceTime:J
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    invoke-virtual {v0, v2, v3}, Lcom/jingdong/common/ui/CustomDigitalClock;->toHMS(J)[J

    move-result-object v4

    .line 105
    .local v4, hms:[J
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    invoke-virtual {v0, v4}, Lcom/jingdong/common/ui/CustomDigitalClock;->hmsToString([J)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 106
    .local v5, stringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->mListener:Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;
    invoke-static {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$3(Lcom/jingdong/common/ui/CustomDigitalClock;)Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->mListener:Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;
    invoke-static {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$3(Lcom/jingdong/common/ui/CustomDigitalClock;)Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    iget-object v6, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->what:I
    invoke-static {v6}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$4(Lcom/jingdong/common/ui/CustomDigitalClock;)I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;->changed(Lcom/jingdong/common/ui/CustomDigitalClock;J[JLandroid/text/SpannableStringBuilder;I)V

    .line 126
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->noneText:Z
    invoke-static {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$5(Lcom/jingdong/common/ui/CustomDigitalClock;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    iget-object v1, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    iget-object v6, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    const-wide/16 v13, 0x0

    invoke-virtual {v6, v13, v14}, Lcom/jingdong/common/ui/CustomDigitalClock;->toHMS(J)[J

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/jingdong/common/ui/CustomDigitalClock;->hmsToString([J)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/CustomDigitalClock;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->mListener:Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;
    invoke-static {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$3(Lcom/jingdong/common/ui/CustomDigitalClock;)Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    iget-object v1, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->mListener:Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;
    invoke-static {v1}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$3(Lcom/jingdong/common/ui/CustomDigitalClock;)Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;

    move-result-object v1

    iget-object v6, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    iget-object v13, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->what:I
    invoke-static {v13}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$4(Lcom/jingdong/common/ui/CustomDigitalClock;)I

    move-result v13

    invoke-interface {v1, v6, v13}, Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;->finish(Lcom/jingdong/common/ui/CustomDigitalClock;I)Z

    move-result v1

    #setter for: Lcom/jingdong/common/ui/CustomDigitalClock;->mTickerStopped:Z
    invoke-static {v0, v1}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$6(Lcom/jingdong/common/ui/CustomDigitalClock;Z)V

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->mTickerStopped:Z
    invoke-static {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$1(Lcom/jingdong/common/ui/CustomDigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    invoke-virtual {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->onDetachedFromWindow()V

    .line 147
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    invoke-virtual {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->invalidate()V

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 149
    .local v11, now:J
    const-wide/16 v0, 0x3e8

    const-wide/16 v13, 0x3e8

    rem-long v13, v11, v13

    sub-long/2addr v0, v13

    add-long v9, v11, v0

    .line 150
    .local v9, next:J
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$7(Lcom/jingdong/common/ui/CustomDigitalClock;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->mTicker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$8(Lcom/jingdong/common/ui/CustomDigitalClock;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 143
    .end local v9           #next:J
    .end local v11           #now:J
    :cond_5
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #getter for: Lcom/jingdong/common/ui/CustomDigitalClock;->noneText:Z
    invoke-static {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$5(Lcom/jingdong/common/ui/CustomDigitalClock;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$1;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    invoke-virtual {v0, v5}, Lcom/jingdong/common/ui/CustomDigitalClock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
