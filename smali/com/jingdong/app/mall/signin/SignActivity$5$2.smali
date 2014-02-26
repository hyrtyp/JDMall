.class Lcom/jingdong/app/mall/signin/SignActivity$5$2;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity$5;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/signin/SignActivity$5;

.field private final synthetic val$randomImgStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity$5;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$5$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$5;

    iput-object p2, p0, Lcom/jingdong/app/mall/signin/SignActivity$5$2;->val$randomImgStr:Ljava/lang/String;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 451
    iget-object v3, p0, Lcom/jingdong/app/mall/signin/SignActivity$5$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$5;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$5;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/signin/SignActivity$5;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$5;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v3

    const/4 v4, 0x2

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->showView(I)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/signin/SignActivity;->access$23(Lcom/jingdong/app/mall/signin/SignActivity;I)V

    .line 453
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/signin/SignActivity$5$2;->val$randomImgStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/jingdong/common/secure/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 454
    .local v1, bytes:[B
    const/4 v3, 0x0

    .line 455
    array-length v4, v1

    .line 454
    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/jingdong/app/mall/signin/SignActivity$5$2;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$5;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$5;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/signin/SignActivity$5;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$5;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->verifyImg:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jingdong/app/mall/signin/SignActivity;->access$21(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bytes:[B
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v2

    .line 459
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
