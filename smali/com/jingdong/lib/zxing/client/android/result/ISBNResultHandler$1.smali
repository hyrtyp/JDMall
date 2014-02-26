.class Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler$1;
.super Ljava/lang/Object;
.source "ISBNResultHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;


# direct methods
.method constructor <init>(Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler$1;->this$0:Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 43
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler$1;->this$0:Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;

    invoke-virtual {v1}, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/ISBNParsedResult;

    .line 44
    .local v0, isbnResult:Lcom/google/zxing/client/result/ISBNParsedResult;
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler$1;->this$0:Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ISBNParsedResult;->getISBN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/lib/zxing/client/android/result/ISBNResultHandler;->openGoogleShopper(Ljava/lang/String;)V

    .line 45
    return-void
.end method
