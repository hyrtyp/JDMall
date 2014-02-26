.class Lcom/jingdong/app/mall/register/RegisterActivity$7$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity$7;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/register/RegisterActivity$7;

.field private final synthetic val$sNameBack:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/RegisterActivity$7;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7$1;->this$1:Lcom/jingdong/app/mall/register/RegisterActivity$7;

    iput-object p2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7$1;->val$sNameBack:Ljava/lang/String;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7$1;->this$1:Lcom/jingdong/app/mall/register/RegisterActivity$7;

    #getter for: Lcom/jingdong/app/mall/register/RegisterActivity$7;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/RegisterActivity$7;->access$0(Lcom/jingdong/app/mall/register/RegisterActivity$7;)Lcom/jingdong/app/mall/register/RegisterActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7$1;->val$sNameBack:Ljava/lang/String;

    invoke-static {v1}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 373
    return-void
.end method
