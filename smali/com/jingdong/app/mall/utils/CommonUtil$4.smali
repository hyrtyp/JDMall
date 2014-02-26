.class Lcom/jingdong/app/mall/utils/CommonUtil$4;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CommonUtil;->doPay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$4;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$4;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/CommonUtil$4;->val$intent:Landroid/content/Intent;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$4;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    return-void
.end method
