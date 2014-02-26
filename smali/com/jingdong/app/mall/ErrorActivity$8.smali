.class Lcom/jingdong/app/mall/ErrorActivity$8;
.super Ljava/lang/Thread;
.source "ErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/ErrorActivity;->onSubmitError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/ErrorActivity;

.field private final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/ErrorActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/ErrorActivity$8;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/ErrorActivity$8;->val$json:Lorg/json/JSONObject;

    .line 245
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    const-string v0, "ErrorActivity_onSubmitError"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/ErrorActivity$8;->setName(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity$8;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/ErrorActivity;->isKill:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/ErrorActivity;->access$2(Lcom/jingdong/app/mall/ErrorActivity;Z)V

    .line 249
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity$8;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    const-string v1, "crash"

    iget-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity$8;->val$json:Lorg/json/JSONObject;

    #calls: Lcom/jingdong/app/mall/ErrorActivity;->doPost(Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/ErrorActivity;->access$3(Lcom/jingdong/app/mall/ErrorActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 250
    return-void
.end method
