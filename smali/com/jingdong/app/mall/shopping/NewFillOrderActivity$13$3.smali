.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13$3;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;

.field private final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13$3;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13$3;->val$et:Landroid/widget/EditText;

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13$3;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1199
    return-void
.end method
