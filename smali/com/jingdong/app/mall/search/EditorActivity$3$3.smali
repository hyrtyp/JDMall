.class Lcom/jingdong/app/mall/search/EditorActivity$3$3;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/EditorActivity$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$3;->this$1:Lcom/jingdong/app/mall/search/EditorActivity$3;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$3$3;->this$1:Lcom/jingdong/app/mall/search/EditorActivity$3;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity$3;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/EditorActivity$3;->access$0(Lcom/jingdong/app/mall/search/EditorActivity$3;)Lcom/jingdong/app/mall/search/EditorActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/search/EditorActivity;->finish()V

    .line 307
    return-void
.end method
