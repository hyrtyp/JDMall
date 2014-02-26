.class Lcom/jingdong/common/utils/JDImageUtils$1;
.super Ljava/lang/Object;
.source "JDImageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/JDImageUtils;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/JDImageUtils$1;->val$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/jingdong/common/utils/JDImageUtils$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jingdong/common/utils/JDImageUtils$1;->val$view:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/JDImageUtils$1;->val$view:Landroid/widget/ImageView;

    new-instance v1, Lcom/jingdong/common/ui/ExceptionDrawable;

    iget-object v2, p0, Lcom/jingdong/common/utils/JDImageUtils$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v2}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/jingdong/common/res/StringUtil;->app_name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
