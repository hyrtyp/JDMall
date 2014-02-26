.class Lcom/jingdong/app/mall/category/CategoryActivity$12;
.super Ljava/lang/Thread;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;->backgroupMakeCategoryImage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

.field private final synthetic val$catelogyList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$12;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$12;->val$catelogyList:Ljava/util/ArrayList;

    .line 1631
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1634
    const-string v4, "CategoryActivity"

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/category/CategoryActivity$12;->setName(Ljava/lang/String;)V

    .line 1636
    const-wide/16 v4, 0x2710

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1641
    :goto_0
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 1642
    .local v2, httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    const/16 v4, 0x1388

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 1643
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    .line 1645
    .local v1, httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity$12;->val$catelogyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1679
    return-void

    .line 1645
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Catelogy;

    .line 1646
    .local v0, cate:Lcom/jingdong/common/entity/Catelogy;
    invoke-static {}, Lcom/jingdong/common/utils/NoImageUtils;->needNoImage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1647
    new-instance v3, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1648
    .local v3, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v3, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 1649
    invoke-virtual {v3, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1650
    invoke-virtual {v0}, Lcom/jingdong/common/entity/Catelogy;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 1651
    new-instance v5, Lcom/jingdong/app/mall/category/CategoryActivity$12$1;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$12$1;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity$12;)V

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1667
    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1674
    const-wide/16 v5, 0x1388

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1675
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1637
    .end local v0           #cate:Lcom/jingdong/common/entity/Catelogy;
    .end local v1           #httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    .end local v2           #httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    .end local v3           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
