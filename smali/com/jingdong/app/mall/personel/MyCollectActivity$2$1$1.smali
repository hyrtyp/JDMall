.class Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1$1;
.super Ljava/lang/Object;
.source "MyCollectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$2;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;->access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;)Lcom/jingdong/app/mall/personel/MyCollectActivity$2;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$2;)Lcom/jingdong/app/mall/personel/MyCollectActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/MyCollectActivity$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;->access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;)Lcom/jingdong/app/mall/personel/MyCollectActivity$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$2;)Lcom/jingdong/app/mall/personel/MyCollectActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MyCollectActivity;->nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    #calls: Lcom/jingdong/app/mall/personel/MyCollectActivity;->cancelFavorites(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/entity/Product;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/personel/MyCollectActivity;->access$0(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/entity/Product;)V

    .line 224
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 225
    return-void
.end method
