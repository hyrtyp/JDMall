.class Lcom/jingdong/app/mall/product/PriceReportActivity$1$1;
.super Ljava/lang/Object;
.source "PriceReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/PriceReportActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/PriceReportActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$1;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity$1;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/PriceReportActivity$1;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$1;)Lcom/jingdong/app/mall/product/PriceReportActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/product/PriceReportActivity;->validate()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$1(Lcom/jingdong/app/mall/product/PriceReportActivity;)V

    .line 108
    return-void
.end method
