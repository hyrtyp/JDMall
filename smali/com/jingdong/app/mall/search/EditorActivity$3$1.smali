.class Lcom/jingdong/app/mall/search/EditorActivity$3$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/EditorActivity$3;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/search/EditorActivity$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/EditorActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$1;->this$1:Lcom/jingdong/app/mall/search/EditorActivity$3;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$1;->this$1:Lcom/jingdong/app/mall/search/EditorActivity$3;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/EditorActivity$3;->access$0(Lcom/jingdong/app/mall/search/EditorActivity$3;)Lcom/jingdong/app/mall/search/EditorActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity;->submit:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/EditorActivity;->access$3(Lcom/jingdong/app/mall/search/EditorActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$1;->this$1:Lcom/jingdong/app/mall/search/EditorActivity$3;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/EditorActivity$3;->access$0(Lcom/jingdong/app/mall/search/EditorActivity$3;)Lcom/jingdong/app/mall/search/EditorActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity;->submit:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/EditorActivity;->access$3(Lcom/jingdong/app/mall/search/EditorActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 274
    :cond_0
    return-void
.end method
