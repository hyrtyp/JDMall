.class Lcom/jingdong/app/mall/search/CameraPurchaseActivity$3;
.super Ljava/lang/Object;
.source "CameraPurchaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->goEditor(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

.field private final synthetic val$effectHandle:Lcom/jingdong/common/utils/DefaultEffectHandle;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Landroid/content/Intent;Lcom/jingdong/common/utils/DefaultEffectHandle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$3;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$3;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$3;->val$effectHandle:Lcom/jingdong/common/utils/DefaultEffectHandle;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$3;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 379
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$3;->val$effectHandle:Lcom/jingdong/common/utils/DefaultEffectHandle;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DefaultEffectHandle;->removeModal()V

    .line 380
    return-void
.end method
