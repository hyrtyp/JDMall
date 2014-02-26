.class Lcom/jingdong/app/mall/web/WebJavaScript$1;
.super Ljava/lang/Object;
.source "WebJavaScript.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/web/WebJavaScript;->takeCouponCallBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/web/WebJavaScript;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/web/WebJavaScript;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/web/WebJavaScript$1;->this$0:Lcom/jingdong/app/mall/web/WebJavaScript;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/web/WebJavaScript$1;->this$0:Lcom/jingdong/app/mall/web/WebJavaScript;

    #getter for: Lcom/jingdong/app/mall/web/WebJavaScript;->webActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/web/WebJavaScript;->access$0(Lcom/jingdong/app/mall/web/WebJavaScript;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/MyActivity;->finish()V

    .line 80
    return-void
.end method
