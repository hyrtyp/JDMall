.class Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2$1;
.super Ljava/lang/Object;
.source "HomeSharedToPersionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2$1;->this$2:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-class v2, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 153
    return-void
.end method
