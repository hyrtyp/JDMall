.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17$1;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;

    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;

    #calls: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->gotoEdidtCurrentAndNewAddress()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;)V

    .line 1517
    return-void
.end method
