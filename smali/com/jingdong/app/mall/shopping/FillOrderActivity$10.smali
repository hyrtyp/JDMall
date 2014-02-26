.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

.field private final synthetic val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 899
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 904
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 905
    .local v0, im:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 907
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 909
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 910
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    const-string v4, "<font color=\'red\'>\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801</font>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 977
    :goto_0
    return-void

    .line 912
    :cond_0
    new-instance v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity$SendMobilePassword;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    invoke-direct {v4, p0, v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;)V

    .line 970
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 912
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$SendMobilePassword;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V

    .line 972
    .local v2, smp:Lcom/jingdong/app/mall/shopping/FillOrderActivity$SendMobilePassword;
    invoke-virtual {v2, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$SendMobilePassword;->onClick(Landroid/view/View;)V

    .line 973
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendtips:Landroid/widget/TextView;

    const-string v4, "\u6b63\u5728\u53d1\u9001\u5bc6\u7801..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendtips:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
