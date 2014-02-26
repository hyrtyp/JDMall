.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$3;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$3;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$3;->val$et:Landroid/widget/EditText;

    .line 5650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5654
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$3;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 5655
    return-void
.end method
