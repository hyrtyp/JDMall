.class Lcom/jingdong/common/utils/JDImageUtils$3;
.super Ljava/lang/Object;
.source "JDImageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/JDImageUtils;->drawViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$result:Landroid/graphics/Bitmap;

.field private final synthetic val$url:Ljava/lang/String;

.field private final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/jingdong/common/frame/IMyActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/JDImageUtils$3;->val$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/jingdong/common/utils/JDImageUtils$3;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iput-object p3, p0, Lcom/jingdong/common/utils/JDImageUtils$3;->val$result:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/jingdong/common/utils/JDImageUtils$3;->val$url:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 266
    iget-object v1, p0, Lcom/jingdong/common/utils/JDImageUtils$3;->val$view:Landroid/widget/ImageView;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/common/utils/JDImageUtils$3;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v2, p0, Lcom/jingdong/common/utils/JDImageUtils$3;->val$view:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jingdong/common/utils/JDImageUtils$3;->val$result:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/jingdong/common/utils/JDImageUtils$3;->val$url:Ljava/lang/String;

    #calls: Lcom/jingdong/common/utils/JDImageUtils;->reallyDraw(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v4}, Lcom/jingdong/common/utils/JDImageUtils;->access$1(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 266
    monitor-exit v1

    .line 269
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
