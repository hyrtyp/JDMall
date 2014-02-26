.class Lcom/jingdong/common/utils/NoImageUtils$3;
.super Ljava/lang/Object;
.source "NoImageUtils.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/NoImageUtils;->loadImage(ZLcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$useCache:Z


# direct methods
.method constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/NoImageUtils$3;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iput-object p2, p0, Lcom/jingdong/common/utils/NoImageUtils$3;->val$imageView:Landroid/widget/ImageView;

    iput-boolean p3, p0, Lcom/jingdong/common/utils/NoImageUtils$3;->val$useCache:Z

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/common/utils/NoImageUtils$3;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v1, Lcom/jingdong/common/utils/NoImageUtils$3$1;

    iget-object v2, p0, Lcom/jingdong/common/utils/NoImageUtils$3;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {v1, p0, p1, v2}, Lcom/jingdong/common/utils/NoImageUtils$3$1;-><init>(Lcom/jingdong/common/utils/NoImageUtils$3;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 5
    .parameter "error"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jingdong/common/utils/NoImageUtils$3;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v1, Lcom/jingdong/common/utils/NoImageUtils$3$2;

    iget-boolean v2, p0, Lcom/jingdong/common/utils/NoImageUtils$3;->val$useCache:Z

    iget-object v3, p0, Lcom/jingdong/common/utils/NoImageUtils$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jingdong/common/utils/NoImageUtils$3;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/jingdong/common/utils/NoImageUtils$3$2;-><init>(Lcom/jingdong/common/utils/NoImageUtils$3;ZLandroid/widget/ImageView;Lcom/jingdong/common/frame/IMyActivity;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 89
    return-void
.end method
