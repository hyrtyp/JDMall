.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$27;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->ShowMsg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$27;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$27;->val$msg:Ljava/lang/String;

    .line 3748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3753
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$27;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$27;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3755
    return-void
.end method
