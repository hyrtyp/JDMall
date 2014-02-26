.class public Lcom/jingdong/app/mall/home/PanicBuyingActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "PanicBuyingActivity.java"


# instance fields
.field private intent:Landroid/content/Intent;

.field private listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 125
    new-instance v0, Lcom/jingdong/app/mall/home/PanicBuyingActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/home/PanicBuyingActivity$1;-><init>(Lcom/jingdong/app/mall/home/PanicBuyingActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->listener:Landroid/view/View$OnClickListener;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/PanicBuyingActivity;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method private toast()V
    .locals 7

    .prologue
    .line 72
    const/4 v5, 0x2

    :try_start_0
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 73
    .local v0, alert:Landroid/net/Uri;
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 74
    .local v1, mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-virtual {v1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 75
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 76
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 77
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 78
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    .end local v0           #alert:Landroid/net/Uri;
    .end local v1           #mMediaPlayer:Landroid/media/MediaPlayer;
    :goto_0
    :try_start_1
    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 93
    .local v3, vibrator:Landroid/os/Vibrator;
    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :goto_1
    :try_start_2
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 106
    .local v2, pm:Landroid/os/PowerManager;
    const v5, 0x1000001a

    const-string v6, "PanicBuyingActivity"

    invoke-virtual {v2, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 107
    .local v4, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    .end local v2           #pm:Landroid/os/PowerManager;
    .end local v4           #wl:Landroid/os/PowerManager$WakeLock;
    :goto_2
    return-void

    .line 108
    :catch_0
    move-exception v5

    goto :goto_2

    .line 94
    :catch_1
    move-exception v5

    goto :goto_1

    .line 79
    :catch_2
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super/range {p0 .. p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v12, 0x7f0300c9

    invoke-virtual {p0, v12}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 35
    .local v8, params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v12

    shr-int/lit8 v12, v12, 0x1

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 36
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v12

    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    div-int/lit8 v13, v13, 0x64

    sub-int/2addr v12, v13

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    const v12, 0x7f0c0494

    invoke-virtual {p0, v12}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 38
    .local v4, head:Landroid/widget/TextView;
    const v12, 0x7f0c0495

    invoke-virtual {p0, v12}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, content:Landroid/widget/TextView;
    const v12, 0x7f0c0496

    invoke-virtual {p0, v12}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 40
    .local v3, end:Landroid/widget/TextView;
    const v12, 0x7f0c0497

    invoke-virtual {p0, v12}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 41
    .local v7, ok:Landroid/widget/Button;
    const v12, 0x7f0c0498

    invoke-virtual {p0, v12}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, cancel:Landroid/widget/Button;
    iget-object v12, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v12, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    iput-object v12, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->intent:Landroid/content/Intent;

    .line 45
    iget-object v12, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "msg"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, msg:Ljava/lang/String;
    iget-object v12, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "list"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 47
    .local v11, text:[Ljava/lang/String;
    iget-object v12, p0, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "size"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 48
    .local v9, size:I
    const-string v10, "\u60a8\u9884\u7ea6\u7684\u79d2\u6740"

    .line 49
    .local v10, tag:Ljava/lang/String;
    const-string v12, "\u60a8\u9884\u7ea6\u7684\u79d2\u6740"

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    if-eqz v11, :cond_2

    array-length v12, v11

    const/4 v13, 0x1

    if-le v12, v13, :cond_2

    .line 51
    const-string v2, ""

    .line 52
    .local v2, des:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v12, v11

    if-ge v5, v12, :cond_0

    const/4 v12, 0x1

    if-lt v5, v12, :cond_1

    .line 55
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u7b49"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u6837\u5546\u54c1\u8fd8\u67091\u5206\u949f\u5c31\u8981\u5f00\u59cb\u5566!\n\u8d76\u5feb\u62a2\u8d2d\u5427!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .end local v2           #des:Ljava/lang/String;
    .end local v5           #i:I
    :goto_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/PanicBuyingActivity;->toast()V

    .line 62
    return-void

    .line 53
    .restart local v2       #des:Ljava/lang/String;
    .restart local v5       #i:I
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "\u201c"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v11, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u201d"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 58
    .end local v2           #des:Ljava/lang/String;
    .end local v5           #i:I
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u201c"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u201d"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const-string v12, "\u8fd8\u67091\u5206\u949f\u5c31\u8981\u5f00\u59cb\u5566!\u8d76\u5feb\u62a2\u8d2d\u5427!"

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStop()V

    .line 123
    return-void
.end method
