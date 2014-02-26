.class public Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;
.super Ljava/lang/Object;
.source "SimpleBeanAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/SimpleBeanAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubViewHolder"
.end annotation


# static fields
.field public static final MORE_PARAMETER_LOADED:Ljava/lang/String; = "loaded"

.field public static final MORE_PARAMETER_LOCAL_LOAD_IMAGE:Ljava/lang/String; = "localLoadImage"

.field public static final MORE_PARAMETER_MANUAL_GET_IMAGE:Ljava/lang/String; = "manualGetImage"


# instance fields
.field private adapter:Lcom/jingdong/common/utils/SimpleBeanAdapter;

.field private itemData:Ljava/lang/Object;

.field private itemView:Landroid/view/View;

.field private moreParameter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private subData:Ljava/lang/Object;

.field private subView:Landroid/view/View;

.field private subViewId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->position:I

    .line 542
    iput v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->subViewId:I

    .line 553
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;)V
    .locals 1
    .parameter "sourceSubViewHolder"

    .prologue
    const/4 v0, 0x0

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->position:I

    .line 542
    iput v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->subViewId:I

    .line 559
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setAdapter(Lcom/jingdong/common/utils/SimpleBeanAdapter;)V

    .line 560
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setPosition(I)V

    .line 561
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setSubViewId(I)V

    .line 562
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getItemData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setItemData(Ljava/lang/Object;)V

    .line 563
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setSubData(Ljava/lang/Object;)V

    .line 564
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setItemView(Landroid/view/View;)V

    .line 565
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setSubView(Landroid/view/View;)V

    .line 566
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->adapter:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    return-object v0
.end method

.method public getItemData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->itemData:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemView()Landroid/view/View;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getMoreParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->moreParameter:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 631
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->moreParameter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->position:I

    return v0
.end method

.method public getSubData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->subData:Ljava/lang/Object;

    return-object v0
.end method

.method public getSubView()Landroid/view/View;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->subView:Landroid/view/View;

    return-object v0
.end method

.method public getSubViewId()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->subViewId:I

    return v0
.end method

.method public putMoreParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->moreParameter:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->moreParameter:Ljava/util/Map;

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->moreParameter:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    return-void
.end method

.method public setAdapter(Lcom/jingdong/common/utils/SimpleBeanAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 573
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->adapter:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    .line 574
    return-void
.end method

.method public setItemData(Ljava/lang/Object;)V
    .locals 0
    .parameter "itemData"

    .prologue
    .line 605
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->itemData:Ljava/lang/Object;

    .line 606
    return-void
.end method

.method public setItemView(Landroid/view/View;)V
    .locals 0
    .parameter "itemView"

    .prologue
    .line 597
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->itemView:Landroid/view/View;

    .line 598
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 581
    iput p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->position:I

    .line 582
    return-void
.end method

.method public setSubData(Ljava/lang/Object;)V
    .locals 0
    .parameter "subData"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->subData:Ljava/lang/Object;

    .line 622
    return-void
.end method

.method public setSubView(Landroid/view/View;)V
    .locals 0
    .parameter "subView"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->subView:Landroid/view/View;

    .line 614
    return-void
.end method

.method public setSubViewId(I)V
    .locals 0
    .parameter "subViewId"

    .prologue
    .line 589
    iput p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->subViewId:I

    .line 590
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubViewHolder [adapter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->adapter:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->itemData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->subData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->subView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subViewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->subViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
