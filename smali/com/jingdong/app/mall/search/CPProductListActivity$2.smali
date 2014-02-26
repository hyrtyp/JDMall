.class Lcom/jingdong/app/mall/search/CPProductListActivity$2;
.super Ljava/lang/Object;
.source "CPProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CPProductListActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CPProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity$2;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity$2;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    const-class v2, Lcom/jingdong/app/mall/search/CorrectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "imgPath"

    iget-object v2, p0, Lcom/jingdong/app/mall/search/CPProductListActivity$2;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/search/CPProductListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "imgPath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "resultList"

    iget-object v2, p0, Lcom/jingdong/app/mall/search/CPProductListActivity$2;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/search/CPProductListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "resultList"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity$2;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method
