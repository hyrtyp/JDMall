.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeOnClickListener;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShakeOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeOnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 771
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeOnClickListener;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 774
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 783
    :goto_0
    return-void

    .line 776
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isBackUpKeyDown:Z

    .line 777
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->finish()V

    goto :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c063a
        :pswitch_0
    .end packed-switch
.end method
