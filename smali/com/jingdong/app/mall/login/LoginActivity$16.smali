.class Lcom/jingdong/app/mall/login/LoginActivity$16;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$16;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$16;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->afterSuccess(Lcom/jingdong/app/mall/utils/MyActivity;)V

    .line 1247
    return-void
.end method
