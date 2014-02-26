.class Lcom/jingdong/app/mall/web/WebJavaScript$2;
.super Ljava/lang/Object;
.source "WebJavaScript.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/web/WebJavaScript;->satisfactionCallBack(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/web/WebJavaScript;

.field private final synthetic val$isSuccess:Z


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/web/WebJavaScript;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/web/WebJavaScript$2;->this$0:Lcom/jingdong/app/mall/web/WebJavaScript;

    iput-boolean p2, p0, Lcom/jingdong/app/mall/web/WebJavaScript$2;->val$isSuccess:Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript$2;->val$isSuccess:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript$2;->this$0:Lcom/jingdong/app/mall/web/WebJavaScript;

    #getter for: Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/web/WebJavaScript;->access$0(Lcom/jingdong/app/mall/web/WebJavaScript;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->setResult(I)V

    .line 101
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript$2;->this$0:Lcom/jingdong/app/mall/web/WebJavaScript;

    #getter for: Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/web/WebJavaScript;->access$0(Lcom/jingdong/app/mall/web/WebJavaScript;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/MyActivity;->finish()V

    .line 105
    :cond_0
    return-void
.end method
