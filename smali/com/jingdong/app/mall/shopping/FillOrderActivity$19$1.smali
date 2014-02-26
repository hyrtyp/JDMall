.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$1;
.super Landroid/widget/SimpleAdapter;
.source "FillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 2085
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2089
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2090
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v1, :cond_0

    .line 2091
    const v1, 0x7f0c02c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2094
    :cond_0
    return-object v0
.end method
