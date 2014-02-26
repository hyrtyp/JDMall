.class Lcom/jingdong/app/mall/product/ImageActivity$1;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


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

.field private final synthetic val$largeSize:F


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ImageActivity;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$1;->this$0:Lcom/jingdong/app/mall/product/ImageActivity;

    iput p2, p0, Lcom/jingdong/app/mall/product/ImageActivity$1;->val$largeSize:F

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity$1;->this$0:Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, t:Landroid/widget/TextView;
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    iget v1, p0, Lcom/jingdong/app/mall/product/ImageActivity$1;->val$largeSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity$1;->this$0:Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/ImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 111
    return-object v0
.end method
