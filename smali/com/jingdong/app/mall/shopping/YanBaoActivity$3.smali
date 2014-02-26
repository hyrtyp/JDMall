.class Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;
.super Ljava/lang/Object;
.source "YanBaoActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/YanBaoActivity;->initYanBaoContent(Lcom/jingdong/common/entity/cart/CartResponseYBCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

.field private final synthetic val$detail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

.field private final synthetic val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/entity/cart/CartResponseYBCategory;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$detail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 378
    if-eqz p2, :cond_3

    .line 379
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuType()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->isContainKey(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$4(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$0(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuType()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getSelectDetail(Ljava/lang/String;)Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$5(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Ljava/lang/String;)Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 382
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuType()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->removeSelectBrand(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$6(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Ljava/lang/String;)V

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedBrandOfCategory:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$7(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedBrandOfCategory:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$7(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuType()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getSelectDetail(Ljava/lang/String;)Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$5(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Ljava/lang/String;)Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 388
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$detail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedBrandOfCategory:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$7(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$detail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$8(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$0(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$detail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$9(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 396
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->initYanBaoContent(Lcom/jingdong/common/entity/cart/CartResponseYBCategory;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$2(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/entity/cart/CartResponseYBCategory;)V

    .line 409
    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    :cond_2
    :goto_0
    return-void

    .line 399
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuType()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->isContainKey(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$4(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 400
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuType()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->removeSelectBrand(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$6(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$0(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$detail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 402
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$9(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 403
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->initYanBaoContent(Lcom/jingdong/common/entity/cart/CartResponseYBCategory;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$2(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/entity/cart/CartResponseYBCategory;)V

    .line 405
    :cond_4
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedBrandOfCategory:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$7(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedBrandOfCategory:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$7(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuType()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getSelectDetail(Ljava/lang/String;)Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$5(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Ljava/lang/String;)Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
