.class Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;
.super Ljava/lang/Object;
.source "MyCommentDiscussActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;Landroid/content/Intent;Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;->val$product:Lcom/jingdong/common/entity/Product;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;->val$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-class v2, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 467
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;->val$intent:Landroid/content/Intent;

    const-string v1, "product"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 469
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$2;->val$intent:Landroid/content/Intent;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 471
    return-void
.end method
