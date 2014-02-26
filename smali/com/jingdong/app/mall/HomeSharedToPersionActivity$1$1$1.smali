.class Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1$1;
.super Ljava/lang/Object;
.source "HomeSharedToPersionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;ILcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1$1;->this$2:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;

    iput p2, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1$1;->val$position:I

    iput-object p3, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 113
    :try_start_0
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "++++"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v3, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1$1;->this$2:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;

    #getter for: Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->this$1:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;
    invoke-static {v3}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;->access$0(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1;)Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->this$0:Lcom/jingdong/app/mall/HomeSharedToPersionActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->access$0(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;)Lcom/jingdong/app/mall/HomeSharedToPersionActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->reportJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v3}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity;->access$1(Lcom/jingdong/app/mall/HomeSharedToPersionActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    iget v4, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1$1;->val$position:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 116
    .local v2, jsonObject:Lorg/json/JSONObject;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-class v4, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "jdNewsId"

    const-string v4, "jdNewsId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v3, "title"

    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    iget-object v3, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v3

    goto :goto_0
.end method
