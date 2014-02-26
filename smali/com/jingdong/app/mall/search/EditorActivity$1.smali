.class Lcom/jingdong/app/mall/search/EditorActivity$1;
.super Ljava/lang/Thread;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/EditorActivity;->removeCameraFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/search/EditorActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/EditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/EditorActivity$1;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "EditorActivity"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/search/EditorActivity$1;->setName(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$1;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity;->cameraFile:Ljava/io/File;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/EditorActivity;->access$0(Lcom/jingdong/app/mall/search/EditorActivity;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$1;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity;->cameraFile:Ljava/io/File;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/EditorActivity;->access$0(Lcom/jingdong/app/mall/search/EditorActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/search/EditorActivity$1;->this$0:Lcom/jingdong/app/mall/search/EditorActivity;

    #getter for: Lcom/jingdong/app/mall/search/EditorActivity;->cameraFile:Ljava/io/File;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/EditorActivity;->access$0(Lcom/jingdong/app/mall/search/EditorActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 79
    :cond_0
    return-void
.end method
