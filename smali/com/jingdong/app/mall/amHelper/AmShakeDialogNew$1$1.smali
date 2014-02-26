.class Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1;
.super Ljava/lang/Object;
.source "AmShakeDialogNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;

.field private final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1;->val$imageView:Landroid/widget/ImageView;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 249
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1;->val$imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1;->val$imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/jingdong/common/ui/ExceptionDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;)Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;
    invoke-static {v3}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;)Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1;->val$imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    :cond_0
    return-void
.end method
