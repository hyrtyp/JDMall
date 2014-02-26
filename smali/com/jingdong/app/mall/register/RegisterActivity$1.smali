.class Lcom/jingdong/app/mall/register/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->initBtn()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    #calls: Lcom/jingdong/app/mall/register/RegisterActivity;->onRegister()V
    invoke-static {v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->access$0(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    .line 107
    return-void
.end method
