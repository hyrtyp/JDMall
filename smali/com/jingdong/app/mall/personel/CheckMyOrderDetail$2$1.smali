.class Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2$1;
.super Ljava/lang/Object;
.source "CheckMyOrderDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$ukey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2$1;->this$1:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2$1;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2$1;->val$ukey:Ljava/lang/String;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 271
    new-instance v0, Lcom/jingdong/app/mall/gis/GisUrlUtil;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2$1;->this$1:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->access$0(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;)Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2$1;->val$orderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2$1;->val$ukey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/jingdong/app/mall/gis/GisUrlUtil;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method
