.class Lcom/jingdong/app/mall/register/RegisterActivity$8$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity$8;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/register/RegisterActivity$8;

.field private final synthetic val$sMailBack:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/RegisterActivity$8;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8$1;->this$1:Lcom/jingdong/app/mall/register/RegisterActivity$8;

    iput-object p2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8$1;->val$sMailBack:Ljava/lang/String;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8$1;->this$1:Lcom/jingdong/app/mall/register/RegisterActivity$8;

    #getter for: Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/RegisterActivity$8;->access$0(Lcom/jingdong/app/mall/register/RegisterActivity$8;)Lcom/jingdong/app/mall/register/RegisterActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterMail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8$1;->val$sMailBack:Ljava/lang/String;

    invoke-static {v1}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 459
    return-void
.end method
