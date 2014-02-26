.class Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable$1;
.super Ljava/lang/Object;
.source "HandlerRecycleBitmapDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;


# direct methods
.method constructor <init>(Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable$1;->this$0:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable$1;->this$0:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    invoke-virtual {v0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->invalidateSelf()V

    .line 132
    return-void
.end method
