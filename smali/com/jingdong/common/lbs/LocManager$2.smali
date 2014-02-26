.class Lcom/jingdong/common/lbs/LocManager$2;
.super Ljava/lang/Object;
.source "LocManager.java"

# interfaces
.implements Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/lbs/LocManager;->queryInfoByLocation(Lcom/jingdong/common/lbs/LocManager$MyLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/lbs/LocManager;


# direct methods
.method constructor <init>(Lcom/jingdong/common/lbs/LocManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/lbs/LocManager$2;->this$0:Lcom/jingdong/common/lbs/LocManager;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/lbs/ProductInfoUtil;Ljava/lang/String;)V
    .locals 1
    .parameter "productInfoUtil"
    .parameter "msg"

    .prologue
    .line 185
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->access$1()Lcom/jingdong/common/lbs/LocManager$MyLocationListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jingdong/common/lbs/LocManager$MyLocationListener;->onFinish(Lcom/jingdong/common/lbs/ProductInfoUtil;Ljava/lang/String;)V

    .line 186
    return-void
.end method
