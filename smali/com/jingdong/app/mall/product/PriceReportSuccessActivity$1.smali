.class Lcom/jingdong/app/mall/product/PriceReportSuccessActivity$1;
.super Ljava/lang/Object;
.source "PriceReportSuccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity$1;->this$0:Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity$1;->this$0:Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->finish()V

    .line 41
    return-void
.end method
