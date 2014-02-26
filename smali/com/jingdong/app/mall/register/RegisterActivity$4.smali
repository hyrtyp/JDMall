.class Lcom/jingdong/app/mall/register/RegisterActivity$4;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->initTextView()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$4;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 171
    if-nez p2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$4;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    #calls: Lcom/jingdong/app/mall/register/RegisterActivity;->nameCheck()Z
    invoke-static {v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->access$1(Lcom/jingdong/app/mall/register/RegisterActivity;)Z

    .line 178
    :cond_0
    return-void
.end method
