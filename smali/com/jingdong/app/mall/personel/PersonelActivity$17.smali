.class Lcom/jingdong/app/mall/personel/PersonelActivity$17;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->createOrderInfo(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

.field private final synthetic val$jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/common/entity/JdOrderStat;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$17;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$17;->val$jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;

    .line 1799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$17;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$17;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1803
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$17$1;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$17;->val$jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$17$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$17;Lcom/jingdong/common/entity/JdOrderStat;)V

    .line 1813
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$17;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    .line 1814
    return-void
.end method
