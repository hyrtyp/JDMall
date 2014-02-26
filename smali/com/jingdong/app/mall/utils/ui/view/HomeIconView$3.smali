.class Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$3;
.super Ljava/lang/Object;
.source "HomeIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->resetPopView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->requestLayout()V

    .line 512
    return-void
.end method
