.class public Lcom/jingdong/app/mall/plug/PlugSimpleAdapter;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "PlugSimpleAdapter.java"


# instance fields
.field private myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private plugResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V
    .locals 0
    .parameter "myActivity"
    .parameter
    .parameter "itemId"
    .parameter "from"
    .parameter "to"
    .parameter "isNeedLifeCircleCallBack"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/List",
            "<*>;I[",
            "Ljava/lang/String;",
            "[IZ)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, beanList:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-direct/range {p0 .. p6}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    .line 22
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/PlugSimpleAdapter;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 23
    return-void
.end method


# virtual methods
.method protected inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, resourceView:Landroid/view/View;
    iget-object v2, p0, Lcom/jingdong/app/mall/plug/PlugSimpleAdapter;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v2}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v0

    .line 31
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/jingdong/app/mall/plug/PlugSimpleAdapter;->plugResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v2, :cond_0

    .line 32
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/PlugSimpleAdapter;->plugResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    iget-object v2, p0, Lcom/jingdong/app/mall/plug/PlugSimpleAdapter;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v2}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-static {v3, v2, p2, p1}, Lcom/jingdong/app/mall/plug/utils/PlugInflateUtil;->inflate(Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 37
    :goto_0
    return-object v1

    .line 35
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jingdong/common/utils/MySimpleAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public setPlugResources(Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;)V
    .locals 0
    .parameter "plugResources"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/PlugSimpleAdapter;->plugResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    .line 42
    return-void
.end method
