.class Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;
.super Ljava/lang/Object;
.source "ShakeDialogNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setAchieveProgressVisible(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

.field private final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    iput p2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;->val$visibility:I

    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 953
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$21(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$21(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;->val$visibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 955
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$21(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 956
    iget v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;->val$visibility:I

    if-nez v1, :cond_0

    .line 957
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$21(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c02eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 958
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 959
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const v2, 0x7f070555

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$5;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 964
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
