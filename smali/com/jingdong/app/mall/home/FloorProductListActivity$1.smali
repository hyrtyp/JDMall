.class Lcom/jingdong/app/mall/home/FloorProductListActivity$1;
.super Ljava/lang/Object;
.source "FloorProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/FloorProductListActivity;->handleShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/FloorProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$1;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$1;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mShare:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$1;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mShareTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$1(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$1;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mShare:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$1;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$1;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    const v3, 0x7f07027c

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->startActivityNoException(Landroid/content/Intent;)V

    .line 183
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
