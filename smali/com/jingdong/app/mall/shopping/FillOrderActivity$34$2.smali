.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$2;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;

.field private final synthetic val$isOpen:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$2;->val$isOpen:Ljava/lang/Boolean;

    .line 5630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 5634
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$2;->val$isOpen:Ljava/lang/Boolean;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->showExplainPayPasswordDialog(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$61(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/Boolean;)V

    .line 5635
    return-void
.end method
