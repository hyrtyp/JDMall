.class Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDrawable"
.end annotation


# instance fields
.field private state:I

.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1220
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;->state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1218
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1231
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1236
    :goto_0
    return-void

    .line 1234
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x0

    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->getShowLevelWithState()I
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$16(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;->state:I

    .line 1227
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1246
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 1251
    return-void
.end method
