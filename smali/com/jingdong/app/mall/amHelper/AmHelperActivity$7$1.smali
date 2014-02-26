.class Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$1;
.super Ljava/lang/Object;
.source "AmHelperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;

.field private final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;

    iput-object p2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$1;->val$icon:Landroid/widget/ImageView;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$1;->val$icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->access$0(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->access$0(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->refreshBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$13(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 427
    return-void
.end method
