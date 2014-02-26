.class Lcom/jingdong/common/utils/NoImageUtils$3$2;
.super Ljava/lang/Object;
.source "NoImageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/NoImageUtils$3;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/NoImageUtils$3;

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$useCache:Z


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/NoImageUtils$3;ZLandroid/widget/ImageView;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/NoImageUtils$3$2;->this$1:Lcom/jingdong/common/utils/NoImageUtils$3;

    iput-boolean p2, p0, Lcom/jingdong/common/utils/NoImageUtils$3$2;->val$useCache:Z

    iput-object p3, p0, Lcom/jingdong/common/utils/NoImageUtils$3$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/jingdong/common/utils/NoImageUtils$3$2;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NoImageUtils$3$2;->val$useCache:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/jingdong/common/utils/NoImageUtils$3$2;->val$imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/jingdong/common/ui/ExceptionDrawable;

    iget-object v2, p0, Lcom/jingdong/common/utils/NoImageUtils$3$2;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v2}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/jingdong/common/res/StringUtil;->need_long_click:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/NoImageUtils$3$2;->val$imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/jingdong/common/ui/ExceptionDrawable;

    iget-object v2, p0, Lcom/jingdong/common/utils/NoImageUtils$3$2;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v2}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/jingdong/common/res/StringUtil;->no_image:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
