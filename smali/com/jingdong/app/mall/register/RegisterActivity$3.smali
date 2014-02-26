.class Lcom/jingdong/app/mall/register/RegisterActivity$3;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->initCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$3;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "isChecked"

    .prologue
    const/16 v2, 0x99

    .line 143
    if-eqz p2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$3;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->mConfirmBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$3;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->mConfirmBtn:Landroid/widget/Button;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$3;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->mConfirmBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$3;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->mConfirmBtn:Landroid/widget/Button;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
