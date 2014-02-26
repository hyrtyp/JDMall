.class Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$1$1;
.super Ljava/lang/Object;
.source "ShakeDialogNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$1$1;->this$2:Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$1;

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$1$1;->this$2:Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$1;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$1;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->showProductDetailActivity()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$5(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)V

    .line 673
    return-void
.end method
