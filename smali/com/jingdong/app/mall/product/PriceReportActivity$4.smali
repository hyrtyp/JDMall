.class Lcom/jingdong/app/mall/product/PriceReportActivity$4;
.super Ljava/lang/Object;
.source "PriceReportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/PriceReportActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

.field private final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/PriceReportActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$4;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$4;->val$items:[Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$4;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$2(Lcom/jingdong/app/mall/product/PriceReportActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 217
    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$4;->val$items:[Ljava/lang/String;

    aget-object v0, v1, p2

    .line 218
    .local v0, select:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$4;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    const v2, 0x7f070368

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/PriceReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$4;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    #calls: Lcom/jingdong/app/mall/product/PriceReportActivity;->getFromCamera()V
    invoke-static {v1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$3(Lcom/jingdong/app/mall/product/PriceReportActivity;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$4;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    const v2, 0x7f070369

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/PriceReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$4;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    #calls: Lcom/jingdong/app/mall/product/PriceReportActivity;->getFromLocal()V
    invoke-static {v1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$4(Lcom/jingdong/app/mall/product/PriceReportActivity;)V

    goto :goto_0
.end method
