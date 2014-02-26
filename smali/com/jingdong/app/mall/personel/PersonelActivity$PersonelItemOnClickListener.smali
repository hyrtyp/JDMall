.class Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonelItemOnClickListener"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"

    .prologue
    .line 2424
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2425
    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->key:Ljava/lang/String;

    .line 2426
    return-void
.end method


# virtual methods
.method public declared-synchronized onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2430
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->key:Ljava/lang/String;

    const-string v2, "coupon"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->key:Ljava/lang/String;

    const-string v2, "giftCard"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2431
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const-class v2, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2432
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2433
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2452
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2434
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->key:Ljava/lang/String;

    const-string v2, "jingBean"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2436
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isQuerying:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$34(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2437
    const-string v1, "personal_jingdong_bean_tip"

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->activityIsGuided(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2438
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const/16 v2, 0x8

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->setViewVisibility(I)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$35(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V

    .line 2439
    const-string v1, "personal_jingdong_bean_tip"

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->setIsGuided(Ljava/lang/String;)V

    .line 2441
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const-string v2, "queryJingBean"

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->queryBalanceAndJingBean(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$36(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2430
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2444
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->key:Ljava/lang/String;

    const-string v2, "balance"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2446
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isQuerying:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$34(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2447
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$PersonelItemOnClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const-string v2, "queryBalance"

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->queryBalanceAndJingBean(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$36(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
