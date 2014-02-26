.class Lcom/jingdong/app/mall/search/EditorActivity$2;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/EditorActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/search/EditorActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/EditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/EditorActivity$2;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$2;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity;->jdImage:Lcom/jingdong/app/mall/search/JDImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/EditorActivity;->access$1(Lcom/jingdong/app/mall/search/EditorActivity;)Lcom/jingdong/app/mall/search/JDImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/search/JDImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    .local v1, bmp:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$2;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity;->jdImage:Lcom/jingdong/app/mall/search/JDImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/EditorActivity;->access$1(Lcom/jingdong/app/mall/search/EditorActivity;)Lcom/jingdong/app/mall/search/JDImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/search/JDImageView;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 107
    .local v7, rect:Landroid/graphics/Rect;
    if-nez v7, :cond_0

    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$2;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    #calls: Lcom/jingdong/app/mall/search/EditorActivity;->doPhotoSearch(Landroid/graphics/Bitmap;IIII)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/search/EditorActivity;->access$2(Lcom/jingdong/app/mall/search/EditorActivity;Landroid/graphics/Bitmap;IIII)V

    .line 115
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v7           #rect:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 110
    .restart local v1       #bmp:Landroid/graphics/Bitmap;
    .restart local v7       #rect:Landroid/graphics/Rect;
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$2;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    iget v4, v7, Landroid/graphics/Rect;->right:I

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    #calls: Lcom/jingdong/app/mall/search/EditorActivity;->doPhotoSearch(Landroid/graphics/Bitmap;IIII)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/search/EditorActivity;->access$2(Lcom/jingdong/app/mall/search/EditorActivity;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v7           #rect:Landroid/graphics/Rect;
    :catch_0
    move-exception v6

    .line 113
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
