.class Lcom/jingdong/app/mall/personel/PersonelActivity$17$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$17;

.field private final synthetic val$jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$17;Lcom/jingdong/common/entity/JdOrderStat;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$17$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$17;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$17$1;->val$jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;

    .line 1803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1806
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$17$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$17;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$17;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$17;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$17;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1807
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "functionId"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$17$1;->val$jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/JdOrderStat;->getFunctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1808
    const-string v1, "title"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$17$1;->val$jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/JdOrderStat;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1809
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1810
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$17$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$17;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$17;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$17;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$17;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 1811
    return-void
.end method
