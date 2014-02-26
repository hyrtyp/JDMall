.class Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1$1;
.super Ljava/lang/Object;
.source "EasyGoAddrListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1$1;->this$3:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1$1;->val$index:I

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1$1;->this$3:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v1

    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    iget v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1$1;->val$index:I

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "Id"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->delTemp(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 507
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
