.class Lcom/jingdong/app/mall/login/LoginActivity$15;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->hideOrShowText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;

.field private final synthetic val$slipButton:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$15;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/login/LoginActivity$15;->val$slipButton:Landroid/widget/CheckBox;

    .line 1179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1183
    invoke-static {}, Lcom/jingdong/app/mall/login/LoginActivity;->access$1()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1185
    .local v0, pwText:Landroid/text/Editable;
    if-nez v0, :cond_1

    .line 1186
    const-string v1, ""

    .line 1190
    .local v1, pwTextString:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity$15;->val$slipButton:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1192
    invoke-static {}, Lcom/jingdong/app/mall/login/LoginActivity;->access$1()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1197
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1198
    invoke-static {}, Lcom/jingdong/app/mall/login/LoginActivity;->access$1()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1200
    :cond_0
    return-void

    .line 1188
    .end local v1           #pwTextString:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #pwTextString:Ljava/lang/String;
    goto :goto_0

    .line 1195
    :cond_2
    invoke-static {}, Lcom/jingdong/app/mall/login/LoginActivity;->access$1()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_1
.end method
