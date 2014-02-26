.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$2;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->createBookAlertDiglog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$2(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    .line 203
    return-void
.end method
