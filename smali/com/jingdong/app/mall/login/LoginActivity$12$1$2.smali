.class Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity$12$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/login/LoginActivity$12$1;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity$12$1;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->this$2:Lcom/jingdong/app/mall/login/LoginActivity$12$1;

    iput p2, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->val$position:I

    iput-object p3, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->val$name:Ljava/lang/String;

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->this$2:Lcom/jingdong/app/mall/login/LoginActivity$12$1;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12$1;)Lcom/jingdong/app/mall/login/LoginActivity$12;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->names:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->access$15(Lcom/jingdong/app/mall/login/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->this$2:Lcom/jingdong/app/mall/login/LoginActivity$12$1;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12$1;)Lcom/jingdong/app/mall/login/LoginActivity$12;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->val$name:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->delUserNameFromCache(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$16(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->this$2:Lcom/jingdong/app/mall/login/LoginActivity$12$1;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12$1;)Lcom/jingdong/app/mall/login/LoginActivity$12;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12;->notifyDataSetChanged()V

    .line 827
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->this$2:Lcom/jingdong/app/mall/login/LoginActivity$12$1;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12$1;)Lcom/jingdong/app/mall/login/LoginActivity$12;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->names:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->access$15(Lcom/jingdong/app/mall/login/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->this$2:Lcom/jingdong/app/mall/login/LoginActivity$12$1;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12$1;)Lcom/jingdong/app/mall/login/LoginActivity$12;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->this$2:Lcom/jingdong/app/mall/login/LoginActivity$12$1;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12$1;)Lcom/jingdong/app/mall/login/LoginActivity$12;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity$12;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$3(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->showOrhidHistoryUserName(Landroid/view/animation/Animation;Z)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/login/LoginActivity;->access$4(Lcom/jingdong/app/mall/login/LoginActivity;Landroid/view/animation/Animation;Z)V

    .line 830
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->this$2:Lcom/jingdong/app/mall/login/LoginActivity$12$1;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12$1;)Lcom/jingdong/app/mall/login/LoginActivity$12;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->access$17(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;->this$2:Lcom/jingdong/app/mall/login/LoginActivity$12$1;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12$1;)Lcom/jingdong/app/mall/login/LoginActivity$12;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$12;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->login_name_selector:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->access$17(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 834
    :cond_0
    return-void
.end method
