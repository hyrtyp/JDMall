.class Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;
.super Lcom/jingdong/common/utils/MyCountdownTimer;
.source "JDMiaoShaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->setCountdown(JJLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;

.field private final synthetic val$endRemainTime:J

.field private final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;JJILjava/util/Map;J)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;

    iput-object p7, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;->val$map:Ljava/util/Map;

    iput-wide p8, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;->val$endRemainTime:J

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move v5, p6

    .line 95
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MyCountdownTimer;-><init>(JJI)V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 5
    .parameter "what"

    .prologue
    .line 109
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;->val$map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    return-void

    .line 109
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 110
    .local v0, key:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;->val$map:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;

    .line 111
    .local v1, l:Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;
    if-eqz v1, :cond_0

    .line 112
    iget-wide v3, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;->val$endRemainTime:J

    invoke-interface {v1, p0, v3, v4, p1}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;->finish(Lcom/jingdong/common/utils/MyCountdownTimer;JI)Z

    goto :goto_0
.end method

.method public onTick(JI)V
    .locals 8
    .parameter "millisUntilFinished"
    .parameter "what"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;

    invoke-virtual {v1, p1, p2}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil;->toHMS(J)[J

    move-result-object v4

    .line 99
    .local v4, hms:[J
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;->val$map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    return-void

    .line 99
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 100
    .local v6, key:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$1;->val$map:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;

    .line 101
    .local v0, l:Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    .line 102
    invoke-interface/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/JDMiaoShaUtil$CountDownListener;->changed(Lcom/jingdong/common/utils/MyCountdownTimer;J[JI)V

    goto :goto_0
.end method
