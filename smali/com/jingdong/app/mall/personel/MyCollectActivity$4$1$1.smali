.class Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1$1;
.super Ljava/lang/Object;
.source "MyCollectActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/NextPageLoader$ModifyDataRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modifyData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, showItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 318
    :cond_0
    return-void
.end method
