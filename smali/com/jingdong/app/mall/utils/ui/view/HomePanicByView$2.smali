.class Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$2;
.super Ljava/lang/Object;
.source "HomePanicByView.java"

# interfaces
.implements Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getProductItemView(Lcom/jingdong/common/entity/Product;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

.field private final synthetic val$dateDrawable:Lcom/jingdong/app/mall/utils/ui/DateDrawable;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;Lcom/jingdong/app/mall/utils/ui/DateDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$2;->val$dateDrawable:Lcom/jingdong/app/mall/utils/ui/DateDrawable;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/jingdong/common/utils/MyCountdownTimer;J[JI)V
    .locals 7
    .parameter "timer"
    .parameter "millisUntilFinished"
    .parameter "hms"
    .parameter "what"

    .prologue
    const/4 v6, 0x1

    .line 194
    if-nez p4, :cond_0

    .line 214
    :goto_0
    return-void

    .line 198
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-wide v4, p4, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, _hh:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-wide v4, p4, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, _mm:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-wide v4, p4, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, _ss:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$2;->val$dateDrawable:Lcom/jingdong/app/mall/utils/ui/DateDrawable;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #_hh:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v0}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setHour(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$2;->val$dateDrawable:Lcom/jingdong/app/mall/utils/ui/DateDrawable;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #_mm:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setMinute(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$2;->val$dateDrawable:Lcom/jingdong/app/mall/utils/ui/DateDrawable;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #_ss:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v2}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->setSecond(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$2;->val$dateDrawable:Lcom/jingdong/app/mall/utils/ui/DateDrawable;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->invalidateSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public finish(Lcom/jingdong/common/utils/MyCountdownTimer;JI)Z
    .locals 6
    .parameter "timer"
    .parameter "endRemainTime"
    .parameter "what"

    .prologue
    .line 176
    packed-switch p4, :pswitch_data_0

    .line 186
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 178
    :pswitch_0
    const-wide/16 v3, 0x3e8

    const/4 v5, 0x2

    move-object v0, p1

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/common/utils/MyCountdownTimer;->reset(JJI)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->onRefresh()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
