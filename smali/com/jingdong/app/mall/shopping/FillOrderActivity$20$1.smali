.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$20$1;
.super Landroid/widget/SimpleAdapter;
.source "FillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$20;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$20;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$20$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$20;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 2320
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2324
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2326
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$20$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$20;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$20;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$20;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$20;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$20$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initPayView(Landroid/view/View;Ljava/util/Map;)V
    invoke-static {v1, p2, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$28(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/view/View;Ljava/util/Map;)V

    .line 2328
    return-object p2
.end method
