.class Lcom/jingdong/app/mall/home/NewHomeActivity$8;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

.field private final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$8;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$8;->val$items:[Ljava/lang/String;

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 755
    const-string v3, "voice"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$8;->val$items:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$8;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    const-class v4, Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 759
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$8;->val$items:[Ljava/lang/String;

    aget-object v2, v3, p2

    .line 760
    .local v2, keyWord:Ljava/lang/String;
    const-string v3, "keyWord"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v3, "searchway"

    const-string v4, "voice"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v3, "sortKey"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 763
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 764
    const-string v3, "source"

    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    const-string v5, "hotKeyword"

    invoke-direct {v4, v5, v2}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 765
    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$8;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-static {v3, v1}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductListActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 767
    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$8;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->listDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$12(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 768
    return-void
.end method
