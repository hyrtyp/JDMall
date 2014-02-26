.class Lcom/jingdong/app/mall/login/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$1;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 1294
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1295
    .local v0, isSelect:Z
    if-nez v0, :cond_1

    .line 1296
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1297
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$1;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->mInputMethod:Lcom/jingdong/app/mall/ime/JDInputMethod;
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$0(Lcom/jingdong/app/mall/login/LoginActivity;)Lcom/jingdong/app/mall/ime/JDInputMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissPopupwindow()V

    .line 1298
    invoke-static {}, Lcom/jingdong/app/mall/login/LoginActivity;->access$1()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1299
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$1;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->showAllSavedUserName()V
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$2(Lcom/jingdong/app/mall/login/LoginActivity;)V

    .line 1304
    :goto_1
    return-void

    .line 1296
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1301
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$1;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/login/LoginActivity$1;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/jingdong/app/mall/login/LoginActivity;->access$3(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040016

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->showOrhidHistoryUserName(Landroid/view/animation/Animation;Z)V
    invoke-static {v1, v3, v2}, Lcom/jingdong/app/mall/login/LoginActivity;->access$4(Lcom/jingdong/app/mall/login/LoginActivity;Landroid/view/animation/Animation;Z)V

    goto :goto_1
.end method
