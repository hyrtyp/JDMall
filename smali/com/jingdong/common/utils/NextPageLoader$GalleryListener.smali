.class Lcom/jingdong/common/utils/NextPageLoader$GalleryListener;
.super Ljava/lang/Object;
.source "NextPageLoader.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/NextPageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/NextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader$GalleryListener;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader$GalleryListener;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    iget-object v1, v1, Lcom/jingdong/common/utils/NextPageLoader;->showItemList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader$GalleryListener;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    iget-object v1, v1, Lcom/jingdong/common/utils/NextPageLoader;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 227
    .local v0, count:I
    if-ne v0, p3, :cond_0

    .line 229
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader$GalleryListener;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #getter for: Lcom/jingdong/common/utils/NextPageLoader;->isFinishing:Z
    invoke-static {v1}, Lcom/jingdong/common/utils/NextPageLoader;->access$0(Lcom/jingdong/common/utils/NextPageLoader;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader$GalleryListener;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/NextPageLoader;->isLoadedLastPage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader$GalleryListener;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #calls: Lcom/jingdong/common/utils/NextPageLoader;->tryShowNextPage()V
    invoke-static {v1}, Lcom/jingdong/common/utils/NextPageLoader;->access$1(Lcom/jingdong/common/utils/NextPageLoader;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
