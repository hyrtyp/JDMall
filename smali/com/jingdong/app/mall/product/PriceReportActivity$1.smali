.class Lcom/jingdong/app/mall/product/PriceReportActivity$1;
.super Ljava/lang/Object;
.source "PriceReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/PriceReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/PriceReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$1;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$1;)Lcom/jingdong/app/mall/product/PriceReportActivity;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$1;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 93
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$1;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    const-class v3, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "url"

    const-string v3, "http://m.jd.com/help/m/jubao.html"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$1;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    invoke-virtual {v2, v0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$1;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    #calls: Lcom/jingdong/app/mall/product/PriceReportActivity;->showDialog()V
    invoke-static {v2}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity;)V

    goto :goto_0

    .line 103
    :sswitch_2
    new-instance v1, Lcom/jingdong/app/mall/product/PriceReportActivity$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/PriceReportActivity$1$1;-><init>(Lcom/jingdong/app/mall/product/PriceReportActivity$1;)V

    .line 110
    .local v1, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$1;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    invoke-virtual {v2, v3, v1}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c050a -> :sswitch_1
        0x7f0c0513 -> :sswitch_2
        0x7f0c071c -> :sswitch_0
    .end sparse-switch
.end method
