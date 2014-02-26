.class Lcom/jingdong/app/mall/utils/pay/JDPay$1$1;
.super Ljava/lang/Object;
.source "JDPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/pay/JDPay$1;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/pay/JDPay$1;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/pay/JDPay$1;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/pay/JDPay$1$1;->this$1:Lcom/jingdong/app/mall/utils/pay/JDPay$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/pay/JDPay$1$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/pay/JDPay$1$1;->val$url:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/pay/JDPay$1$1;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/pay/JDPay$1$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/pay/JDPay$1$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->startActivityInFrame(Landroid/content/Context;Landroid/content/Intent;)V

    .line 29
    return-void
.end method
