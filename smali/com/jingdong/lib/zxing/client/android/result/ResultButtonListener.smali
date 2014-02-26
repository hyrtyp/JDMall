.class public final Lcom/jingdong/lib/zxing/client/android/result/ResultButtonListener;
.super Ljava/lang/Object;
.source "ResultButtonListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final index:I

.field private final resultHandler:Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;


# direct methods
.method public constructor <init>(Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;I)V
    .locals 0
    .parameter "resultHandler"
    .parameter "index"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultButtonListener;->resultHandler:Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;

    .line 34
    iput p2, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultButtonListener;->index:I

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultButtonListener;->resultHandler:Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;

    iget v1, p0, Lcom/jingdong/lib/zxing/client/android/result/ResultButtonListener;->index:I

    invoke-virtual {v0, v1}, Lcom/jingdong/lib/zxing/client/android/result/ResultHandler;->handleButtonPress(I)V

    .line 40
    return-void
.end method
