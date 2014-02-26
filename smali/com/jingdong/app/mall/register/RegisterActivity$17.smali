.class Lcom/jingdong/app/mall/register/RegisterActivity$17;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->onResume()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$17;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$17;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->finish()V

    .line 800
    return-void
.end method
