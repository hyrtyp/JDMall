.class Lcom/jingdong/app/mall/personel/MyMessageShow$3;
.super Ljava/lang/Object;
.source "MyMessageShow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyMessageShow;->initViewContentTypeByConsulting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyMessageShow;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$3;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 266
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$3;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageDetail;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 269
    .local v0, idL:Ljava/lang/Long;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$3;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    const/4 v2, 0x0

    .line 270
    new-instance v3, Lcom/jingdong/common/entity/SourceEntity;

    const-string v4, "messageDetail"

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$3;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    iget-object v5, v5, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/MessageListItem;->getType()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {v1, v0, v2, v3}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v0           #idL:Ljava/lang/Long;
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    goto :goto_0
.end method
