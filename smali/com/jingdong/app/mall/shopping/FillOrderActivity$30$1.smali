.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$30$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;

    .line 3996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3999
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->gotoEdidtCurrentAndNewAddress()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$42(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 4000
    return-void
.end method
