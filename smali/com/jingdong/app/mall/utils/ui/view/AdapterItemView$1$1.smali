.class Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1$1;
.super Ljava/lang/Object;
.source "AdapterItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;

.field private final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1$1;->val$icon:Landroid/widget/ImageView;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1$1;->val$icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/jingdong/common/ui/ExceptionDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->access$0(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;)Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->access$0(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;)Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070229

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method
