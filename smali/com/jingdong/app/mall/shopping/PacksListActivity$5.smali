.class Lcom/jingdong/app/mall/shopping/PacksListActivity$5;
.super Ljava/lang/Object;
.source "PacksListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/PacksListActivity;->setMoneyInfo(Landroid/view/View;Lorg/json/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/PacksListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$5;->val$index:I

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 610
    iget v2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$5;->val$index:I

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 609
    #calls: Lcom/jingdong/app/mall/shopping/PacksListActivity;->buyPack(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->access$1(Lcom/jingdong/app/mall/shopping/PacksListActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 611
    return-void
.end method
