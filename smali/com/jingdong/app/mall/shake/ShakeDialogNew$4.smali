.class Lcom/jingdong/app/mall/shake/ShakeDialogNew$4;
.super Ljava/lang/Object;
.source "ShakeDialogNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setCustomButtonClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

.field private final synthetic val$press:Z


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$4;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    iput-boolean p2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$4;->val$press:Z

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$4;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->receiveCoupon:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$3(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$4;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->receiveCoupon:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$3(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$4;->val$press:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 943
    :cond_0
    return-void
.end method
