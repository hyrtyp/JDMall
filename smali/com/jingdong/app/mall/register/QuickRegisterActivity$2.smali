.class Lcom/jingdong/app/mall/register/QuickRegisterActivity$2;
.super Lcom/jingdong/app/mall/register/QuickRegisterListener;
.source "QuickRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/register/QuickRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity;Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$2;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    .line 241
    invoke-direct {p0, p2, p3}, Lcom/jingdong/app/mall/register/QuickRegisterListener;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V

    return-void
.end method


# virtual methods
.method public checkInputs()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$2;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->quickRegisterInputCheck()Z

    move-result v0

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$2;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity;->phoneNumberEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->access$4(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, phoneNumber1:Ljava/lang/String;
    return-object v0
.end method
