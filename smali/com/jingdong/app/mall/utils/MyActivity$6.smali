.class Lcom/jingdong/app/mall/utils/MyActivity$6;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/MyActivity;->addGuideImage(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/MyActivity$6;->this$0:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 968
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 976
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 970
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity$6;->this$0:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/MyActivity;->removeGuideView()Z

    goto :goto_0

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
