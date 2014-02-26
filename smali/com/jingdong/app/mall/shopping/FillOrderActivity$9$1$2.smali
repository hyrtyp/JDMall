.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$2;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->onFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

.field private final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$2;->val$string:Ljava/lang/String;

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendtips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$2;->val$string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendtips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 871
    return-void
.end method
