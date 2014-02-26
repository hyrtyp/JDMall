.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$2;
.super Ljava/lang/Object;
.source "ReceiptInfoEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    const-string v1, "\u56fe\u4e66\u7c7b\u578b"

    #calls: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->createBookAlertDiglog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->access$0(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;Ljava/lang/String;)V

    .line 204
    return-void
.end method
