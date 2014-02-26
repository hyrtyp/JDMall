.class Lcom/jingdong/app/mall/shake/ShakeActivity$9;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;->setShakeProgressVisible(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

.field private final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iput p2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;->val$visibility:I

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 383
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$37(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$37(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;->val$visibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$37(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    iget v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;->val$visibility:I

    if-nez v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$37(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c02eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 388
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 389
    const/16 v1, 0xf

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 390
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const v2, 0x7f070556

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
