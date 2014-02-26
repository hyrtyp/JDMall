.class Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$2;
.super Ljava/lang/Object;
.source "AmHelperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;

.field private final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field private final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$2;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;

    iput-object p2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$2;->val$icon:Landroid/widget/ImageView;

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$2;->val$icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    :cond_0
    return-void
.end method
