.class Lcom/jingdong/app/mall/utils/LoginUser$1;
.super Ljava/lang/Object;
.source "LoginUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/LoginUser;->startLoginActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/LoginUser;

.field private final synthetic val$context:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$toastMsgForLogin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/LoginUser;Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/LoginUser$1;->this$0:Lcom/jingdong/app/mall/utils/LoginUser;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/LoginUser$1;->val$context:Lcom/jingdong/common/frame/IMyActivity;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/LoginUser$1;->val$toastMsgForLogin:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$1;->val$context:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/LoginUser$1;->val$toastMsgForLogin:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    return-void
.end method
