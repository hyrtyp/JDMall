.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$25;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPayOnlineTips(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$25;->val$message:Ljava/lang/String;

    .line 3694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3698
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$25;->val$message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3699
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->selectPayOnline:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$31(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$25;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3700
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->selectPayOnline:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$31(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3707
    :goto_0
    return-void

    .line 3703
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->selectPayOnline:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$31(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
