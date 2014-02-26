.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$SendMobilePassword;
.super Lcom/jingdong/app/mall/register/QuickRegisterListener;
.source "FillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMobilePassword"
.end annotation


# instance fields
.field mobilePhone:Ljava/lang/String;

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "listener"
    .parameter "myactivity"
    .parameter "phone"

    .prologue
    .line 6917
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$SendMobilePassword;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 6918
    invoke-direct {p0, p2, p3}, Lcom/jingdong/app/mall/register/QuickRegisterListener;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V

    .line 6919
    iput-object p4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$SendMobilePassword;->mobilePhone:Ljava/lang/String;

    .line 6920
    return-void
.end method


# virtual methods
.method public checkInputs()Z
    .locals 2

    .prologue
    .line 6929
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$SendMobilePassword;->mobilePhone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 6930
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$SendMobilePassword;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    const-string v1, "<font color=\'red\'>\u8bf7\u8f93\u5165\u7535\u8bdd\u53f7\u7801</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 6931
    const/4 v0, 0x0

    .line 6933
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6924
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$SendMobilePassword;->mobilePhone:Ljava/lang/String;

    return-object v0
.end method
