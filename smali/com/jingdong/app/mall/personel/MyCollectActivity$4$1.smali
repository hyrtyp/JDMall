.class Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;
.super Ljava/lang/Object;
.source "MyCollectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCollectActivity$4;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$4;

.field private final synthetic val$nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$4;Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;->this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$4;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;->val$nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;->val$nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->modifyData(Lcom/jingdong/common/utils/NextPageLoader$ModifyDataRunnable;)V

    .line 320
    return-void
.end method
