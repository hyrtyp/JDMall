.class Lcom/jingdong/app/mall/login/LoginActivity$13;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->showAllSavedUserName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$13;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 849
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$13;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->names:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$15(Lcom/jingdong/app/mall/login/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 854
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$13;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->setUserName(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->access$18(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V

    .line 855
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$13;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity$13;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/jingdong/app/mall/login/LoginActivity;->access$3(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040016

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->showOrhidHistoryUserName(Landroid/view/animation/Animation;Z)V
    invoke-static {v1, v2, v3}, Lcom/jingdong/app/mall/login/LoginActivity;->access$4(Lcom/jingdong/app/mall/login/LoginActivity;Landroid/view/animation/Animation;Z)V

    .line 856
    return-void
.end method
