.class Lcom/jingdong/app/mall/utils/JDEbookUtil$1;
.super Ljava/lang/Object;
.source "JDEbookUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/JDEbookUtil;->gotoEbookM(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/JDEbookUtil$1;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDEbookUtil$1;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDEbookUtil$1;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/utils/JDEbookUtil$1$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/JDEbookUtil$1;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v1, p0, v2, p1}, Lcom/jingdong/app/mall/utils/JDEbookUtil$1$1;-><init>(Lcom/jingdong/app/mall/utils/JDEbookUtil$1;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
