.class Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;
.super Ljava/lang/Object;
.source "AmShakeDialogNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->setAchieveProgressVisible(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

.field private final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    iput p2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;->val$visibility:I

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 300
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mAchieveProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->access$1(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mAchieveProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->access$1(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;->val$visibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mAchieveProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->access$1(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;->val$visibility:I

    if-nez v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mAchieveProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->access$1(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c02eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 305
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    const v2, 0x7f070555

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
