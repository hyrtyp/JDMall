.class Lcom/jingdong/common/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/BaseActivity;->startActivityInFrame(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/BaseActivity;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/jingdong/common/BaseActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/BaseActivity$2;->this$0:Lcom/jingdong/common/BaseActivity;

    iput-object p2, p0, Lcom/jingdong/common/BaseActivity$2;->val$intent:Landroid/content/Intent;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity$2;->this$0:Lcom/jingdong/common/BaseActivity;

    iget-object v1, p0, Lcom/jingdong/common/BaseActivity$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/BaseActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/common/frame/Record;

    .line 138
    return-void
.end method
