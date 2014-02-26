.class Lcom/jingdong/app/mall/register/RegisterActivity$2;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$2;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v2, 0x90

    const/16 v1, 0x81

    .line 124
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 126
    :pswitch_0
    if-eqz p2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$2;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterFirstPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 128
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$2;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterSecondPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$2;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterFirstPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$2;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterSecondPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x7f0c039e
        :pswitch_0
    .end packed-switch
.end method
