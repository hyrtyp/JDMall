.class Lcom/jingdong/app/mall/personel/MyCollectActivity$3$1;
.super Ljava/lang/Object;
.source "MyCollectActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/NextPageLoader$ModifyDataRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$3;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modifyData(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 259
    .local p1, showItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$3;)Lcom/jingdong/app/mall/personel/MyCollectActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyCollectActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCollectActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$3;)Lcom/jingdong/app/mall/personel/MyCollectActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyCollectActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCollectActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCollectActivity$3;->access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$3;)Lcom/jingdong/app/mall/personel/MyCollectActivity;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/personel/MyCollectActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->access$2(Lcom/jingdong/app/mall/personel/MyCollectActivity;Lcom/jingdong/common/entity/Product;)V

    .line 263
    return-void
.end method
