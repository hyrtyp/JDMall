.class Lcom/jingdong/app/mall/personel/PhotoUtils$1$1;
.super Ljava/lang/Object;
.source "PhotoUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PhotoUtils$1;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PhotoUtils$1;

.field private final synthetic val$webActivity:Lcom/jingdong/app/mall/WebActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PhotoUtils$1;Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$1$1;->this$1:Lcom/jingdong/app/mall/personel/PhotoUtils$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$1$1;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$1$1;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    const v1, 0x7f07038f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    return-void
.end method
