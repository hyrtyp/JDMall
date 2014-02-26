.class Lcom/jingdong/app/mall/shopping/JingAdapter$ClickListener;
.super Ljava/lang/Object;
.source "JingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/JingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field index:I

.field rb:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/JingAdapter;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/shopping/JingAdapter;Landroid/widget/RadioButton;I)V
    .locals 0
    .parameter
    .parameter "tp"
    .parameter "position"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/JingAdapter$ClickListener;->this$0:Lcom/jingdong/app/mall/shopping/JingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/JingAdapter$ClickListener;->rb:Landroid/widget/RadioButton;

    .line 194
    iput p3, p0, Lcom/jingdong/app/mall/shopping/JingAdapter$ClickListener;->index:I

    .line 195
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter$ClickListener;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter$ClickListener;->rb:Landroid/widget/RadioButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter$ClickListener;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter$ClickListener;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/JingAdapter$ClickListener;->rb:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
