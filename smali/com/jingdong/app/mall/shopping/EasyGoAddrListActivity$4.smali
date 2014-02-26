.class Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$4;
.super Ljava/lang/Object;
.source "EasyGoAddrListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->showMsg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$4;->val$msg:Ljava/lang/String;

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$4;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 696
    return-void
.end method
