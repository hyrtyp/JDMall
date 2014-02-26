.class Lcom/jingdong/app/mall/shopping/CameraView$1$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CameraView$1;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

.field private final synthetic val$imageHeight:I

.field private final synthetic val$imageWidth:I

.field private final synthetic val$yuv:[B


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraView$1;I[BI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->val$imageWidth:I

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->val$yuv:[B

    iput p4, p0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->val$imageHeight:I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mFocusHeight:I
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->access$3(Lcom/jingdong/app/mall/shopping/CameraView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mFocusWidth:I
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraView;->access$4(Lcom/jingdong/app/mall/shopping/CameraView;)I

    move-result v4

    mul-int/2addr v3, v4

    new-array v2, v3, [I

    .line 78
    .local v2, rgb:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->getHeight()I

    move-result v3

    int-to-double v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->val$imageWidth:I

    int-to-double v5, v5

    div-double v20, v3, v5

    .line 79
    .local v20, t:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mFocusYoffset:I
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->access$5(Lcom/jingdong/app/mall/shopping/CameraView;)I

    move-result v3

    int-to-double v3, v3

    div-double v3, v3, v20

    double-to-int v8, v3

    .line 80
    .local v8, y:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->val$yuv:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->val$imageWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->val$imageHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v6

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mFocusWidth:I
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraView;->access$4(Lcom/jingdong/app/mall/shopping/CameraView;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v7

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mFocusHeight:I
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/CameraView;->access$3(Lcom/jingdong/app/mall/shopping/CameraView;)I

    move-result v7

    invoke-static/range {v2 .. v8}, Lcom/jingdong/app/mall/shopping/CameraView;->decodeYUV420SPInCenterRect([I[BIIIII)V

    .line 82
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 83
    .local v12, vf:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Float;>;"
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 84
    .local v13, vi:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v14, 0x4

    .line 85
    .local v14, num:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mFocusHeight:I
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->access$3(Lcom/jingdong/app/mall/shopping/CameraView;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mFocusWidth:I
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->access$4(Lcom/jingdong/app/mall/shopping/CameraView;)I

    move-result v10

    move-object v11, v2

    invoke-static/range {v9 .. v14}, Lcom/jingdong/app/mall/shopping/Algorithm;->ComputerSrcColorIndexF(II[ILjava/util/Vector;Ljava/util/Vector;I)I

    move-result v15

    .line 87
    .local v15, centerColor:I
    const/4 v2, 0x0

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->access$6(Lcom/jingdong/app/mall/shopping/CameraView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    .line 91
    .local v17, message:Landroid/os/Message;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Landroid/os/Message;->what:I

    .line 92
    move-object/from16 v0, v17

    iput v15, v0, Landroid/os/Message;->arg1:I

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->access$6(Lcom/jingdong/app/mall/shopping/CameraView;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    const-string v18, ""

    .local v18, ret:Ljava/lang/String;
    const-string v19, ""

    .line 96
    .local v19, space:Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-lt v0, v14, :cond_0

    .line 100
    invoke-static/range {v18 .. v18}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v3

    const/4 v4, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/CameraView;->mThreadLock:Z
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shopping/CameraView;->access$2(Lcom/jingdong/app/mall/shopping/CameraView;Z)V

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->access$6(Lcom/jingdong/app/mall/shopping/CameraView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    .line 105
    const/4 v3, 0x2

    move-object/from16 v0, v17

    iput v3, v0, Landroid/os/Message;->what:I

    .line 106
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/CameraView$1$1;->this$1:Lcom/jingdong/app/mall/shopping/CameraView$1;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView$1;->access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->access$6(Lcom/jingdong/app/mall/shopping/CameraView;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    return-void

    .line 97
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 98
    const-string v19, " "

    .line 96
    add-int/lit8 v16, v16, 0x1

    goto :goto_0
.end method
