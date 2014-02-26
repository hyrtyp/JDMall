.class Lcom/jingdong/app/mall/login/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->finishWithDelay(Lcom/jingdong/app/mall/utils/MyActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$3;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$3;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/MyActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    goto :goto_0
.end method
