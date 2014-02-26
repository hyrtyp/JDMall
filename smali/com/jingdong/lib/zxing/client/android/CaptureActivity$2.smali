.class Lcom/jingdong/lib/zxing/client/android/CaptureActivity$2;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/lib/zxing/client/android/CaptureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity$2;->this$0:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity$2;->this$0:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-virtual {v1}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->finish()V

    goto :goto_0

    .line 76
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity$2;->this$0:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    const-class v2, Lcom/jingdong/app/mall/barcode/BarcodeInputActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity$2;->this$0:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity$2;->this$0:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/CaptureActivity$2;->this$0:Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    const-class v4, Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x7f0c001d
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
