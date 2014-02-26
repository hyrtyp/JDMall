.class Lcom/jingdong/app/mall/product/ImageActivity$2;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ImageActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$2;->this$0:Lcom/jingdong/app/mall/product/ImageActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 138
    sget-object v1, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity$2;->this$0:Lcom/jingdong/app/mall/product/ImageActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 142
    .local v0, curItem:I
    sget-object v1, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ImageActivity$2;->this$0:Lcom/jingdong/app/mall/product/ImageActivity;

    new-instance v3, Ljava/io/File;

    sget-object v1, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #calls: Lcom/jingdong/app/mall/product/ImageActivity;->save(Landroid/content/Context;Ljava/io/File;)V
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/ImageActivity;->access$0(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method
