.class Lcom/jingdong/app/mall/search/EditorActivity$3$2;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/EditorActivity$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/search/EditorActivity$3;

.field private final synthetic val$imageUrl:Ljava/lang/String;

.field private final synthetic val$productArrayList:Ljava/util/ArrayList;

.field private final synthetic val$resultList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/EditorActivity$3;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$2;->this$1:Lcom/jingdong/app/mall/search/EditorActivity$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$2;->val$productArrayList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$2;->val$imageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$2;->val$resultList:Ljava/lang/String;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 294
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$2;->this$1:Lcom/jingdong/app/mall/search/EditorActivity$3;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/search/EditorActivity$3;->access$0(Lcom/jingdong/app/mall/search/EditorActivity$3;)Lcom/jingdong/app/mall/search/EditorActivity;

    move-result-object v2

    const-class v3, Lcom/jingdong/app/mall/search/CPProductListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 296
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "picSearch"

    iget-object v3, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$2;->val$productArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 297
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 298
    const-string v2, "imgPath"

    iget-object v3, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$2;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v2, "resultList"

    iget-object v3, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$2;->val$resultList:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v2, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$2;->this$1:Lcom/jingdong/app/mall/search/EditorActivity$3;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/search/EditorActivity$3;->access$0(Lcom/jingdong/app/mall/search/EditorActivity$3;)Lcom/jingdong/app/mall/search/EditorActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/search/EditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 301
    return-void
.end method
