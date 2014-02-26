.class Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction$3;
.super Ljava/lang/Object;
.source "ScrollableTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction$3;->this$1:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction$3;->val$intent:Landroid/content/Intent;

    .line 1212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction$3;->this$1:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;

    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->access$0(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 1215
    return-void
.end method
