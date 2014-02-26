.class Lcom/jingdong/app/mall/utils/MyActivity$5;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/MyActivity;->resendActivityInFrame(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$parent:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/MyActivity$5;->this$0:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/MyActivity$5;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/MyActivity$5;->val$parent:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity$5;->val$intent:Landroid/content/Intent;

    const-string v1, "com.360buy:resendFlag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity$5;->val$parent:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/MyActivity$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 676
    return-void
.end method
