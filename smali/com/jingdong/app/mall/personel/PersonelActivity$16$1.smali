.class Lcom/jingdong/app/mall/personel/PersonelActivity$16$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$16;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$16;

.field private final synthetic val$data:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$16;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$16$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$16;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$16$1;->val$data:Ljava/util/List;

    .line 1743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$16$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$16;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$16;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$16;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$16;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$16$1;->val$data:Ljava/util/List;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->createOrderInfo(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$52(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/util/List;)V

    .line 1748
    return-void
.end method
