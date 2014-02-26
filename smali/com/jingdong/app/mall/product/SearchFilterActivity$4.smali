.class Lcom/jingdong/app/mall/product/SearchFilterActivity$4;
.super Ljava/lang/Object;
.source "SearchFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/SearchFilterActivity;->initDistributeRegionValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$4;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$4;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$4;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$4;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionSearchChoosed:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->handleHeadClickAction(Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V

    .line 231
    return-void
.end method
