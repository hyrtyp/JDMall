.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;
.super Ljava/lang/Thread;
.source "ShoppingCarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

.field private final synthetic val$index:I

.field private final synthetic val$tp:Lcom/jingdong/common/utils/JSONObjectProxy;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;ILcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->val$index:I

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->val$tp:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 1143
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;
    .locals 1
    .parameter

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1147
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1148
    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->val$index:I

    .line 1149
    .local v1, position:I
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1150
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1151
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1155
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updatePackItemData()V
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$4(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 1157
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->val$tp:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v4, "Id"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->deletePackItem(ILjava/lang/Long;)V
    invoke-static {v2, v1, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$24(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;ILjava/lang/Long;)V

    .line 1164
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1169
    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartItem()V
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$5(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 1170
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    .line 1178
    return-void

    .line 1158
    :catch_0
    move-exception v0

    .line 1160
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1165
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1167
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
