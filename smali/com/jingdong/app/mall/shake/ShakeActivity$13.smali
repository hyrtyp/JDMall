.class Lcom/jingdong/app/mall/shake/ShakeActivity$13;
.super Ljava/lang/Thread;
.source "ShakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;->loadSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    .line 724
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->soundPoolMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$56(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->sndPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$57(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "sound/shakeing.mp3"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->soundPoolMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$56(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->sndPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$57(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "sound/shake_something.mp3"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->soundPoolMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$56(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->sndPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$57(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "sound/shake_again.mp3"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->soundPoolMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$56(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->sndPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$57(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "sound/shake_nothing.mp3"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v0

    goto :goto_0
.end method
