.class Lcom/jingdong/app/mall/utils/MyActivity$2;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/MyActivity$2;->this$0:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/MyActivity$2;->val$intent:Landroid/content/Intent;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity$2;->this$0:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/MyActivity$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivity(Landroid/content/Intent;)V

    .line 497
    return-void
.end method
