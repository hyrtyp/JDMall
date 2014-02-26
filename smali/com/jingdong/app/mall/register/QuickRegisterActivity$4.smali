.class Lcom/jingdong/app/mall/register/QuickRegisterActivity$4;
.super Ljava/lang/Object;
.source "QuickRegisterActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterActivity;->initQuickRegisterElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v2, 0x99

    .line 109
    if-eqz p2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity;->sendRegisterInfoButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->access$5(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity;->sendRegisterInfoButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->access$5(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity;->sendRegisterInfoButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->access$5(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity;->sendRegisterInfoButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->access$5(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
