.class Lcom/jingdong/app/mall/search/CameraPurchaseActivity$2;
.super Ljava/lang/Object;
.source "CameraPurchaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

.field private final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$2;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$2;->val$items:[Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$2;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$6(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 256
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$2;->val$items:[Ljava/lang/String;

    aget-object v0, v1, p2

    .line 257
    .local v0, select:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$2;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    const v2, 0x7f070368

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$2;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    #calls: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->takePhoto()V
    invoke-static {v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$7(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$2;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    const v2, 0x7f070369

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$2;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    #calls: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->openGallery()V
    invoke-static {v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$8(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)V

    goto :goto_0
.end method
