.class Lcom/jingdong/common/utils/NextPageLoader$3;
.super Ljava/lang/Object;
.source "NextPageLoader.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/NextPageLoader;->showNextPage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/NextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader$3;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method
