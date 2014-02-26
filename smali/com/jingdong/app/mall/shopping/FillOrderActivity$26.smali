.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$26;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->fininshAddEasyTemp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$26;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 3728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3733
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->addNewTemplate:Z

    .line 3736
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$26;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3742
    :goto_0
    return-void

    .line 3737
    :catch_0
    move-exception v0

    .line 3739
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
