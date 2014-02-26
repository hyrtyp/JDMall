.class Lcom/jingdong/app/mall/signin/SignActivity$2$1;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/signin/SignActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$2$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$2;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$2$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$2;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$2;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity$2;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$2;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->vf1:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$2(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 793
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$2$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$2;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$2;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity$2;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$2;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->vf2:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$3(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 794
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$2$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$2;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$2;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity$2;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$2;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->vf3:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$4(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 795
    return-void
.end method
