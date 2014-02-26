.class Lcom/jingdong/app/mall/login/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->initEditTxt()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    .line 322
    invoke-static {}, Lcom/jingdong/app/mall/login/LoginActivity;->access$1()Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/jingdong/app/mall/login/LoginActivity;->access$1()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 323
    invoke-static {}, Lcom/jingdong/app/mall/login/LoginActivity;->access$1()Landroid/widget/EditText;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/jingdong/app/mall/login/LoginActivity;->access$6(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/jingdong/app/mall/login/LoginActivity;->access$6(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    if-nez v4, :cond_2

    .line 348
    :cond_1
    :goto_0
    return-void

    .line 329
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->mUserNameTxt:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/jingdong/app/mall/login/LoginActivity;->access$6(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, userName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 335
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getUserBitmapPhotoFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 340
    iget-object v4, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/login/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 341
    .local v2, size:I
    const/high16 v4, 0x4120

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    .line 342
    .local v1, padding:I
    iget-object v4, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->login_user_icon:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/jingdong/app/mall/login/LoginActivity;->access$7(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 343
    iget-object v4, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->login_user_icon:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/jingdong/app/mall/login/LoginActivity;->access$7(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v0, v2, v2}, Lcom/jingdong/common/utils/ImageUtil;->toRoundBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 345
    .end local v1           #padding:I
    .end local v2           #size:I
    :cond_3
    iget-object v4, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->login_user_icon:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/jingdong/app/mall/login/LoginActivity;->access$7(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 346
    iget-object v4, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->login_user_icon:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/jingdong/app/mall/login/LoginActivity;->access$7(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0201d6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 317
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->historyUserNameLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->access$5(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$4;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$3(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->showOrhidHistoryUserName(Landroid/view/animation/Animation;Z)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/login/LoginActivity;->access$4(Lcom/jingdong/app/mall/login/LoginActivity;Landroid/view/animation/Animation;Z)V

    .line 312
    :cond_0
    return-void
.end method
