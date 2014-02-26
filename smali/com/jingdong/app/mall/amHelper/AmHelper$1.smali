.class Lcom/jingdong/app/mall/amHelper/AmHelper$1;
.super Ljava/lang/Thread;
.source "AmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmHelper;->loadSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelper;->access$0(Lcom/jingdong/app/mall/amHelper/AmHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelper;->access$0(Lcom/jingdong/app/mall/amHelper/AmHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelper;->soundPoolMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelper;->access$1(Lcom/jingdong/app/mall/amHelper/AmHelper;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelper;->sndPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmHelper;->access$2(Lcom/jingdong/app/mall/amHelper/AmHelper;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/jingdong/app/mall/amHelper/AmHelper;->access$0(Lcom/jingdong/app/mall/amHelper/AmHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

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

    .line 70
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelper;->soundPoolMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelper;->access$1(Lcom/jingdong/app/mall/amHelper/AmHelper;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelper;->sndPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmHelper;->access$2(Lcom/jingdong/app/mall/amHelper/AmHelper;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/jingdong/app/mall/amHelper/AmHelper;->access$0(Lcom/jingdong/app/mall/amHelper/AmHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

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

    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelper;->soundPoolMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelper;->access$1(Lcom/jingdong/app/mall/amHelper/AmHelper;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelper;->sndPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmHelper;->access$2(Lcom/jingdong/app/mall/amHelper/AmHelper;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/amHelper/AmHelper$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelper;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/jingdong/app/mall/amHelper/AmHelper;->access$0(Lcom/jingdong/app/mall/amHelper/AmHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

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

    goto/16 :goto_0

    .line 72
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
