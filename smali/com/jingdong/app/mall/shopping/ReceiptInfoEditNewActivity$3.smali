.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$3;
.super Ljava/lang/Object;
.source "ReceiptInfoEditNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mGeneral2:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$3(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 211
    return-void
.end method
